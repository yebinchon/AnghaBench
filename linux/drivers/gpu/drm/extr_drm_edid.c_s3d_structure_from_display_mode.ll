; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_s3d_structure_from_display_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_s3d_structure_from_display_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32 }

@DRM_MODE_FLAG_3D_MASK = common dso_local global i32 0, align 4
@HDMI_3D_STRUCTURE_FRAME_PACKING = common dso_local global i32 0, align 4
@HDMI_3D_STRUCTURE_FIELD_ALTERNATIVE = common dso_local global i32 0, align 4
@HDMI_3D_STRUCTURE_LINE_ALTERNATIVE = common dso_local global i32 0, align 4
@HDMI_3D_STRUCTURE_SIDE_BY_SIDE_FULL = common dso_local global i32 0, align 4
@HDMI_3D_STRUCTURE_L_DEPTH = common dso_local global i32 0, align 4
@HDMI_3D_STRUCTURE_L_DEPTH_GFX_GFX_DEPTH = common dso_local global i32 0, align 4
@HDMI_3D_STRUCTURE_TOP_AND_BOTTOM = common dso_local global i32 0, align 4
@HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF = common dso_local global i32 0, align 4
@HDMI_3D_STRUCTURE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_display_mode*)* @s3d_structure_from_display_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3d_structure_from_display_mode(%struct.drm_display_mode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  %5 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %6 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DRM_MODE_FLAG_3D_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %27 [
    i32 134, label %11
    i32 135, label %13
    i32 133, label %15
    i32 130, label %17
    i32 132, label %19
    i32 131, label %21
    i32 128, label %23
    i32 129, label %25
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @HDMI_3D_STRUCTURE_FRAME_PACKING, align 4
  store i32 %12, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load i32, i32* @HDMI_3D_STRUCTURE_FIELD_ALTERNATIVE, align 4
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  %16 = load i32, i32* @HDMI_3D_STRUCTURE_LINE_ALTERNATIVE, align 4
  store i32 %16, i32* %2, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load i32, i32* @HDMI_3D_STRUCTURE_SIDE_BY_SIDE_FULL, align 4
  store i32 %18, i32* %2, align 4
  br label %29

19:                                               ; preds = %1
  %20 = load i32, i32* @HDMI_3D_STRUCTURE_L_DEPTH, align 4
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %1
  %22 = load i32, i32* @HDMI_3D_STRUCTURE_L_DEPTH_GFX_GFX_DEPTH, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @HDMI_3D_STRUCTURE_TOP_AND_BOTTOM, align 4
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @HDMI_3D_STRUCTURE_INVALID, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %25, %23, %21, %19, %17, %15, %13, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
