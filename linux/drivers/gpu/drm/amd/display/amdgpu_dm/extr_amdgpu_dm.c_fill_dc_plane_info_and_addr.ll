; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_dc_plane_info_and_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_dc_plane_info_and_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.drm_plane_state = type { i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dc_plane_info = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i64, i32 }
%struct.dc_plane_address = type { i32 }
%struct.amdgpu_framebuffer = type { i32 }
%struct.drm_format_name_buf = type { i32 }

@SURFACE_PIXEL_FORMAT_GRPH_PALETA_256_COLORS = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT_GRPH_RGB565 = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT_GRPH_ARGB8888 = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT_GRPH_ARGB2101010 = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT_GRPH_ABGR2101010 = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT_GRPH_ABGR8888 = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT_VIDEO_420_YCbCr = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT_VIDEO_420_YCrCb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported screen format %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_MASK = common dso_local global i32 0, align 4
@ROTATION_ANGLE_0 = common dso_local global i8* null, align 8
@ROTATION_ANGLE_90 = common dso_local global i8* null, align 8
@ROTATION_ANGLE_180 = common dso_local global i8* null, align 8
@ROTATION_ANGLE_270 = common dso_local global i8* null, align 8
@PLANE_STEREO_FORMAT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.drm_plane_state*, i32, %struct.dc_plane_info*, %struct.dc_plane_address*)* @fill_dc_plane_info_and_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_dc_plane_info_and_addr(%struct.amdgpu_device* %0, %struct.drm_plane_state* %1, i32 %2, %struct.dc_plane_info* %3, %struct.dc_plane_address* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.drm_plane_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dc_plane_info*, align 8
  %11 = alloca %struct.dc_plane_address*, align 8
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca %struct.amdgpu_framebuffer*, align 8
  %14 = alloca %struct.drm_format_name_buf, align 4
  %15 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dc_plane_info* %3, %struct.dc_plane_info** %10, align 8
  store %struct.dc_plane_address* %4, %struct.dc_plane_address** %11, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 1
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  store %struct.drm_framebuffer* %18, %struct.drm_framebuffer** %12, align 8
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %20 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %19, i32 0, i32 1
  %21 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  %22 = call %struct.amdgpu_framebuffer* @to_amdgpu_framebuffer(%struct.drm_framebuffer* %21)
  store %struct.amdgpu_framebuffer* %22, %struct.amdgpu_framebuffer** %13, align 8
  %23 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %24 = call i32 @memset(%struct.dc_plane_info* %23, i32 0, i32 64)
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %26 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %62 [
    i32 139, label %30
    i32 136, label %34
    i32 132, label %38
    i32 140, label %38
    i32 133, label %42
    i32 141, label %42
    i32 135, label %46
    i32 143, label %46
    i32 134, label %50
    i32 142, label %50
    i32 137, label %54
    i32 138, label %58
  ]

30:                                               ; preds = %5
  %31 = load i32, i32* @SURFACE_PIXEL_FORMAT_GRPH_PALETA_256_COLORS, align 4
  %32 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %33 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  br label %72

34:                                               ; preds = %5
  %35 = load i32, i32* @SURFACE_PIXEL_FORMAT_GRPH_RGB565, align 4
  %36 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %37 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 8
  br label %72

38:                                               ; preds = %5, %5
  %39 = load i32, i32* @SURFACE_PIXEL_FORMAT_GRPH_ARGB8888, align 4
  %40 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %41 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 8
  br label %72

42:                                               ; preds = %5, %5
  %43 = load i32, i32* @SURFACE_PIXEL_FORMAT_GRPH_ARGB2101010, align 4
  %44 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %45 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  br label %72

46:                                               ; preds = %5, %5
  %47 = load i32, i32* @SURFACE_PIXEL_FORMAT_GRPH_ABGR2101010, align 4
  %48 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %49 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 8
  br label %72

50:                                               ; preds = %5, %5
  %51 = load i32, i32* @SURFACE_PIXEL_FORMAT_GRPH_ABGR8888, align 4
  %52 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %53 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 8
  br label %72

54:                                               ; preds = %5
  %55 = load i32, i32* @SURFACE_PIXEL_FORMAT_VIDEO_420_YCbCr, align 4
  %56 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %57 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 8
  br label %72

58:                                               ; preds = %5
  %59 = load i32, i32* @SURFACE_PIXEL_FORMAT_VIDEO_420_YCrCb, align 4
  %60 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %61 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 8
  br label %72

62:                                               ; preds = %5
  %63 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %64 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @drm_get_format_name(i32 %67, %struct.drm_format_name_buf* %14)
  %69 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %148

72:                                               ; preds = %58, %54, %50, %46, %42, %38, %34, %30
  %73 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %74 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %77 = and i32 %75, %76
  switch i32 %77, label %94 [
    i32 131, label %78
    i32 128, label %82
    i32 130, label %86
    i32 129, label %90
  ]

78:                                               ; preds = %72
  %79 = load i8*, i8** @ROTATION_ANGLE_0, align 8
  %80 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %81 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %80, i32 0, i32 7
  store i8* %79, i8** %81, align 8
  br label %98

82:                                               ; preds = %72
  %83 = load i8*, i8** @ROTATION_ANGLE_90, align 8
  %84 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %85 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %84, i32 0, i32 7
  store i8* %83, i8** %85, align 8
  br label %98

86:                                               ; preds = %72
  %87 = load i8*, i8** @ROTATION_ANGLE_180, align 8
  %88 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %89 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %88, i32 0, i32 7
  store i8* %87, i8** %89, align 8
  br label %98

90:                                               ; preds = %72
  %91 = load i8*, i8** @ROTATION_ANGLE_270, align 8
  %92 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %93 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %92, i32 0, i32 7
  store i8* %91, i8** %93, align 8
  br label %98

94:                                               ; preds = %72
  %95 = load i8*, i8** @ROTATION_ANGLE_0, align 8
  %96 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %97 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %96, i32 0, i32 7
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %94, %90, %86, %82, %78
  %99 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %100 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load i32, i32* @PLANE_STEREO_FORMAT_NONE, align 4
  %102 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %103 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %102, i32 0, i32 11
  store i32 %101, i32* %103, align 8
  %104 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %105 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %104, i32 0, i32 10
  store i64 0, i64* %105, align 8
  %106 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %107 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %108 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %111 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %110, i32 0, i32 9
  %112 = call i32 @fill_plane_color_attributes(%struct.drm_plane_state* %106, i32 %109, i32* %111)
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %98
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %6, align 4
  br label %148

117:                                              ; preds = %98
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %119 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %13, align 8
  %120 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %121 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %124 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %123, i32 0, i32 7
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %128 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %127, i32 0, i32 6
  %129 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %130 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %129, i32 0, i32 5
  %131 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %132 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %131, i32 0, i32 4
  %133 = load %struct.dc_plane_address*, %struct.dc_plane_address** %11, align 8
  %134 = call i32 @fill_plane_buffer_attributes(%struct.amdgpu_device* %118, %struct.amdgpu_framebuffer* %119, i32 %122, i8* %125, i32 %126, i32* %128, i32* %130, i32* %132, %struct.dc_plane_address* %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %117
  %138 = load i32, i32* %15, align 4
  store i32 %138, i32* %6, align 4
  br label %148

139:                                              ; preds = %117
  %140 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %141 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %142 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %141, i32 0, i32 3
  %143 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %144 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %143, i32 0, i32 2
  %145 = load %struct.dc_plane_info*, %struct.dc_plane_info** %10, align 8
  %146 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %145, i32 0, i32 1
  %147 = call i32 @fill_blending_from_plane_state(%struct.drm_plane_state* %140, i32* %142, i32* %144, i32* %146)
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %139, %137, %115, %62
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local %struct.amdgpu_framebuffer* @to_amdgpu_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @memset(%struct.dc_plane_info*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

declare dso_local i32 @fill_plane_color_attributes(%struct.drm_plane_state*, i32, i32*) #1

declare dso_local i32 @fill_plane_buffer_attributes(%struct.amdgpu_device*, %struct.amdgpu_framebuffer*, i32, i8*, i32, i32*, i32*, i32*, %struct.dc_plane_address*) #1

declare dso_local i32 @fill_blending_from_plane_state(%struct.drm_plane_state*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
