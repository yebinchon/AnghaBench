; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_encoder_current_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_encoder_current_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.intel_encoder = type { i32 (%struct.intel_encoder*, %struct.intel_crtc_state*)*, i32 (%struct.intel_encoder*, i32*)*, %struct.TYPE_6__ }
%struct.intel_crtc_state = type opaque
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.intel_crtc*, %struct.intel_crtc_state.0*)* }
%struct.intel_crtc = type { i32 }
%struct.intel_crtc_state.0 = type { %struct.TYPE_4__ }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_display_mode* @intel_encoder_current_mode(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.drm_display_mode*, align 8
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_crtc_state.0*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %4, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 1
  %16 = load i32 (%struct.intel_encoder*, i32*)*, i32 (%struct.intel_encoder*, i32*)** %15, align 8
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %18 = call i32 %16(%struct.intel_encoder* %17, i32* %8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %2, align 8
  br label %75

21:                                               ; preds = %1
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private* %22, i32 %23)
  store %struct.intel_crtc* %24, %struct.intel_crtc** %7, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.intel_crtc_state.0* @kzalloc(i32 8, i32 %25)
  %27 = bitcast %struct.intel_crtc_state.0* %26 to %struct.drm_display_mode*
  store %struct.drm_display_mode* %27, %struct.drm_display_mode** %6, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %29 = icmp ne %struct.drm_display_mode* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %2, align 8
  br label %75

31:                                               ; preds = %21
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.intel_crtc_state.0* @kzalloc(i32 8, i32 %32)
  store %struct.intel_crtc_state.0* %33, %struct.intel_crtc_state.0** %5, align 8
  %34 = load %struct.intel_crtc_state.0*, %struct.intel_crtc_state.0** %5, align 8
  %35 = icmp ne %struct.intel_crtc_state.0* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %38 = bitcast %struct.drm_display_mode* %37 to %struct.intel_crtc_state.0*
  %39 = call i32 @kfree(%struct.intel_crtc_state.0* %38)
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %2, align 8
  br label %75

40:                                               ; preds = %31
  %41 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %42 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %41, i32 0, i32 0
  %43 = load %struct.intel_crtc_state.0*, %struct.intel_crtc_state.0** %5, align 8
  %44 = getelementptr inbounds %struct.intel_crtc_state.0, %struct.intel_crtc_state.0* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32* %42, i32** %45, align 8
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32 (%struct.intel_crtc*, %struct.intel_crtc_state.0*)*, i32 (%struct.intel_crtc*, %struct.intel_crtc_state.0*)** %48, align 8
  %50 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %51 = load %struct.intel_crtc_state.0*, %struct.intel_crtc_state.0** %5, align 8
  %52 = call i32 %49(%struct.intel_crtc* %50, %struct.intel_crtc_state.0* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %40
  %55 = load %struct.intel_crtc_state.0*, %struct.intel_crtc_state.0** %5, align 8
  %56 = call i32 @kfree(%struct.intel_crtc_state.0* %55)
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %58 = bitcast %struct.drm_display_mode* %57 to %struct.intel_crtc_state.0*
  %59 = call i32 @kfree(%struct.intel_crtc_state.0* %58)
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %2, align 8
  br label %75

60:                                               ; preds = %40
  %61 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %62 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %61, i32 0, i32 0
  %63 = load i32 (%struct.intel_encoder*, %struct.intel_crtc_state*)*, i32 (%struct.intel_encoder*, %struct.intel_crtc_state*)** %62, align 8
  %64 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %65 = load %struct.intel_crtc_state.0*, %struct.intel_crtc_state.0** %5, align 8
  %66 = bitcast %struct.intel_crtc_state.0* %65 to %struct.intel_crtc_state*
  %67 = call i32 %63(%struct.intel_encoder* %64, %struct.intel_crtc_state* %66)
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %69 = bitcast %struct.drm_display_mode* %68 to %struct.intel_crtc_state.0*
  %70 = load %struct.intel_crtc_state.0*, %struct.intel_crtc_state.0** %5, align 8
  %71 = call i32 @intel_mode_from_pipe_config(%struct.intel_crtc_state.0* %69, %struct.intel_crtc_state.0* %70)
  %72 = load %struct.intel_crtc_state.0*, %struct.intel_crtc_state.0** %5, align 8
  %73 = call i32 @kfree(%struct.intel_crtc_state.0* %72)
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %74, %struct.drm_display_mode** %2, align 8
  br label %75

75:                                               ; preds = %60, %54, %36, %30, %20
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  ret %struct.drm_display_mode* %76
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.intel_crtc_state.0* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.intel_crtc_state.0*) #1

declare dso_local i32 @intel_mode_from_pipe_config(%struct.intel_crtc_state.0*, %struct.intel_crtc_state.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
