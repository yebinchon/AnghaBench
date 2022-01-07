; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_device = type { i32 }
%struct.cdns_dsi = type { %struct.cdns_dsi_input, %struct.cdns_dsi_output }
%struct.cdns_dsi_input = type { i32 }
%struct.cdns_dsi_output = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_device*)* @cdns_dsi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_dsi_detach(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca %struct.mipi_dsi_host*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca %struct.cdns_dsi*, align 8
  %6 = alloca %struct.cdns_dsi_output*, align 8
  %7 = alloca %struct.cdns_dsi_input*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %3, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %4, align 8
  %8 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %3, align 8
  %9 = call %struct.cdns_dsi* @to_cdns_dsi(%struct.mipi_dsi_host* %8)
  store %struct.cdns_dsi* %9, %struct.cdns_dsi** %5, align 8
  %10 = load %struct.cdns_dsi*, %struct.cdns_dsi** %5, align 8
  %11 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %10, i32 0, i32 1
  store %struct.cdns_dsi_output* %11, %struct.cdns_dsi_output** %6, align 8
  %12 = load %struct.cdns_dsi*, %struct.cdns_dsi** %5, align 8
  %13 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %12, i32 0, i32 0
  store %struct.cdns_dsi_input* %13, %struct.cdns_dsi_input** %7, align 8
  %14 = load %struct.cdns_dsi_input*, %struct.cdns_dsi_input** %7, align 8
  %15 = getelementptr inbounds %struct.cdns_dsi_input, %struct.cdns_dsi_input* %14, i32 0, i32 0
  %16 = call i32 @drm_bridge_remove(i32* %15)
  %17 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %6, align 8
  %18 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %6, align 8
  %23 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @drm_panel_bridge_remove(i32 %24)
  br label %26

26:                                               ; preds = %21, %2
  ret i32 0
}

declare dso_local %struct.cdns_dsi* @to_cdns_dsi(%struct.mipi_dsi_host*) #1

declare dso_local i32 @drm_bridge_remove(i32*) #1

declare dso_local i32 @drm_panel_bridge_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
