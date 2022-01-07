; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_pll_clk_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_pll_clk_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpi_data = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.dpi_clk_calc_ctx = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_9__, %struct.dpi_data*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32* }

@DSS_PLL_TYPE_A = common dso_local global i64 0, align 8
@dpi_calc_pll_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpi_data*, i64, %struct.dpi_clk_calc_ctx*)* @dpi_pll_clk_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_pll_clk_calc(%struct.dpi_data* %0, i64 %1, %struct.dpi_clk_calc_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpi_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dpi_clk_calc_ctx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dpi_data* %0, %struct.dpi_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dpi_clk_calc_ctx* %2, %struct.dpi_clk_calc_ctx** %7, align 8
  %11 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %7, align 8
  %12 = call i32 @memset(%struct.dpi_clk_calc_ctx* %11, i32 0, i32 56)
  %13 = load %struct.dpi_data*, %struct.dpi_data** %5, align 8
  %14 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %7, align 8
  %15 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %14, i32 0, i32 4
  store %struct.dpi_data* %13, %struct.dpi_data** %15, align 8
  %16 = load %struct.dpi_data*, %struct.dpi_data** %5, align 8
  %17 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dss_pll_get_clkout_idx_for_src(i32 %18)
  %20 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dpi_data*, %struct.dpi_data** %5, align 8
  %23 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @clk_get_rate(i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.dpi_data*, %struct.dpi_data** %5, align 8
  %29 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DSS_PLL_TYPE_A, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %3
  %38 = load i64, i64* %6, align 8
  %39 = sub i64 %38, 1000
  %40 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1000
  %44 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %7, align 8
  %45 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %46 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %46, i32 0, i32 4
  %48 = load %struct.dpi_data*, %struct.dpi_data** %47, align 8
  %49 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* @dpi_calc_pll_cb, align 4
  %55 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %7, align 8
  %56 = call i32 @dss_pll_calc_a(%struct.TYPE_8__* %50, i64 %51, i64 %52, i64 %53, i32 %54, %struct.dpi_clk_calc_ctx* %55)
  store i32 %56, i32* %4, align 4
  br label %88

57:                                               ; preds = %3
  %58 = load %struct.dpi_data*, %struct.dpi_data** %5, align 8
  %59 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %7, align 8
  %64 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %63, i32 0, i32 3
  %65 = call i32 @dss_pll_calc_b(%struct.TYPE_8__* %60, i64 %61, i64 %62, %struct.TYPE_9__* %64)
  %66 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %7, align 8
  %67 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %7, align 8
  %70 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %7, align 8
  %73 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %7, align 8
  %79 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  %81 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %7, align 8
  %82 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %7, align 8
  %86 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 4
  store i32 1, i32* %4, align 4
  br label %88

88:                                               ; preds = %57, %37
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @memset(%struct.dpi_clk_calc_ctx*, i32, i32) #1

declare dso_local i32 @dss_pll_get_clkout_idx_for_src(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dss_pll_calc_a(%struct.TYPE_8__*, i64, i64, i64, i32, %struct.dpi_clk_calc_ctx*) #1

declare dso_local i32 @dss_pll_calc_b(%struct.TYPE_8__*, i64, i64, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
