; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_update_state_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_update_state_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.intel_plane_state = type { i32, %struct.TYPE_21__*, %struct.TYPE_18__, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_12__, i32, i32, %struct.drm_framebuffer* }
%struct.TYPE_12__ = type { i32 }
%struct.drm_framebuffer = type { i32*, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.drm_i915_private = type { %struct.intel_fbc }
%struct.intel_fbc = type { %struct.intel_fbc_state_cache }
%struct.intel_fbc_state_cache = type { i32, %struct.TYPE_21__*, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@PLANE_HAS_FENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_plane_state*)* @intel_fbc_update_state_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_fbc_update_state_cache(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1, %struct.intel_plane_state* %2) #0 {
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_fbc*, align 8
  %9 = alloca %struct.intel_fbc_state_cache*, align 8
  %10 = alloca %struct.drm_framebuffer*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.intel_plane_state* %2, %struct.intel_plane_state** %6, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %7, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  store %struct.intel_fbc* %17, %struct.intel_fbc** %8, align 8
  %18 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %19 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %18, i32 0, i32 0
  store %struct.intel_fbc_state_cache* %19, %struct.intel_fbc_state_cache** %9, align 8
  %20 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %21 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 4
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %22, align 8
  store %struct.drm_framebuffer* %23, %struct.drm_framebuffer** %10, align 8
  %24 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %25 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %24, i32 0, i32 1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %25, align 8
  %26 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %27 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %29 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %34 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %37 = call i64 @IS_HASWELL(%struct.drm_i915_private* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %3
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %41 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39, %3
  %44 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %45 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %48 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  br label %50

50:                                               ; preds = %43, %39
  %51 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %52 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %56 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 7
  store i32 %54, i32* %57, align 4
  %58 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %59 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = call i32 @drm_rect_width(%struct.TYPE_12__* %60)
  %62 = ashr i32 %61, 16
  %63 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %64 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %67 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = call i32 @drm_rect_height(%struct.TYPE_12__* %68)
  %70 = ashr i32 %69, 16
  %71 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %72 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %75 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %79 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  %81 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %82 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %81, i32 0, i32 3
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %88 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 6
  store i32 %86, i32* %89, align 8
  %90 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %91 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %90, i32 0, i32 3
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %97 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 5
  store i32 %95, i32* %98, align 4
  %99 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %100 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 16
  %105 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %106 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 8
  %108 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %109 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %113 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 4
  store i32 %111, i32* %114, align 8
  %115 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %116 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %50
  br label %172

121:                                              ; preds = %50
  %122 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %123 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %126 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  %128 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %129 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %134 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  %136 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %137 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %136, i32 0, i32 1
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  %139 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %140 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %139, i32 0, i32 1
  store %struct.TYPE_21__* %138, %struct.TYPE_21__** %140, align 8
  %141 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %142 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %145 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %147 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @PLANE_HAS_FENCE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %121
  %153 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %154 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %153, i32 0, i32 1
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  br label %160

160:                                              ; preds = %152, %121
  %161 = phi i1 [ false, %121 ], [ %159, %152 ]
  %162 = zext i1 %161 to i32
  %163 = call i64 @WARN_ON(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load i32, i32* @PLANE_HAS_FENCE, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %9, align 8
  %169 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %120, %165, %160
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_12__*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_12__*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
