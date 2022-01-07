; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_exit_ulps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_exit_ulps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i32, i64, %struct.TYPE_6__*, i32, %struct.omap_dss_device* }
%struct.TYPE_6__ = type { i32 }
%struct.omap_dss_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 (%struct.omap_dss_device*)* }
%struct.TYPE_4__ = type { i32 (%struct.omap_dss_device*, i32, i32)* }

@.str = private unnamed_addr constant [23 x i8] c"failed to re-enable TE\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to exit ULPS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_drv_data*)* @dsicm_exit_ulps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_exit_ulps(%struct.panel_drv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %3, align 8
  %6 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %7 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %6, i32 0, i32 4
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  store %struct.omap_dss_device* %8, %struct.omap_dss_device** %4, align 8
  %9 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %10 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

14:                                               ; preds = %1
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %16 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %18, align 8
  %20 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %21 = call i32 %19(%struct.omap_dss_device* %20)
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %23 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %26, align 8
  %28 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %29 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %30 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %27(%struct.omap_dss_device* %28, i32 %31, i32 1)
  %33 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %34 = call i32 @_dsicm_enable_te(%struct.panel_drv_data* %33, i32 1)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %14
  %38 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %39 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %59

43:                                               ; preds = %14
  %44 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %45 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %50 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @gpiod_to_irq(i64 %51)
  %53 = call i32 @enable_irq(i32 %52)
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %56 = call i32 @dsicm_queue_ulps_work(%struct.panel_drv_data* %55)
  %57 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %58 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  store i32 0, i32* %2, align 4
  br label %87

59:                                               ; preds = %37
  %60 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %61 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %66 = call i32 @dsicm_panel_reset(%struct.panel_drv_data* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %59
  %70 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %71 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %76 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @gpiod_to_irq(i64 %77)
  %79 = call i32 @enable_irq(i32 %78)
  br label %80

80:                                               ; preds = %74, %69
  %81 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %82 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %59
  %84 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %85 = call i32 @dsicm_queue_ulps_work(%struct.panel_drv_data* %84)
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %54, %13
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @_dsicm_enable_te(%struct.panel_drv_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @gpiod_to_irq(i64) #1

declare dso_local i32 @dsicm_queue_ulps_work(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_panel_reset(%struct.panel_drv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
