; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_dsi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_dsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.panel_desc_dsi = type { i32, i32, i32, i32 }
%struct.of_device_id = type { %struct.panel_desc_dsi* }
%struct.panel_simple = type { i32 }

@dsi_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @panel_simple_dsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_simple_dsi_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.panel_desc_dsi*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.panel_simple*, align 8
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %8 = load i32, i32* @dsi_of_match, align 4
  %9 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %10 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.of_device_id* @of_match_node(i32 %8, i32 %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %5, align 8
  %14 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %15 = icmp ne %struct.of_device_id* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %21 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %20, i32 0, i32 0
  %22 = load %struct.panel_desc_dsi*, %struct.panel_desc_dsi** %21, align 8
  store %struct.panel_desc_dsi* %22, %struct.panel_desc_dsi** %4, align 8
  %23 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %24 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %23, i32 0, i32 0
  %25 = load %struct.panel_desc_dsi*, %struct.panel_desc_dsi** %4, align 8
  %26 = getelementptr inbounds %struct.panel_desc_dsi, %struct.panel_desc_dsi* %25, i32 0, i32 3
  %27 = call i32 @panel_simple_probe(%struct.TYPE_3__* %24, i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %61

32:                                               ; preds = %19
  %33 = load %struct.panel_desc_dsi*, %struct.panel_desc_dsi** %4, align 8
  %34 = getelementptr inbounds %struct.panel_desc_dsi, %struct.panel_desc_dsi* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.panel_desc_dsi*, %struct.panel_desc_dsi** %4, align 8
  %39 = getelementptr inbounds %struct.panel_desc_dsi, %struct.panel_desc_dsi* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %42 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.panel_desc_dsi*, %struct.panel_desc_dsi** %4, align 8
  %44 = getelementptr inbounds %struct.panel_desc_dsi, %struct.panel_desc_dsi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %47 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %49 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %32
  %53 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %54 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %53, i32 0, i32 0
  %55 = call %struct.panel_simple* @dev_get_drvdata(%struct.TYPE_3__* %54)
  store %struct.panel_simple* %55, %struct.panel_simple** %7, align 8
  %56 = load %struct.panel_simple*, %struct.panel_simple** %7, align 8
  %57 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %56, i32 0, i32 0
  %58 = call i32 @drm_panel_remove(i32* %57)
  br label %59

59:                                               ; preds = %52, %32
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %30, %16
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @panel_simple_probe(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

declare dso_local %struct.panel_simple* @dev_get_drvdata(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_panel_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
