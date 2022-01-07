; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppevvmath.h_fNaturalLog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppevvmath.h_fNaturalLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fNaturalLog.k_array = internal constant [10 x i32] [i32 160000, i32 40000, i32 20000, i32 15000, i32 12500, i32 11250, i32 10625, i32 10313, i32 10156, i32 10078], align 16
@fNaturalLog.logk_array = internal constant [10 x i32] [i32 27726, i32 13863, i32 6931, i32 4055, i32 2231, i32 1178, i32 606, i32 308, i32 155, i32 78], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fNaturalLog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fNaturalLog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call i32 @Divide(i32 8, i32 1000)
  store i32 %8, i32* %4, align 4
  %9 = call i32 @ConvertToFraction(i32 -1)
  store i32 %9, i32* %5, align 4
  %10 = call i32 @ConvertToFraction(i32 0)
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %50, %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @fAdd(i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @GreaterThan(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %47, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 10
  br i1 %21, label %22, label %50

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [10 x i32], [10 x i32]* @fNaturalLog.k_array, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GetScaledFraction(i32 %27, i32 10000)
  %29 = call i64 @GreaterThan(i32 %23, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* @fNaturalLog.k_array, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @GetScaledFraction(i32 %36, i32 10000)
  %38 = call i32 @fDivide(i32 %32, i32 %37)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* @fNaturalLog.logk_array, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @GetScaledFraction(i32 %43, i32 10000)
  %45 = call i32 @fAdd(i32 %39, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %31, %22
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %19

50:                                               ; preds = %19
  br label %11

51:                                               ; preds = %11
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @fAdd(i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @fAdd(i32 %55, i32 %56)
  ret i32 %57
}

declare dso_local i32 @Divide(i32, i32) #1

declare dso_local i32 @ConvertToFraction(i32) #1

declare dso_local i64 @GreaterThan(i32, i32) #1

declare dso_local i32 @fAdd(i32, i32) #1

declare dso_local i32 @GetScaledFraction(i32, i32) #1

declare dso_local i32 @fDivide(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
