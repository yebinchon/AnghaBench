; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_display_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_display_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.dpi_data = type { i32, i64, %struct.TYPE_3__*, i64, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @dpi_display_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpi_display_disable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.dpi_data*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %4 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %5 = call %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device* %4)
  store %struct.dpi_data* %5, %struct.dpi_data** %3, align 8
  %6 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %7 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %10 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %9, i32 0, i32 4
  %11 = call i32 @dss_mgr_disable(%struct.TYPE_4__* %10)
  %12 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %13 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %18 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %21 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DSS_CLK_SRC_FCK, align 4
  %25 = call i32 @dss_select_lcd_clk_source(%struct.TYPE_3__* %19, i32 %23, i32 %24)
  %26 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %27 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dss_pll_disable(i64 %28)
  br label %30

30:                                               ; preds = %16, %1
  %31 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %32 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dispc_runtime_put(i32 %35)
  %37 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %38 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %43 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @regulator_disable(i64 %44)
  br label %46

46:                                               ; preds = %41, %30
  %47 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %48 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  ret void
}

declare dso_local %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dss_mgr_disable(%struct.TYPE_4__*) #1

declare dso_local i32 @dss_select_lcd_clk_source(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @dss_pll_disable(i64) #1

declare dso_local i32 @dispc_runtime_put(i32) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
