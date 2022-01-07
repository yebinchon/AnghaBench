; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppevvmath.h_fExponential.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppevvmath.h_fExponential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fExponential.k_array = internal constant [11 x i32] [i32 55452, i32 27726, i32 13863, i32 6931, i32 4055, i32 2231, i32 1178, i32 606, i32 308, i32 155, i32 78], align 16
@fExponential.expk_array = internal constant [11 x i32] [i32 2560000, i32 160000, i32 40000, i32 20000, i32 15000, i32 12500, i32 11250, i32 10625, i32 10313, i32 10156, i32 10078], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fExponential to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fExponential(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %10 = call i32 @ConvertToFraction(i32 1)
  store i32 %10, i32* %5, align 4
  %11 = call i32 @ConvertToFraction(i32 0)
  store i32 %11, i32* %6, align 4
  %12 = call i32 @Divide(i32 78, i32 10000)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @GreaterThan(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @fNegate(i32 %19)
  store i32 %20, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %1
  br label %22

22:                                               ; preds = %59, %21
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @GreaterThan(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %56, %27
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 11
  br i1 %30, label %31, label %59

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [11 x i32], [11 x i32]* @fExponential.k_array, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @GetScaledFraction(i32 %36, i32 10000)
  %38 = call i64 @GreaterThan(i32 %32, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %31
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [11 x i32], [11 x i32]* @fExponential.k_array, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @GetScaledFraction(i32 %45, i32 10000)
  %47 = call i32 @fSubtract(i32 %41, i32 %46)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [11 x i32], [11 x i32]* @fExponential.expk_array, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @GetScaledFraction(i32 %52, i32 10000)
  %54 = call i32 @fMultiply(i32 %48, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %40, %31
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %28

59:                                               ; preds = %28
  br label %22

60:                                               ; preds = %22
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @fAdd(i32 %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @fMultiply(i32 %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @fDivide(i32 %70, i32 %71)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %69, %60
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @ConvertToFraction(i32) #1

declare dso_local i32 @Divide(i32, i32) #1

declare dso_local i64 @GreaterThan(i32, i32) #1

declare dso_local i32 @fNegate(i32) #1

declare dso_local i32 @GetScaledFraction(i32, i32) #1

declare dso_local i32 @fSubtract(i32, i32) #1

declare dso_local i32 @fMultiply(i32, i32) #1

declare dso_local i32 @fAdd(i32, i32) #1

declare dso_local i32 @fDivide(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
