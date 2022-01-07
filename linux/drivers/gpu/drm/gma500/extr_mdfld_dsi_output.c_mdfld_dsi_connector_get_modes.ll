; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.mdfld_dsi_connector = type { i32 }
%struct.mdfld_dsi_config = type { %struct.drm_display_mode* }
%struct.drm_display_mode = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"fixed_mode %dx%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Didn't get any modes!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @mdfld_dsi_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdfld_dsi_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.mdfld_dsi_connector*, align 8
  %5 = alloca %struct.mdfld_dsi_config*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.drm_device*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = call %struct.mdfld_dsi_connector* @mdfld_dsi_connector(%struct.drm_connector* %9)
  store %struct.mdfld_dsi_connector* %10, %struct.mdfld_dsi_connector** %4, align 8
  %11 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %4, align 8
  %12 = call %struct.mdfld_dsi_config* @mdfld_dsi_get_config(%struct.mdfld_dsi_connector* %11)
  store %struct.mdfld_dsi_config* %12, %struct.mdfld_dsi_config** %5, align 8
  %13 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %5, align 8
  %14 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %13, i32 0, i32 0
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  store %struct.drm_display_mode* %15, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %7, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %8, align 8
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %20 = icmp ne %struct.drm_display_mode* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %34 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %32, %struct.drm_display_mode* %33)
  store %struct.drm_display_mode* %34, %struct.drm_display_mode** %7, align 8
  %35 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %37 = call i32 @drm_mode_probed_add(%struct.drm_connector* %35, %struct.drm_display_mode* %36)
  store i32 1, i32* %2, align 4
  br label %40

38:                                               ; preds = %1
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %21
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.mdfld_dsi_connector* @mdfld_dsi_connector(%struct.drm_connector*) #1

declare dso_local %struct.mdfld_dsi_config* @mdfld_dsi_get_config(%struct.mdfld_dsi_connector*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
