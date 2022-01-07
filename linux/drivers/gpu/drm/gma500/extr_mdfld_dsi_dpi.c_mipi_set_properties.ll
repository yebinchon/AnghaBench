; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mipi_set_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mipi_set_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_config = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdfld_dsi_config*, i32)* @mipi_set_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mipi_set_properties(%struct.mdfld_dsi_config* %0, i32 %1) #0 {
  %3 = alloca %struct.mdfld_dsi_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  store %struct.mdfld_dsi_config* %0, %struct.mdfld_dsi_config** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %7 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %6, i32 0, i32 0
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @MIPI_CTRL_REG(i32 %9)
  %11 = call i32 @REG_WRITE(i32 %10, i32 24)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @MIPI_INTR_EN_REG(i32 %12)
  %14 = call i32 @REG_WRITE(i32 %13, i32 -1)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @MIPI_HS_TX_TIMEOUT_REG(i32 %15)
  %17 = call i32 @REG_WRITE(i32 %16, i32 16777215)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @MIPI_LP_RX_TIMEOUT_REG(i32 %18)
  %20 = call i32 @REG_WRITE(i32 %19, i32 16777215)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @MIPI_TURN_AROUND_TIMEOUT_REG(i32 %21)
  %23 = call i32 @REG_WRITE(i32 %22, i32 20)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @MIPI_DEVICE_RESET_TIMER_REG(i32 %24)
  %26 = call i32 @REG_WRITE(i32 %25, i32 255)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @MIPI_HIGH_LOW_SWITCH_COUNT_REG(i32 %27)
  %29 = call i32 @REG_WRITE(i32 %28, i32 37)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @MIPI_INIT_COUNT_REG(i32 %30)
  %32 = call i32 @REG_WRITE(i32 %31, i32 240)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @MIPI_EOT_DISABLE_REG(i32 %33)
  %35 = call i32 @REG_WRITE(i32 %34, i32 0)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @MIPI_LP_BYTECLK_REG(i32 %36)
  %38 = call i32 @REG_WRITE(i32 %37, i32 4)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @MIPI_DBI_BW_CTRL_REG(i32 %39)
  %41 = call i32 @REG_WRITE(i32 %40, i32 2080)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @MIPI_CLK_LANE_SWITCH_TIME_CNT_REG(i32 %42)
  %44 = call i32 @REG_WRITE(i32 %43, i32 655380)
  ret void
}

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @MIPI_CTRL_REG(i32) #1

declare dso_local i32 @MIPI_INTR_EN_REG(i32) #1

declare dso_local i32 @MIPI_HS_TX_TIMEOUT_REG(i32) #1

declare dso_local i32 @MIPI_LP_RX_TIMEOUT_REG(i32) #1

declare dso_local i32 @MIPI_TURN_AROUND_TIMEOUT_REG(i32) #1

declare dso_local i32 @MIPI_DEVICE_RESET_TIMER_REG(i32) #1

declare dso_local i32 @MIPI_HIGH_LOW_SWITCH_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_INIT_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_EOT_DISABLE_REG(i32) #1

declare dso_local i32 @MIPI_LP_BYTECLK_REG(i32) #1

declare dso_local i32 @MIPI_DBI_BW_CTRL_REG(i32) #1

declare dso_local i32 @MIPI_CLK_LANE_SWITCH_TIME_CNT_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
