; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-innolux-p079zca.c_innolux_panel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-innolux-p079zca.c_innolux_panel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, i32, i32 }
%struct.panel_desc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @innolux_panel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @innolux_panel_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.panel_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %6 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %7 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %6, i32 0, i32 3
  %8 = call %struct.panel_desc* @of_device_get_match_data(i32* %7)
  store %struct.panel_desc* %8, %struct.panel_desc** %4, align 8
  %9 = load %struct.panel_desc*, %struct.panel_desc** %4, align 8
  %10 = getelementptr inbounds %struct.panel_desc, %struct.panel_desc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %13 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.panel_desc*, %struct.panel_desc** %4, align 8
  %15 = getelementptr inbounds %struct.panel_desc, %struct.panel_desc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %18 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.panel_desc*, %struct.panel_desc** %4, align 8
  %20 = getelementptr inbounds %struct.panel_desc, %struct.panel_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %23 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %25 = load %struct.panel_desc*, %struct.panel_desc** %4, align 8
  %26 = call i32 @innolux_panel_add(%struct.mipi_dsi_device* %24, %struct.panel_desc* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %33 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %29
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.panel_desc* @of_device_get_match_data(i32*) #1

declare dso_local i32 @innolux_panel_add(%struct.mipi_dsi_device*, %struct.panel_desc*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
