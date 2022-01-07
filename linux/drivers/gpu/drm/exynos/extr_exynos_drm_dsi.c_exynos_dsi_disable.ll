; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.exynos_dsi = type { i32, i32, i32, i32 }

@DSIM_STATE_ENABLED = common dso_local global i32 0, align 4
@DSIM_STATE_VIDOUT_AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @exynos_dsi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_dsi_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.exynos_dsi*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = call %struct.exynos_dsi* @encoder_to_dsi(%struct.drm_encoder* %4)
  store %struct.exynos_dsi* %5, %struct.exynos_dsi** %3, align 8
  %6 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %7 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @DSIM_STATE_ENABLED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %48

13:                                               ; preds = %1
  %14 = load i32, i32* @DSIM_STATE_VIDOUT_AVAILABLE, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %17 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %21 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @drm_panel_disable(i32 %22)
  %24 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %25 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @drm_bridge_disable(i32 %26)
  %28 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %29 = call i32 @exynos_dsi_set_display_enable(%struct.exynos_dsi* %28, i32 0)
  %30 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %31 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @drm_panel_unprepare(i32 %32)
  %34 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %35 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @drm_bridge_post_disable(i32 %36)
  %38 = load i32, i32* @DSIM_STATE_ENABLED, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %41 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %45 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pm_runtime_put_sync(i32 %46)
  br label %48

48:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.exynos_dsi* @encoder_to_dsi(%struct.drm_encoder*) #1

declare dso_local i32 @drm_panel_disable(i32) #1

declare dso_local i32 @drm_bridge_disable(i32) #1

declare dso_local i32 @exynos_dsi_set_display_enable(%struct.exynos_dsi*, i32) #1

declare dso_local i32 @drm_panel_unprepare(i32) #1

declare dso_local i32 @drm_bridge_post_disable(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
