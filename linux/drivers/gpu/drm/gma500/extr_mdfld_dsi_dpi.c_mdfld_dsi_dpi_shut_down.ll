; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_dsi_dpi_shut_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_dsi_dpi_shut_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_dpi_output = type { i64, i64, %struct.drm_device* }
%struct.drm_device = type { i32 }

@DSI_INTR_STATE_SPL_PKG_SENT = common dso_local global i32 0, align 4
@DSI_DPI_CTRL_HS_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdfld_dsi_dpi_output*, i32)* @mdfld_dsi_dpi_shut_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdfld_dsi_dpi_shut_down(%struct.mdfld_dsi_dpi_output* %0, i32 %1) #0 {
  %3 = alloca %struct.mdfld_dsi_dpi_output*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  store %struct.mdfld_dsi_dpi_output* %0, %struct.mdfld_dsi_dpi_output** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mdfld_dsi_dpi_output*, %struct.mdfld_dsi_dpi_output** %3, align 8
  %7 = getelementptr inbounds %struct.mdfld_dsi_dpi_output, %struct.mdfld_dsi_dpi_output* %6, i32 0, i32 2
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %5, align 8
  %9 = load %struct.mdfld_dsi_dpi_output*, %struct.mdfld_dsi_dpi_output** %3, align 8
  %10 = getelementptr inbounds %struct.mdfld_dsi_dpi_output, %struct.mdfld_dsi_dpi_output* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.mdfld_dsi_dpi_output*, %struct.mdfld_dsi_dpi_output** %3, align 8
  %15 = getelementptr inbounds %struct.mdfld_dsi_dpi_output, %struct.mdfld_dsi_dpi_output* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %2
  %19 = load %struct.mdfld_dsi_dpi_output*, %struct.mdfld_dsi_dpi_output** %3, align 8
  %20 = getelementptr inbounds %struct.mdfld_dsi_dpi_output, %struct.mdfld_dsi_dpi_output* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %53

21:                                               ; preds = %13
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @mdfld_wait_for_DPI_CTRL_FIFO(%struct.drm_device* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @MIPI_INTR_STAT_REG(i32 %25)
  %27 = call i32 @REG_READ(i32 %26)
  %28 = load i32, i32* @DSI_INTR_STATE_SPL_PKG_SENT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @MIPI_INTR_STAT_REG(i32 %32)
  %34 = load i32, i32* @DSI_INTR_STATE_SPL_PKG_SENT, align 4
  %35 = call i32 @REG_WRITE(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %21
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @MIPI_DPI_CONTROL_REG(i32 %37)
  %39 = call i32 @REG_READ(i32 %38)
  %40 = load i32, i32* @DSI_DPI_CTRL_HS_SHUTDOWN, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %48

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @MIPI_DPI_CONTROL_REG(i32 %44)
  %46 = load i32, i32* @DSI_DPI_CTRL_HS_SHUTDOWN, align 4
  %47 = call i32 @REG_WRITE(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %42
  %49 = load %struct.mdfld_dsi_dpi_output*, %struct.mdfld_dsi_dpi_output** %3, align 8
  %50 = getelementptr inbounds %struct.mdfld_dsi_dpi_output, %struct.mdfld_dsi_dpi_output* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.mdfld_dsi_dpi_output*, %struct.mdfld_dsi_dpi_output** %3, align 8
  %52 = getelementptr inbounds %struct.mdfld_dsi_dpi_output, %struct.mdfld_dsi_dpi_output* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %18
  ret void
}

declare dso_local i32 @mdfld_wait_for_DPI_CTRL_FIFO(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @MIPI_INTR_STAT_REG(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @MIPI_DPI_CONTROL_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
