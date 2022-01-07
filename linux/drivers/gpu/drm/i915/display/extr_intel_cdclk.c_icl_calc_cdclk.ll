; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_icl_calc_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_icl_calc_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@icl_calc_cdclk.ranges_24 = internal constant [5 x i32] [i32 180000, i32 192000, i32 312000, i32 552000, i32 648000], align 16
@icl_calc_cdclk.ranges_19_38 = internal constant [5 x i32] [i32 172800, i32 192000, i32 307200, i32 556800, i32 652800], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @icl_calc_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_calc_cdclk(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %10 [
    i32 24000, label %13
    i32 19200, label %15
    i32 38400, label %15
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @MISSING_CASE(i32 %11)
  br label %13

13:                                               ; preds = %2, %10
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @icl_calc_cdclk.ranges_24, i64 0, i64 0), i32** %6, align 8
  %14 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @icl_calc_cdclk.ranges_24, i64 0, i64 0))
  store i32 %14, i32* %7, align 4
  br label %17

15:                                               ; preds = %2, %2
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @icl_calc_cdclk.ranges_19_38, i64 0, i64 0), i32** %6, align 8
  %16 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @icl_calc_cdclk.ranges_19_38, i64 0, i64 0))
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %15, %13
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %37, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %23, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %57

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %18

40:                                               ; preds = %18
  %41 = load i32, i32* %4, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %41, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @WARN_ON(i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %40, %30
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
