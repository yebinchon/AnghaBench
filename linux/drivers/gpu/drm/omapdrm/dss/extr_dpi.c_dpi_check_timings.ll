; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_check_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_check_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.drm_display_mode = type { i32, i32 }
%struct.dpi_data = type { i64 }
%struct.dpi_clk_calc_ctx = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.drm_display_mode*)* @dpi_check_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_check_timings(%struct.omap_dss_device* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.dpi_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dpi_clk_calc_ctx, align 8
  %12 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %14 = call %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device* %13)
  store %struct.dpi_data* %14, %struct.dpi_data** %6, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = srem i32 %17, 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %90

23:                                               ; preds = %2
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %90

31:                                               ; preds = %23
  %32 = load %struct.dpi_data*, %struct.dpi_data** %6, align 8
  %33 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %31
  %37 = load %struct.dpi_data*, %struct.dpi_data** %6, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 1000
  %42 = call i32 @dpi_pll_clk_calc(%struct.dpi_data* %37, i32 %41, %struct.dpi_clk_calc_ctx* %11)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %90

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %11, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %11, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %9, align 8
  br label %71

56:                                               ; preds = %31
  %57 = load %struct.dpi_data*, %struct.dpi_data** %6, align 8
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 1000
  %62 = call i32 @dpi_dss_clk_calc(%struct.dpi_data* %57, i32 %61, %struct.dpi_clk_calc_ctx* %11)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %90

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %11, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %68, %48
  %72 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %11, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %7, align 4
  %75 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %11, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  %78 = load i64, i64* %9, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = udiv i64 %78, %80
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = udiv i64 %81, %83
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %10, align 8
  %86 = udiv i64 %85, 1000
  %87 = trunc i64 %86 to i32
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %89 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %71, %65, %45, %28, %20
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local i32 @dpi_pll_clk_calc(%struct.dpi_data*, i32, %struct.dpi_clk_calc_ctx*) #1

declare dso_local i32 @dpi_dss_clk_calc(%struct.dpi_data*, i32, %struct.dpi_clk_calc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
