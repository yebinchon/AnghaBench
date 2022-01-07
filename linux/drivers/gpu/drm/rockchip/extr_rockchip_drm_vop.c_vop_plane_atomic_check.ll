; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32, %struct.TYPE_5__, i32, i32, %struct.drm_framebuffer*, %struct.drm_crtc* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_framebuffer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.vop_win = type { %struct.vop_win_data* }
%struct.vop_win_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Invalid Source: Yuv format not support odd xpos\0A\00", align 1
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Invalid Source: Yuv format does not support this rotation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @vop_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.vop_win*, align 8
  %10 = alloca %struct.vop_win_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %15 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 5
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  store %struct.drm_crtc* %16, %struct.drm_crtc** %6, align 8
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %18 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 4
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  store %struct.drm_framebuffer* %19, %struct.drm_framebuffer** %8, align 8
  %20 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %21 = call %struct.vop_win* @to_vop_win(%struct.drm_plane* %20)
  store %struct.vop_win* %21, %struct.vop_win** %9, align 8
  %22 = load %struct.vop_win*, %struct.vop_win** %9, align 8
  %23 = getelementptr inbounds %struct.vop_win, %struct.vop_win* %22, i32 0, i32 0
  %24 = load %struct.vop_win_data*, %struct.vop_win_data** %23, align 8
  store %struct.vop_win_data* %24, %struct.vop_win_data** %10, align 8
  %25 = load %struct.vop_win_data*, %struct.vop_win_data** %10, align 8
  %26 = getelementptr inbounds %struct.vop_win_data, %struct.vop_win_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 @FRAC_16_16(i32 1, i32 8)
  br label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %12, align 4
  %37 = load %struct.vop_win_data*, %struct.vop_win_data** %10, align 8
  %38 = getelementptr inbounds %struct.vop_win_data, %struct.vop_win_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 @FRAC_16_16(i32 8, i32 1)
  br label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %13, align 4
  %49 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %50 = icmp ne %struct.drm_crtc* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %53 = icmp ne %struct.drm_framebuffer* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51, %47
  store i32 0, i32* %3, align 4
  br label %135

55:                                               ; preds = %51
  %56 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %57 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %60 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32 %58, %struct.drm_crtc* %59)
  store %struct.drm_crtc_state* %60, %struct.drm_crtc_state** %7, align 8
  %61 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %62 = icmp ne %struct.drm_crtc_state* %61, null
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i64 @WARN_ON(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %135

70:                                               ; preds = %55
  %71 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %72 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %71, %struct.drm_crtc_state* %72, i32 %73, i32 %74, i32 1, i32 1)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  br label %135

80:                                               ; preds = %70
  %81 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %82 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %135

86:                                               ; preds = %80
  %87 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %88 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @vop_convert_format(i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %3, align 4
  br label %135

97:                                               ; preds = %86
  %98 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %99 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %97
  %105 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %106 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 16
  %110 = srem i32 %109, 2
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %135

116:                                              ; preds = %104, %97
  %117 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %118 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %116
  %124 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %125 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %135

134:                                              ; preds = %123, %116
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %130, %112, %95, %85, %78, %67, %54
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.vop_win* @to_vop_win(%struct.drm_plane*) #1

declare dso_local i32 @FRAC_16_16(i32, i32) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32, %struct.drm_crtc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state*, %struct.drm_crtc_state*, i32, i32, i32, i32) #1

declare dso_local i32 @vop_convert_format(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
