; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_plane_color_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_plane_color_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i64, i32 }

@COLOR_SPACE_SRGB = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT_VIDEO_BEGIN = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_FULL_RANGE = common dso_local global i64 0, align 8
@COLOR_SPACE_YCBCR601 = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR601_LIMITED = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR709 = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR709_LIMITED = common dso_local global i32 0, align 4
@COLOR_SPACE_2020_YCBCR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane_state*, i32, i32*)* @fill_plane_color_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_plane_color_attributes(%struct.drm_plane_state* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @COLOR_SPACE_SRGB, align 4
  %10 = load i32*, i32** %7, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SURFACE_PIXEL_FORMAT_VIDEO_BEGIN, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

15:                                               ; preds = %3
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DRM_COLOR_YCBCR_FULL_RANGE, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %55 [
    i32 129, label %25
    i32 128, label %35
    i32 130, label %45
  ]

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @COLOR_SPACE_YCBCR601, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @COLOR_SPACE_YCBCR601_LIMITED, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %58

35:                                               ; preds = %15
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @COLOR_SPACE_YCBCR709, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @COLOR_SPACE_YCBCR709_LIMITED, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  br label %58

45:                                               ; preds = %15
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @COLOR_SPACE_2020_YCBCR, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %59

54:                                               ; preds = %48
  br label %58

55:                                               ; preds = %15
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %54, %44, %34
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %55, %51, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
