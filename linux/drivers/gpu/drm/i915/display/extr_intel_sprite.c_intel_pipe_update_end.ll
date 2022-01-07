; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_pipe_update_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_pipe_update_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [108 x i8] c"Atomic update failure on pipe %c (start=%u end=%u) time %lld us, min %d, max %d, scanline start %d, end %d\0A\00", align 1
@VBLANK_EVASION_TIME_US = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pipe_update_end(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %9 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %10 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.intel_crtc* @to_intel_crtc(i32 %12)
  store %struct.intel_crtc* %13, %struct.intel_crtc** %3, align 8
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %18 = call i32 @intel_get_crtc_scanline(%struct.intel_crtc* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %20 = call i64 @intel_crtc_get_vblank_counter(%struct.intel_crtc* %19)
  store i64 %20, i64* %6, align 8
  %21 = call i32 (...) @ktime_get()
  store i32 %21, i32* %7, align 4
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = call %struct.drm_i915_private* @to_i915(%struct.TYPE_8__* %25)
  store %struct.drm_i915_private* %26, %struct.drm_i915_private** %8, align 8
  %27 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @trace_i915_pipe_update_end(%struct.intel_crtc* %27, i64 %28, i32 %29)
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %32 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %65

36:                                               ; preds = %1
  %37 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %38 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %37, i32 0, i32 2
  %39 = call i64 @drm_crtc_vblank_get(%struct.TYPE_9__* %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %44 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %50 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %49, i32 0, i32 2
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %52 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @drm_crtc_arm_vblank_event(%struct.TYPE_9__* %50, i32* %54)
  %56 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %57 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %63 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %36, %1
  %66 = call i32 (...) @local_irq_enable()
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %68 = call i64 @intel_vgpu_active(%struct.drm_i915_private* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %112

71:                                               ; preds = %65
  %72 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %73 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %71
  %78 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %79 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %112

84:                                               ; preds = %77
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @pipe_name(i32 %85)
  %87 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %88 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %94 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @ktime_us_delta(i32 %92, i32 %96)
  %98 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %99 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %103 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %107 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0), i32 %86, i64 %90, i64 %91, i64 %97, i32 %101, i32 %105, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %70, %84, %77, %71
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @intel_get_crtc_scanline(%struct.intel_crtc*) #1

declare dso_local i64 @intel_crtc_get_vblank_counter(%struct.intel_crtc*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local %struct.drm_i915_private* @to_i915(%struct.TYPE_8__*) #1

declare dso_local i32 @trace_i915_pipe_update_end(%struct.intel_crtc*, i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @drm_crtc_vblank_get(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_crtc_arm_vblank_event(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i64 @intel_vgpu_active(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
