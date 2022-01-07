; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_check_plane_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_check_plane_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32, i64, i32, %struct.drm_rect, %struct.drm_rect, %struct.drm_framebuffer* }
%struct.drm_rect = type { i32, i32 }
%struct.drm_framebuffer = type { i32, i32 }
%struct.drm_crtc_state = type { i64, i32, i64 }

@.str = private unnamed_addr constant [41 x i8] c"Cannot update plane of a disabled CRTC.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid scaling of plane\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"src: \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dst: \00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Plane must cover entire CRTC\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"clip: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %0, %struct.drm_crtc_state* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_plane_state*, align 8
  %9 = alloca %struct.drm_crtc_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_framebuffer*, align 8
  %15 = alloca %struct.drm_rect*, align 8
  %16 = alloca %struct.drm_rect*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.drm_rect, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.drm_rect, align 4
  %22 = alloca %struct.drm_rect, align 4
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %8, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %24 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %23, i32 0, i32 5
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %24, align 8
  store %struct.drm_framebuffer* %25, %struct.drm_framebuffer** %14, align 8
  %26 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %27 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %26, i32 0, i32 4
  store %struct.drm_rect* %27, %struct.drm_rect** %15, align 8
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %28, i32 0, i32 3
  store %struct.drm_rect* %29, %struct.drm_rect** %16, align 8
  %30 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %31 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %17, align 4
  %33 = bitcast %struct.drm_rect* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 8, i1 false)
  %34 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %35 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %6
  %39 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %40 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %43 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br label %46

46:                                               ; preds = %38, %6
  %47 = phi i1 [ false, %6 ], [ %45, %38 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @WARN_ON(i32 %48)
  %50 = load %struct.drm_rect*, %struct.drm_rect** %15, align 8
  %51 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %52 = call i64 @drm_plane_state_src(%struct.drm_plane_state* %51)
  %53 = bitcast %struct.drm_rect* %21 to i64*
  store i64 %52, i64* %53, align 4
  %54 = bitcast %struct.drm_rect* %50 to i8*
  %55 = bitcast %struct.drm_rect* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 8, i1 false)
  %56 = load %struct.drm_rect*, %struct.drm_rect** %16, align 8
  %57 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %58 = call i64 @drm_plane_state_dest(%struct.drm_plane_state* %57)
  %59 = bitcast %struct.drm_rect* %22 to i64*
  store i64 %58, i64* %59, align 4
  %60 = bitcast %struct.drm_rect* %56 to i8*
  %61 = bitcast %struct.drm_rect* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 8, i1 false)
  %62 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %14, align 8
  %63 = icmp ne %struct.drm_framebuffer* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %46
  %65 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %66 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %65, i32 0, i32 2
  store i32 0, i32* %66, align 8
  store i32 0, i32* %7, align 4
  br label %176

67:                                               ; preds = %46
  %68 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %69 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @WARN_ON(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %78 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  store i32 0, i32* %7, align 4
  br label %176

79:                                               ; preds = %67
  %80 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %81 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  br label %176

91:                                               ; preds = %84, %79
  %92 = load %struct.drm_rect*, %struct.drm_rect** %15, align 8
  %93 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %14, align 8
  %94 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 16
  %97 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %14, align 8
  %98 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 16
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @drm_rect_rotate(%struct.drm_rect* %92, i32 %96, i32 %100, i32 %101)
  %103 = load %struct.drm_rect*, %struct.drm_rect** %15, align 8
  %104 = load %struct.drm_rect*, %struct.drm_rect** %16, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @drm_rect_calc_hscale(%struct.drm_rect* %103, %struct.drm_rect* %104, i32 %105, i32 %106)
  store i32 %107, i32* %19, align 4
  %108 = load %struct.drm_rect*, %struct.drm_rect** %15, align 8
  %109 = load %struct.drm_rect*, %struct.drm_rect** %16, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @drm_rect_calc_vscale(%struct.drm_rect* %108, %struct.drm_rect* %109, i32 %110, i32 %111)
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %91
  %116 = load i32, i32* %20, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115, %91
  %119 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %120 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %121 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %120, i32 0, i32 4
  %122 = call i32 @drm_rect_debug_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.drm_rect* %121, i32 1)
  %123 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %124 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %123, i32 0, i32 3
  %125 = call i32 @drm_rect_debug_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.drm_rect* %124, i32 0)
  %126 = load i32, i32* @ERANGE, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %7, align 4
  br label %176

128:                                              ; preds = %115
  %129 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %130 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %135 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %18, i32 0, i32 1
  %137 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %18, i32 0, i32 0
  %138 = call i32 @drm_mode_get_hv_timing(i32* %135, i32* %136, i32* %137)
  br label %139

139:                                              ; preds = %133, %128
  %140 = load %struct.drm_rect*, %struct.drm_rect** %15, align 8
  %141 = load %struct.drm_rect*, %struct.drm_rect** %16, align 8
  %142 = call i32 @drm_rect_clip_scaled(%struct.drm_rect* %140, %struct.drm_rect* %141, %struct.drm_rect* %18)
  %143 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %144 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.drm_rect*, %struct.drm_rect** %15, align 8
  %146 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %14, align 8
  %147 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %148, 16
  %150 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %14, align 8
  %151 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = shl i32 %152, 16
  %154 = load i32, i32* %17, align 4
  %155 = call i32 @drm_rect_rotate_inv(%struct.drm_rect* %145, i32 %149, i32 %153, i32 %154)
  %156 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %157 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %139
  store i32 0, i32* %7, align 4
  br label %176

161:                                              ; preds = %139
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %161
  %165 = load %struct.drm_rect*, %struct.drm_rect** %16, align 8
  %166 = call i32 @drm_rect_equals(%struct.drm_rect* %165, %struct.drm_rect* %18)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %164
  %169 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %170 = load %struct.drm_rect*, %struct.drm_rect** %16, align 8
  %171 = call i32 @drm_rect_debug_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.drm_rect* %170, i32 0)
  %172 = call i32 @drm_rect_debug_print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.drm_rect* %18, i32 0)
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %7, align 4
  br label %176

175:                                              ; preds = %164, %161
  store i32 0, i32* %7, align 4
  br label %176

176:                                              ; preds = %175, %168, %160, %118, %87, %76, %64
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i64 @drm_plane_state_src(%struct.drm_plane_state*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @drm_plane_state_dest(%struct.drm_plane_state*) #2

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #2

declare dso_local i32 @drm_rect_rotate(%struct.drm_rect*, i32, i32, i32) #2

declare dso_local i32 @drm_rect_calc_hscale(%struct.drm_rect*, %struct.drm_rect*, i32, i32) #2

declare dso_local i32 @drm_rect_calc_vscale(%struct.drm_rect*, %struct.drm_rect*, i32, i32) #2

declare dso_local i32 @drm_rect_debug_print(i8*, %struct.drm_rect*, i32) #2

declare dso_local i32 @drm_mode_get_hv_timing(i32*, i32*, i32*) #2

declare dso_local i32 @drm_rect_clip_scaled(%struct.drm_rect*, %struct.drm_rect*, %struct.drm_rect*) #2

declare dso_local i32 @drm_rect_rotate_inv(%struct.drm_rect*, i32, i32, i32) #2

declare dso_local i32 @drm_rect_equals(%struct.drm_rect*, %struct.drm_rect*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
