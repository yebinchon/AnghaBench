; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32 }
%struct.tc358764 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @tc358764_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc358764_remove(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca %struct.mipi_dsi_device*, align 8
  %3 = alloca %struct.tc358764*, align 8
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %2, align 8
  %4 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  %5 = call %struct.tc358764* @mipi_dsi_get_drvdata(%struct.mipi_dsi_device* %4)
  store %struct.tc358764* %5, %struct.tc358764** %3, align 8
  %6 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  %7 = call i32 @mipi_dsi_detach(%struct.mipi_dsi_device* %6)
  %8 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %9 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %8, i32 0, i32 0
  %10 = call i32 @drm_bridge_remove(i32* %9)
  ret i32 0
}

declare dso_local %struct.tc358764* @mipi_dsi_get_drvdata(%struct.mipi_dsi_device*) #1

declare dso_local i32 @mipi_dsi_detach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @drm_bridge_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
