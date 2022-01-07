; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_enter_ulps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_enter_ulps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i32, %struct.TYPE_6__*, i64, %struct.omap_dss_device* }
%struct.TYPE_6__ = type { i32 }
%struct.omap_dss_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.omap_dss_device*, i32, i32)* }

@.str = private unnamed_addr constant [18 x i8] c"enter ULPS failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_drv_data*)* @dsicm_enter_ulps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_enter_ulps(%struct.panel_drv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %3, align 8
  %6 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %7 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %6, i32 0, i32 3
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  store %struct.omap_dss_device* %8, %struct.omap_dss_device** %4, align 8
  %9 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %10 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

14:                                               ; preds = %1
  %15 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %16 = call i32 @dsicm_cancel_ulps_work(%struct.panel_drv_data* %15)
  %17 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %18 = call i32 @_dsicm_enable_te(%struct.panel_drv_data* %17, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %44

22:                                               ; preds = %14
  %23 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %24 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %29 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @gpiod_to_irq(i64 %30)
  %32 = call i32 @disable_irq(i32 %31)
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %35 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %38, align 8
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %41 = call i32 %39(%struct.omap_dss_device* %40, i32 0, i32 1)
  %42 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %43 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  store i32 0, i32* %2, align 4
  br label %57

44:                                               ; preds = %21
  %45 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %46 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %51 = call i32 @dsicm_panel_reset(%struct.panel_drv_data* %50)
  %52 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %53 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %55 = call i32 @dsicm_queue_ulps_work(%struct.panel_drv_data* %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %44, %33, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @dsicm_cancel_ulps_work(%struct.panel_drv_data*) #1

declare dso_local i32 @_dsicm_enable_te(%struct.panel_drv_data*, i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @gpiod_to_irq(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dsicm_panel_reset(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_queue_ulps_work(%struct.panel_drv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
