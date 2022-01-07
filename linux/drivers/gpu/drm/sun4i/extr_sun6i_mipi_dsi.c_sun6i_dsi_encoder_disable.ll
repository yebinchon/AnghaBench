; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.sun6i_dsi = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Disabling DSI output\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @sun6i_dsi_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_dsi_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.sun6i_dsi*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = call %struct.sun6i_dsi* @encoder_to_sun6i_dsi(%struct.drm_encoder* %4)
  store %struct.sun6i_dsi* %5, %struct.sun6i_dsi** %3, align 8
  %6 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %8 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @IS_ERR(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %14 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @drm_panel_disable(i32 %15)
  %17 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %18 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @drm_panel_unprepare(i32 %19)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %23 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @phy_power_off(i32 %24)
  %26 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %27 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @phy_exit(i32 %28)
  %30 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %31 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pm_runtime_put(i32 %32)
  ret void
}

declare dso_local %struct.sun6i_dsi* @encoder_to_sun6i_dsi(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @drm_panel_disable(i32) #1

declare dso_local i32 @drm_panel_unprepare(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
