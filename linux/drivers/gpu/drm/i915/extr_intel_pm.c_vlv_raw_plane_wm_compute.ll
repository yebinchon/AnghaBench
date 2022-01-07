; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_raw_plane_wm_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_raw_plane_wm_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.g4x_pipe_wm* }
%struct.g4x_pipe_wm = type { i32* }
%struct.intel_plane_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.intel_plane = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@PLANE_CURSOR = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s watermarks: PM2=%d, PM5=%d, DDR DVFS=%d\0A\00", align 1
@VLV_WM_LEVEL_PM2 = common dso_local global i64 0, align 8
@VLV_WM_LEVEL_PM5 = common dso_local global i64 0, align 8
@VLV_WM_LEVEL_DDR_DVFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_plane_state*)* @vlv_raw_plane_wm_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_raw_plane_wm_compute(%struct.intel_crtc_state* %0, %struct.intel_plane_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.intel_plane_state*, align 8
  %5 = alloca %struct.intel_plane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.g4x_pipe_wm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.intel_plane_state* %1, %struct.intel_plane_state** %4, align 8
  %13 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %14 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.intel_plane* @to_intel_plane(i32 %16)
  store %struct.intel_plane* %17, %struct.intel_plane** %5, align 8
  %18 = load %struct.intel_plane*, %struct.intel_plane** %5, align 8
  %19 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.intel_plane*, %struct.intel_plane** %5, align 8
  %22 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @to_i915(i32 %24)
  %26 = call i32 @intel_wm_num_levels(i32 %25)
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %28 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %29 = call i32 @intel_wm_plane_visible(%struct.intel_crtc_state* %27, %struct.intel_plane_state* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @vlv_raw_plane_wm_set(%struct.intel_crtc_state* %32, i32 0, i32 %33, i32 0)
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %95

37:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %84, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %87

42:                                               ; preds = %38
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %44 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %47, i64 %49
  store %struct.g4x_pipe_wm* %50, %struct.g4x_pipe_wm** %10, align 8
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %52 = load %struct.intel_plane_state*, %struct.intel_plane_state** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @vlv_compute_wm_level(%struct.intel_crtc_state* %51, %struct.intel_plane_state* %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PLANE_CURSOR, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 63, i32 511
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %42
  br label %87

64:                                               ; preds = %42
  %65 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %10, align 8
  %66 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %10, align 8
  %79 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  br label %84

84:                                               ; preds = %64
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %38

87:                                               ; preds = %63, %38
  %88 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @USHRT_MAX, align 4
  %92 = call i32 @vlv_raw_plane_wm_set(%struct.intel_crtc_state* %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %87, %31
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %143

98:                                               ; preds = %95
  %99 = load %struct.intel_plane*, %struct.intel_plane** %5, align 8
  %100 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %104 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %106, align 8
  %108 = load i64, i64* @VLV_WM_LEVEL_PM2, align 8
  %109 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %107, i64 %108
  %110 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %117 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %119, align 8
  %121 = load i64, i64* @VLV_WM_LEVEL_PM5, align 8
  %122 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %120, i64 %121
  %123 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %130 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load %struct.g4x_pipe_wm*, %struct.g4x_pipe_wm** %132, align 8
  %134 = load i64, i64* @VLV_WM_LEVEL_DDR_DVFS, align 8
  %135 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %133, i64 %134
  %136 = getelementptr inbounds %struct.g4x_pipe_wm, %struct.g4x_pipe_wm* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %115, i32 %128, i32 %141)
  br label %143

143:                                              ; preds = %98, %95
  %144 = load i32, i32* %9, align 4
  ret i32 %144
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local i32 @intel_wm_num_levels(i32) #1

declare dso_local i32 @to_i915(i32) #1

declare dso_local i32 @intel_wm_plane_visible(%struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @vlv_raw_plane_wm_set(%struct.intel_crtc_state*, i32, i32, i32) #1

declare dso_local i32 @vlv_compute_wm_level(%struct.intel_crtc_state*, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
