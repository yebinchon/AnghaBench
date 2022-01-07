; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vm_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vm_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.omap_dss_dsi_config = type { i32, i64, i32, i32, %struct.videomode* }
%struct.videomode = type { i64 }
%struct.dsi_clk_calc_ctx = type { %struct.TYPE_2__*, i64, i64, i64, %struct.omap_dss_dsi_config*, %struct.dsi_data* }

@OMAP_DSS_DSI_BURST_MODE = common dso_local global i64 0, align 8
@dsi_vm_calc_pll_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, %struct.omap_dss_dsi_config*, %struct.dsi_clk_calc_ctx*)* @dsi_vm_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vm_calc(%struct.dsi_data* %0, %struct.omap_dss_dsi_config* %1, %struct.dsi_clk_calc_ctx* %2) #0 {
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca %struct.omap_dss_dsi_config*, align 8
  %6 = alloca %struct.dsi_clk_calc_ctx*, align 8
  %7 = alloca %struct.videomode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.dsi_data* %0, %struct.dsi_data** %4, align 8
  store %struct.omap_dss_dsi_config* %1, %struct.omap_dss_dsi_config** %5, align 8
  store %struct.dsi_clk_calc_ctx* %2, %struct.dsi_clk_calc_ctx** %6, align 8
  %15 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %16 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %15, i32 0, i32 4
  %17 = load %struct.videomode*, %struct.videomode** %16, align 8
  store %struct.videomode* %17, %struct.videomode** %7, align 8
  %18 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %19 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %11, align 4
  %22 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %23 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dsi_get_pixel_size(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %27 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @clk_get_rate(i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %32 = call i32 @memset(%struct.dsi_clk_calc_ctx* %31, i32 0, i32 48)
  %33 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %34 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %34, i32 0, i32 5
  store %struct.dsi_data* %33, %struct.dsi_data** %35, align 8
  %36 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %37 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %36, i32 0, i32 1
  %38 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %38, i32 0, i32 0
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %39, align 8
  %40 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %41 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %41, i32 0, i32 4
  store %struct.omap_dss_dsi_config* %40, %struct.omap_dss_dsi_config** %42, align 8
  %43 = load %struct.videomode*, %struct.videomode** %7, align 8
  %44 = getelementptr inbounds %struct.videomode, %struct.videomode* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, 1000
  %47 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.videomode*, %struct.videomode** %7, align 8
  %50 = getelementptr inbounds %struct.videomode, %struct.videomode* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.videomode*, %struct.videomode** %7, align 8
  %55 = getelementptr inbounds %struct.videomode, %struct.videomode* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1000
  %58 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %61 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %12, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %11, align 4
  %67 = mul nsw i32 %66, 8
  %68 = call i64 @div64_u64(i32 %65, i32 %67)
  store i64 %68, i64* %13, align 8
  %69 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %70 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %71, 4
  %73 = load i64, i64* %13, align 8
  %74 = mul i64 %73, 4
  %75 = mul i64 %74, 4
  %76 = call i64 @max(i32 %72, i64 %75)
  store i64 %76, i64* %9, align 8
  %77 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %78 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @OMAP_DSS_DSI_BURST_MODE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %3
  %83 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %84 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %85, 4
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %10, align 8
  br label %101

88:                                               ; preds = %3
  %89 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* %12, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %11, align 4
  %96 = mul nsw i32 %95, 8
  %97 = call i64 @div64_u64(i32 %94, i32 %96)
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %14, align 8
  %99 = mul i64 %98, 4
  %100 = mul i64 %99, 4
  store i64 %100, i64* %10, align 8
  br label %101

101:                                              ; preds = %88, %82
  %102 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %103 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i32, i32* @dsi_vm_calc_pll_cb, align 4
  %109 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %110 = call i32 @dss_pll_calc_a(%struct.TYPE_2__* %104, i64 %105, i64 %106, i64 %107, i32 %108, %struct.dsi_clk_calc_ctx* %109)
  ret i32 %110
}

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @memset(%struct.dsi_clk_calc_ctx*, i32, i32) #1

declare dso_local i64 @div64_u64(i32, i32) #1

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @dss_pll_calc_a(%struct.TYPE_2__*, i64, i64, i64, i32, %struct.dsi_clk_calc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
