; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_bridge_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_bridge_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.mcde_dsi = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DSI_VID_MODE_STS_CTL = common dso_local global i64 0, align 8
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_DATA_CTL = common dso_local global i64 0, align 8
@DSI_MCTL_MAIN_DATA_CTL_VID_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @mcde_dsi_bridge_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_dsi_bridge_disable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.mcde_dsi*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %6 = call %struct.mcde_dsi* @bridge_to_mcde_dsi(%struct.drm_bridge* %5)
  store %struct.mcde_dsi* %6, %struct.mcde_dsi** %3, align 8
  %7 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %8 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DSI_VID_MODE_STS_CTL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 0, i64 %11)
  %13 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %14 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %1
  %22 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %23 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DSI_MCTL_MAIN_DATA_CTL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @DSI_MCTL_MAIN_DATA_CTL_VID_EN, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %34 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DSI_MCTL_MAIN_DATA_CTL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %40 = call i32 @mcde_dsi_wait_for_video_mode_stop(%struct.mcde_dsi* %39)
  br label %44

41:                                               ; preds = %1
  %42 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %43 = call i32 @mcde_dsi_wait_for_command_mode_stop(%struct.mcde_dsi* %42)
  br label %44

44:                                               ; preds = %41, %21
  %45 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %46 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clk_disable_unprepare(i32 %47)
  %49 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %50 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @clk_disable_unprepare(i32 %51)
  ret void
}

declare dso_local %struct.mcde_dsi* @bridge_to_mcde_dsi(%struct.drm_bridge*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mcde_dsi_wait_for_video_mode_stop(%struct.mcde_dsi*) #1

declare dso_local i32 @mcde_dsi_wait_for_command_mode_stop(%struct.mcde_dsi*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
