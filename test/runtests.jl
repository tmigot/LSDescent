using LSDescent

using Test
using NLPModels, JuMP,  NLPModelsJuMP

using SolverCore, Logging

using LinearAlgebra

# test all solvers with the well known Woods test function
include("woods.jl")
nlp = MathOptNLPModel(woods(40), name="woods")
n = nlp.meta.nvar

include("tests.jl")

#println("Testing bfgs solvers\n\n")
#include("Debugbfgs.jl")


#println("Testing Newton solvers\n\n")
#include("DebugNewton.jl")
