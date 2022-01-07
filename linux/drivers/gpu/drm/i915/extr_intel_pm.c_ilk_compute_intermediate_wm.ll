; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_compute_intermediate_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_compute_intermediate_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.intel_pipe_wm, %struct.intel_pipe_wm }
%struct.intel_pipe_wm = type { %struct.intel_wm_level*, i32, i32, i32 }
%struct.intel_wm_level = type { i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.intel_crtc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_atomic_state = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*)* @ilk_compute_intermediate_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilk_compute_intermediate_wm(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_pipe_wm*, align 8
  %7 = alloca %struct.intel_atomic_state*, align 8
  %8 = alloca %struct.intel_crtc_state*, align 8
  %9 = alloca %struct.intel_pipe_wm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_wm_level*, align 8
  %13 = alloca %struct.intel_wm_level*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.intel_crtc* @to_intel_crtc(i32 %17)
  store %struct.intel_crtc* %18, %struct.intel_crtc** %4, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.drm_i915_private* @to_i915(i32 %22)
  store %struct.drm_i915_private* %23, %struct.drm_i915_private** %5, align 8
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store %struct.intel_pipe_wm* %27, %struct.intel_pipe_wm** %6, align 8
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %29 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.intel_atomic_state* @to_intel_atomic_state(i32 %31)
  store %struct.intel_atomic_state* %32, %struct.intel_atomic_state** %7, align 8
  %33 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %7, align 8
  %34 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %35 = call %struct.intel_crtc_state* @intel_atomic_get_old_crtc_state(%struct.intel_atomic_state* %33, %struct.intel_crtc* %34)
  store %struct.intel_crtc_state* %35, %struct.intel_crtc_state** %8, align 8
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %37 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store %struct.intel_pipe_wm* %39, %struct.intel_pipe_wm** %9, align 8
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %41 = call i32 @ilk_wm_max_level(%struct.drm_i915_private* %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %6, align 8
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %44 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = bitcast %struct.intel_pipe_wm* %42 to i8*
  %48 = bitcast %struct.intel_pipe_wm* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 24, i1 false)
  %49 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %50 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %1
  %55 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %56 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %55, i32 0, i32 1
  %57 = call i64 @drm_atomic_crtc_needs_modeset(%struct.TYPE_8__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %7, align 8
  %61 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %54, %1
  store i32 0, i32* %2, align 4
  br label %171

65:                                               ; preds = %59
  %66 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %9, align 8
  %67 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %6, align 8
  %70 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %9, align 8
  %74 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %6, align 8
  %77 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %9, align 8
  %81 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %6, align 8
  %84 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %147, %65
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %150

91:                                               ; preds = %87
  %92 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %6, align 8
  %93 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %92, i32 0, i32 0
  %94 = load %struct.intel_wm_level*, %struct.intel_wm_level** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %94, i64 %96
  store %struct.intel_wm_level* %97, %struct.intel_wm_level** %12, align 8
  %98 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %9, align 8
  %99 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %98, i32 0, i32 0
  %100 = load %struct.intel_wm_level*, %struct.intel_wm_level** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %100, i64 %102
  store %struct.intel_wm_level* %103, %struct.intel_wm_level** %13, align 8
  %104 = load %struct.intel_wm_level*, %struct.intel_wm_level** %13, align 8
  %105 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.intel_wm_level*, %struct.intel_wm_level** %12, align 8
  %108 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.intel_wm_level*, %struct.intel_wm_level** %12, align 8
  %112 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.intel_wm_level*, %struct.intel_wm_level** %13, align 8
  %115 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @max(i8* %113, i8* %116)
  %118 = load %struct.intel_wm_level*, %struct.intel_wm_level** %12, align 8
  %119 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  %120 = load %struct.intel_wm_level*, %struct.intel_wm_level** %12, align 8
  %121 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.intel_wm_level*, %struct.intel_wm_level** %13, align 8
  %124 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = call i8* @max(i8* %122, i8* %125)
  %127 = load %struct.intel_wm_level*, %struct.intel_wm_level** %12, align 8
  %128 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load %struct.intel_wm_level*, %struct.intel_wm_level** %12, align 8
  %130 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.intel_wm_level*, %struct.intel_wm_level** %13, align 8
  %133 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @max(i8* %131, i8* %134)
  %136 = load %struct.intel_wm_level*, %struct.intel_wm_level** %12, align 8
  %137 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load %struct.intel_wm_level*, %struct.intel_wm_level** %12, align 8
  %139 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.intel_wm_level*, %struct.intel_wm_level** %13, align 8
  %142 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i8* @max(i8* %140, i8* %143)
  %145 = load %struct.intel_wm_level*, %struct.intel_wm_level** %12, align 8
  %146 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %91
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %87

150:                                              ; preds = %87
  %151 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %152 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %6, align 8
  %153 = call i32 @ilk_validate_pipe_wm(%struct.drm_i915_private* %151, %struct.intel_pipe_wm* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %2, align 4
  br label %171

158:                                              ; preds = %150
  %159 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %6, align 8
  %160 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %161 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = call i64 @memcmp(%struct.intel_pipe_wm* %159, %struct.intel_pipe_wm* %163, i32 24)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %158
  %167 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %168 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  br label %170

170:                                              ; preds = %166, %158
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %155, %64
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_atomic_state* @to_intel_atomic_state(i32) #1

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_old_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local i32 @ilk_wm_max_level(%struct.drm_i915_private*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @drm_atomic_crtc_needs_modeset(%struct.TYPE_8__*) #1

declare dso_local i8* @max(i8*, i8*) #1

declare dso_local i32 @ilk_validate_pipe_wm(%struct.drm_i915_private*, %struct.intel_pipe_wm*) #1

declare dso_local i64 @memcmp(%struct.intel_pipe_wm*, %struct.intel_pipe_wm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
