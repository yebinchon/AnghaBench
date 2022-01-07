; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppevvmath.h_SolveQuadracticEqn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppevvmath.h_SolveQuadracticEqn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*)* @SolveQuadracticEqn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SolveQuadracticEqn(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32* %16, i32** %9, align 8
  %17 = call i32 @ConvertToFraction(i32 100)
  store i32 %17, i32* %14, align 4
  %18 = call i32 @ConvertToFraction(i32 10)
  store i32 %18, i32* %13, align 4
  br label %19

19:                                               ; preds = %36, %4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i64 @GreaterThan(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i64 @GreaterThan(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i64 @GreaterThan(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %24, %19
  %35 = phi i1 [ true, %24 ], [ true, %19 ], [ %33, %29 ]
  br i1 %35, label %36, label %46

36:                                               ; preds = %34
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @fDivide(i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @fDivide(i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @fDivide(i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %19

46:                                               ; preds = %34
  %47 = call i32 @ConvertToFraction(i32 4)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @fMultiply(i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @fMultiply(i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @fGetSquare(i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @fSubtract(i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @fSqrt(i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @fNegate(i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @fSubtract(i32 %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @fNegate(i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @fAdd(i32 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @ConvertToFraction(i32 2)
  %69 = call i32 @fDivide(i32 %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @fDivide(i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @ConvertToFraction(i32 2)
  %75 = call i32 @fDivide(i32 %73, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @fDivide(i32 %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 %82, i32* %84, align 4
  ret void
}

declare dso_local i32 @ConvertToFraction(i32) #1

declare dso_local i64 @GreaterThan(i32, i32) #1

declare dso_local i32 @fDivide(i32, i32) #1

declare dso_local i32 @fMultiply(i32, i32) #1

declare dso_local i32 @fSubtract(i32, i32) #1

declare dso_local i32 @fGetSquare(i32) #1

declare dso_local i32 @fSqrt(i32) #1

declare dso_local i32 @fNegate(i32) #1

declare dso_local i32 @fAdd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
