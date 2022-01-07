; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_clear_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_clear_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mipi_dsi = type { i32 }

@DSI_INT_ST0 = common dso_local global i32 0, align 4
@DSI_INT_ST1 = common dso_local global i32 0, align 4
@DSI_INT_MSK0 = common dso_local global i32 0, align 4
@DSI_INT_MSK1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mipi_dsi*)* @dw_mipi_dsi_clear_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mipi_dsi_clear_err(%struct.dw_mipi_dsi* %0) #0 {
  %2 = alloca %struct.dw_mipi_dsi*, align 8
  store %struct.dw_mipi_dsi* %0, %struct.dw_mipi_dsi** %2, align 8
  %3 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %2, align 8
  %4 = load i32, i32* @DSI_INT_ST0, align 4
  %5 = call i32 @dsi_read(%struct.dw_mipi_dsi* %3, i32 %4)
  %6 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %2, align 8
  %7 = load i32, i32* @DSI_INT_ST1, align 4
  %8 = call i32 @dsi_read(%struct.dw_mipi_dsi* %6, i32 %7)
  %9 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %2, align 8
  %10 = load i32, i32* @DSI_INT_MSK0, align 4
  %11 = call i32 @dsi_write(%struct.dw_mipi_dsi* %9, i32 %10, i32 0)
  %12 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %2, align 8
  %13 = load i32, i32* @DSI_INT_MSK1, align 4
  %14 = call i32 @dsi_write(%struct.dw_mipi_dsi* %12, i32 %13, i32 0)
  ret void
}

declare dso_local i32 @dsi_read(%struct.dw_mipi_dsi*, i32) #1

declare dso_local i32 @dsi_write(%struct.dw_mipi_dsi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
