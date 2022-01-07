; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_calculate_fb_and_fractional_fb_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_calculate_fb_and_fractional_fb_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calc_pll_clock_source = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.calc_pll_clock_source*, i32, i32, i32, i32*, i32*)* @calculate_fb_and_fractional_fb_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_fb_and_fractional_fb_divider(%struct.calc_pll_clock_source* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.calc_pll_clock_source*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.calc_pll_clock_source* %0, %struct.calc_pll_clock_source** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32, i32* %11, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = mul nsw i32 %20, 10
  store i32 %21, i32* %14, align 4
  %22 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %8, align 8
  %23 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %14, align 4
  %27 = mul nsw i32 %26, %25
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %8, align 8
  %30 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %31, 10
  %33 = trunc i64 %32 to i32
  %34 = call i32 @div_u64(i32 %28, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %8, align 8
  %36 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = mul i64 5, %37
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %8, align 8
  %45 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %46, 10
  %48 = trunc i64 %47 to i32
  %49 = call i32 @div_u64(i32 %43, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %8, align 8
  %51 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* %14, align 4
  %55 = mul nsw i32 %54, %53
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %8, align 8
  %58 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @div_u64_rem(i32 %56, i64 %59, i32* %60)
  %62 = load i32*, i32** %12, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %68

67:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @div_u64_rem(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
