; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.truly_nt35597 = type { i32, %struct.nt35597_config* }
%struct.nt35597_config = type { i32, i32, i32 }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to create a new display mode\0A\00", align 1
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @truly_nt35597_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truly_nt35597_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.truly_nt35597*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.nt35597_config*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %8 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %9 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %8, i32 0, i32 0
  %10 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  store %struct.drm_connector* %10, %struct.drm_connector** %4, align 8
  %11 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %12 = call %struct.truly_nt35597* @panel_to_ctx(%struct.drm_panel* %11)
  store %struct.truly_nt35597* %12, %struct.truly_nt35597** %5, align 8
  %13 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %14 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %13, i32 0, i32 1
  %15 = load %struct.nt35597_config*, %struct.nt35597_config** %14, align 8
  store %struct.nt35597_config* %15, %struct.nt35597_config** %7, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_display_mode* @drm_mode_create(i32 %18)
  store %struct.drm_display_mode* %19, %struct.drm_display_mode** %6, align 8
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %21 = icmp ne %struct.drm_display_mode* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %24 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @DRM_DEV_ERROR(i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %53

27:                                               ; preds = %1
  %28 = load %struct.nt35597_config*, %struct.nt35597_config** %7, align 8
  %29 = getelementptr inbounds %struct.nt35597_config, %struct.nt35597_config* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %32 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.nt35597_config*, %struct.nt35597_config** %7, align 8
  %35 = getelementptr inbounds %struct.nt35597_config, %struct.nt35597_config* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %38 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %41 = load %struct.nt35597_config*, %struct.nt35597_config** %7, align 8
  %42 = getelementptr inbounds %struct.nt35597_config, %struct.nt35597_config* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @drm_mode_copy(%struct.drm_display_mode* %40, i32 %43)
  %45 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %46 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %52 = call i32 @drm_mode_probed_add(%struct.drm_connector* %50, %struct.drm_display_mode* %51)
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %27, %22
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.truly_nt35597* @panel_to_ctx(%struct.drm_panel*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @drm_mode_copy(%struct.drm_display_mode*, i32) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
