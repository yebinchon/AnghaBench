; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc_cvbs.c_meson_cvbs_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc_cvbs.c_meson_cvbs_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_cvbs_mode = type { i32 }
%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32 }

@MESON_CVBS_MODES_COUNT = common dso_local global i32 0, align 4
@meson_cvbs_modes = common dso_local global %struct.meson_cvbs_mode* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Failed to create a new display mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @meson_cvbs_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_cvbs_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.meson_cvbs_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %32, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MESON_CVBS_MODES_COUNT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load %struct.meson_cvbs_mode*, %struct.meson_cvbs_mode** @meson_cvbs_modes, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.meson_cvbs_mode, %struct.meson_cvbs_mode* %16, i64 %18
  store %struct.meson_cvbs_mode* %19, %struct.meson_cvbs_mode** %7, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = load %struct.meson_cvbs_mode*, %struct.meson_cvbs_mode** %7, align 8
  %22 = getelementptr inbounds %struct.meson_cvbs_mode, %struct.meson_cvbs_mode* %21, i32 0, i32 0
  %23 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %20, i32* %22)
  store %struct.drm_display_mode* %23, %struct.drm_display_mode** %5, align 8
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %25 = icmp ne %struct.drm_display_mode* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %37

28:                                               ; preds = %15
  %29 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = call i32 @drm_mode_probed_add(%struct.drm_connector* %29, %struct.drm_display_mode* %30)
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %26
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
