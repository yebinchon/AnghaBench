; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_hsdiv_calc_a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_hsdiv_calc_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { %struct.dss_pll_hw* }
%struct.dss_pll_hw = type { i32 }

@ULONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_pll_hsdiv_calc_a(%struct.dss_pll* %0, i64 %1, i64 %2, i64 %3, i64 (i32, i64, i8*)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dss_pll*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64 (i32, i64, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.dss_pll_hw*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.dss_pll* %0, %struct.dss_pll** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 (i32, i64, i8*)* %4, i64 (i32, i64, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load %struct.dss_pll*, %struct.dss_pll** %8, align 8
  %20 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %19, i32 0, i32 0
  %21 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %20, align 8
  store %struct.dss_pll_hw* %21, %struct.dss_pll_hw** %14, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i64, i64* %10, align 8
  br label %27

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i64 [ %25, %24 ], [ 1, %26 ]
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* %11, align 8
  br label %35

33:                                               ; preds = %27
  %34 = load i64, i64* @ULONG_MAX, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @DIV_ROUND_UP(i64 %37, i64 %38)
  %40 = call i32 @max(i32 %39, i64 1)
  store i32 %40, i32* %16, align 4
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = udiv i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %14, align 8
  %46 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @min(i32 %44, i32 %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %67, %35
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %55, %57
  store i64 %58, i64* %18, align 8
  %59 = load i64 (i32, i64, i8*)*, i64 (i32, i64, i8*)** %12, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load i64, i64* %18, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = call i64 %59(i32 %60, i64 %61, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  store i32 1, i32* %7, align 4
  br label %71

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %50

70:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %65
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
