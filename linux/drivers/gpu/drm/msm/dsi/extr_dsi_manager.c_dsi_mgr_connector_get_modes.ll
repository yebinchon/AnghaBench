; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_dsi_mgr_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_dsi_mgr_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.msm_dsi = type { %struct.drm_panel* }
%struct.drm_panel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @dsi_mgr_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_mgr_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_dsi*, align 8
  %6 = alloca %struct.drm_panel*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = call i32 @dsi_mgr_connector_get_id(%struct.drm_connector* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.msm_dsi* @dsi_mgr_get_dsi(i32 %10)
  store %struct.msm_dsi* %11, %struct.msm_dsi** %5, align 8
  %12 = load %struct.msm_dsi*, %struct.msm_dsi** %5, align 8
  %13 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %12, i32 0, i32 0
  %14 = load %struct.drm_panel*, %struct.drm_panel** %13, align 8
  store %struct.drm_panel* %14, %struct.drm_panel** %6, align 8
  %15 = load %struct.drm_panel*, %struct.drm_panel** %6, align 8
  %16 = icmp ne %struct.drm_panel* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.drm_panel*, %struct.drm_panel** %6, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %21 = call i32 @drm_panel_attach(%struct.drm_panel* %19, %struct.drm_connector* %20)
  %22 = load %struct.drm_panel*, %struct.drm_panel** %6, align 8
  %23 = call i32 @drm_panel_get_modes(%struct.drm_panel* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %26, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @dsi_mgr_connector_get_id(%struct.drm_connector*) #1

declare dso_local %struct.msm_dsi* @dsi_mgr_get_dsi(i32) #1

declare dso_local i32 @drm_panel_attach(%struct.drm_panel*, %struct.drm_connector*) #1

declare dso_local i32 @drm_panel_get_modes(%struct.drm_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
