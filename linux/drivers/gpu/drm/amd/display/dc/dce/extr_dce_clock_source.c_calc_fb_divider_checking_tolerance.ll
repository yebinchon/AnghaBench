; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_calc_fb_divider_checking_tolerance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_calc_fb_divider_checking_tolerance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calc_pll_clock_source = type { i32, i32 }
%struct.pll_settings = type { i64, i32, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.calc_pll_clock_source*, %struct.pll_settings*, i64, i64, i64)* @calc_fb_divider_checking_tolerance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_fb_divider_checking_tolerance(%struct.calc_pll_clock_source* %0, %struct.pll_settings* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.calc_pll_clock_source*, align 8
  %8 = alloca %struct.pll_settings*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.calc_pll_clock_source* %0, %struct.calc_pll_clock_source** %7, align 8
  store %struct.pll_settings* %1, %struct.pll_settings** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %7, align 8
  %18 = load %struct.pll_settings*, %struct.pll_settings** %8, align 8
  %19 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @calculate_fb_and_fractional_fb_divider(%struct.calc_pll_clock_source* %17, i64 %20, i64 %21, i64 %22, i64* %12, i64* %13)
  %24 = load i64, i64* %12, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %7, align 8
  %27 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %13, align 8
  %32 = add nsw i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %16, align 4
  %34 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %7, align 8
  %35 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 10
  %38 = load i32, i32* %16, align 4
  %39 = mul nsw i32 %38, %37
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = mul nsw i64 %41, %42
  %44 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %7, align 8
  %45 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %43, %47
  %49 = call i32 @div_u64(i32 %40, i64 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.pll_settings*, %struct.pll_settings** %8, align 8
  %54 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %5
  %58 = load i64, i64* %14, align 8
  %59 = load %struct.pll_settings*, %struct.pll_settings** %8, align 8
  %60 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  br label %69

63:                                               ; preds = %5
  %64 = load %struct.pll_settings*, %struct.pll_settings** %8, align 8
  %65 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %14, align 8
  %68 = sub nsw i64 %66, %67
  br label %69

69:                                               ; preds = %63, %57
  %70 = phi i64 [ %62, %57 ], [ %68, %63 ]
  store i64 %70, i64* %15, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %11, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %69
  %75 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %7, align 8
  %76 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pll_settings*, %struct.pll_settings** %8, align 8
  %79 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.pll_settings*, %struct.pll_settings** %8, align 8
  %82 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %81, i32 0, i32 7
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.pll_settings*, %struct.pll_settings** %8, align 8
  %85 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %84, i32 0, i32 6
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.pll_settings*, %struct.pll_settings** %8, align 8
  %88 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %87, i32 0, i32 5
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.pll_settings*, %struct.pll_settings** %8, align 8
  %91 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %90, i32 0, i32 4
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load %struct.pll_settings*, %struct.pll_settings** %8, align 8
  %94 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* %10, align 8
  %97 = mul nsw i64 %95, %96
  %98 = sdiv i64 %97, 10
  %99 = load %struct.pll_settings*, %struct.pll_settings** %8, align 8
  %100 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  store i32 1, i32* %6, align 4
  br label %102

101:                                              ; preds = %69
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %101, %74
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @calculate_fb_and_fractional_fb_divider(%struct.calc_pll_clock_source*, i64, i64, i64, i64*, i64*) #1

declare dso_local i32 @div_u64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
