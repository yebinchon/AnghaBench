; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_dsi_dpi_turn_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_dsi_dpi_turn_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_dpi_output = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@DSI_INTR_STATE_SPL_PKG_SENT = common dso_local global i32 0, align 4
@DSI_DPI_CTRL_HS_TURN_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdfld_dsi_dpi_turn_on(%struct.mdfld_dsi_dpi_output* %0, i32 %1) #0 {
  %3 = alloca %struct.mdfld_dsi_dpi_output*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  store %struct.mdfld_dsi_dpi_output* %0, %struct.mdfld_dsi_dpi_output** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mdfld_dsi_dpi_output*, %struct.mdfld_dsi_dpi_output** %3, align 8
  %7 = getelementptr inbounds %struct.mdfld_dsi_dpi_output, %struct.mdfld_dsi_dpi_output* %6, i32 0, i32 1
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @MIPI_INTR_STAT_REG(i32 %9)
  %11 = call i32 @REG_READ(i32 %10)
  %12 = load i32, i32* @DSI_INTR_STATE_SPL_PKG_SENT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @MIPI_INTR_STAT_REG(i32 %16)
  %18 = load i32, i32* @DSI_INTR_STATE_SPL_PKG_SENT, align 4
  %19 = call i32 @REG_WRITE(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @MIPI_DPI_CONTROL_REG(i32 %21)
  %23 = load i32, i32* @DSI_DPI_CTRL_HS_TURN_ON, align 4
  %24 = call i32 @REG_WRITE(i32 %22, i32 %23)
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @mdfld_wait_for_SPL_PKG_SENT(%struct.drm_device* %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @MIPI_INTR_STAT_REG(i32 %28)
  %30 = call i32 @REG_READ(i32 %29)
  %31 = load i32, i32* @DSI_INTR_STATE_SPL_PKG_SENT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @MIPI_INTR_STAT_REG(i32 %35)
  %37 = load i32, i32* @DSI_INTR_STATE_SPL_PKG_SENT, align 4
  %38 = call i32 @REG_WRITE(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %20
  %40 = load %struct.mdfld_dsi_dpi_output*, %struct.mdfld_dsi_dpi_output** %3, align 8
  %41 = getelementptr inbounds %struct.mdfld_dsi_dpi_output, %struct.mdfld_dsi_dpi_output* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  ret void
}

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @MIPI_INTR_STAT_REG(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @MIPI_DPI_CONTROL_REG(i32) #1

declare dso_local i32 @mdfld_wait_for_SPL_PKG_SENT(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
