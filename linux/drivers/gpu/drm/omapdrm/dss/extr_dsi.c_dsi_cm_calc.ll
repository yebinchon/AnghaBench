; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_cm_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_cm_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.omap_dss_dsi_config = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.dsi_clk_calc_ctx = type { i64, i64, i64, %struct.TYPE_4__*, %struct.omap_dss_dsi_config*, %struct.dsi_data* }

@dsi_cm_calc_pll_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, %struct.omap_dss_dsi_config*, %struct.dsi_clk_calc_ctx*)* @dsi_cm_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_cm_calc(%struct.dsi_data* %0, %struct.omap_dss_dsi_config* %1, %struct.dsi_clk_calc_ctx* %2) #0 {
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca %struct.omap_dss_dsi_config*, align 8
  %6 = alloca %struct.dsi_clk_calc_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.dsi_data* %0, %struct.dsi_data** %4, align 8
  store %struct.omap_dss_dsi_config* %1, %struct.omap_dss_dsi_config** %5, align 8
  store %struct.dsi_clk_calc_ctx* %2, %struct.dsi_clk_calc_ctx** %6, align 8
  %14 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %15 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @clk_get_rate(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %20 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dsi_get_pixel_size(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %24 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %28 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = mul i64 %32, 3
  %34 = udiv i64 %33, 2
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %35, %37
  %39 = udiv i64 %38, 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %39, %41
  store i64 %42, i64* %13, align 8
  %43 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %44 = call i32 @memset(%struct.dsi_clk_calc_ctx* %43, i32 0, i32 48)
  %45 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %46 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %46, i32 0, i32 5
  store %struct.dsi_data* %45, %struct.dsi_data** %47, align 8
  %48 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %49 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %48, i32 0, i32 1
  %50 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %50, i32 0, i32 3
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %51, align 8
  %52 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %53 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %54 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %53, i32 0, i32 4
  store %struct.omap_dss_dsi_config* %52, %struct.omap_dss_dsi_config** %54, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %12, align 8
  %62 = mul i64 %61, 3
  %63 = udiv i64 %62, 2
  %64 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %67 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %68, 4
  %70 = load i64, i64* %13, align 8
  %71 = mul i64 %70, 4
  %72 = mul i64 %71, 4
  %73 = call i64 @max(i32 %69, i64 %72)
  store i64 %73, i64* %10, align 8
  %74 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %75 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %11, align 8
  %79 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %80 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i32, i32* @dsi_cm_calc_pll_cb, align 4
  %86 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %87 = call i32 @dss_pll_calc_a(%struct.TYPE_4__* %81, i64 %82, i64 %83, i64 %84, i32 %85, %struct.dsi_clk_calc_ctx* %86)
  ret i32 %87
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i32 @memset(%struct.dsi_clk_calc_ctx*, i32, i32) #1

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @dss_pll_calc_a(%struct.TYPE_4__*, i64, i64, i64, i32, %struct.dsi_clk_calc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
