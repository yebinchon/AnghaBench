; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_dcs_write_short.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_dcs_write_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_dsi = type { i32 }
%struct.mipi_dsi_msg = type { i32 }

@SUN6I_DSI_CMD_CTL_REG = common dso_local global i32 0, align 4
@DSI_START_LPTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun6i_dsi*, %struct.mipi_dsi_msg*)* @sun6i_dsi_dcs_write_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dsi_dcs_write_short(%struct.sun6i_dsi* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca %struct.sun6i_dsi*, align 8
  %4 = alloca %struct.mipi_dsi_msg*, align 8
  store %struct.sun6i_dsi* %0, %struct.sun6i_dsi** %3, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %4, align 8
  %5 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %6 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @SUN6I_DSI_CMD_TX_REG(i32 0)
  %9 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %10 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %11 = call i32 @sun6i_dsi_dcs_build_pkt_hdr(%struct.sun6i_dsi* %9, %struct.mipi_dsi_msg* %10)
  %12 = call i32 @regmap_write(i32 %7, i32 %8, i32 %11)
  %13 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %14 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SUN6I_DSI_CMD_CTL_REG, align 4
  %17 = call i32 @regmap_write_bits(i32 %15, i32 %16, i32 255, i32 3)
  %18 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %19 = load i32, i32* @DSI_START_LPTX, align 4
  %20 = call i32 @sun6i_dsi_start(%struct.sun6i_dsi* %18, i32 %19)
  %21 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %22 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  ret i32 %23
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN6I_DSI_CMD_TX_REG(i32) #1

declare dso_local i32 @sun6i_dsi_dcs_build_pkt_hdr(%struct.sun6i_dsi*, %struct.mipi_dsi_msg*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @sun6i_dsi_start(%struct.sun6i_dsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
