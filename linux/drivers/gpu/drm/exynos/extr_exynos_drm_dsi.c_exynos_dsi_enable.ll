; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.exynos_dsi = type { i32, i32, i64, i32 }

@DSIM_STATE_ENABLED = common dso_local global i32 0, align 4
@DSIM_STATE_VIDOUT_AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @exynos_dsi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_dsi_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.exynos_dsi*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = call %struct.exynos_dsi* @encoder_to_dsi(%struct.drm_encoder* %5)
  store %struct.exynos_dsi* %6, %struct.exynos_dsi** %3, align 8
  %7 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %8 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @DSIM_STATE_ENABLED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %89

14:                                               ; preds = %1
  %15 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %16 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  %19 = load i32, i32* @DSIM_STATE_ENABLED, align 4
  %20 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %21 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %25 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %14
  %29 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %30 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @drm_panel_prepare(i64 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %78

36:                                               ; preds = %28
  br label %42

37:                                               ; preds = %14
  %38 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %39 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @drm_bridge_pre_enable(i32 %40)
  br label %42

42:                                               ; preds = %37, %36
  %43 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %44 = call i32 @exynos_dsi_set_display_mode(%struct.exynos_dsi* %43)
  %45 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %46 = call i32 @exynos_dsi_set_display_enable(%struct.exynos_dsi* %45, i32 1)
  %47 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %48 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %53 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @drm_panel_enable(i64 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %71

59:                                               ; preds = %51
  br label %65

60:                                               ; preds = %42
  %61 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %62 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @drm_bridge_enable(i32 %63)
  br label %65

65:                                               ; preds = %60, %59
  %66 = load i32, i32* @DSIM_STATE_VIDOUT_AVAILABLE, align 4
  %67 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %68 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %89

71:                                               ; preds = %58
  %72 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %73 = call i32 @exynos_dsi_set_display_enable(%struct.exynos_dsi* %72, i32 0)
  %74 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %75 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @drm_panel_unprepare(i64 %76)
  br label %78

78:                                               ; preds = %71, %35
  %79 = load i32, i32* @DSIM_STATE_ENABLED, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %82 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %86 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pm_runtime_put(i32 %87)
  br label %89

89:                                               ; preds = %78, %65, %13
  ret void
}

declare dso_local %struct.exynos_dsi* @encoder_to_dsi(%struct.drm_encoder*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @drm_panel_prepare(i64) #1

declare dso_local i32 @drm_bridge_pre_enable(i32) #1

declare dso_local i32 @exynos_dsi_set_display_mode(%struct.exynos_dsi*) #1

declare dso_local i32 @exynos_dsi_set_display_enable(%struct.exynos_dsi*, i32) #1

declare dso_local i32 @drm_panel_enable(i64) #1

declare dso_local i32 @drm_bridge_enable(i32) #1

declare dso_local i32 @drm_panel_unprepare(i64) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
