; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dvo.c_intel_enable_dvo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dvo.c_intel_enable_dvo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_dvo = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32*, i32*)* }

@DVO_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_enable_dvo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_dvo(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_dvo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %7, align 8
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %17 = call %struct.intel_dvo* @enc_to_dvo(%struct.intel_encoder* %16)
  store %struct.intel_dvo* %17, %struct.intel_dvo** %8, align 8
  %18 = load %struct.intel_dvo*, %struct.intel_dvo** %8, align 8
  %19 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.intel_dvo*, %struct.intel_dvo** %8, align 8
  %25 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_9__*, i32*, i32*)*, i32 (%struct.TYPE_9__*, i32*, i32*)** %28, align 8
  %30 = load %struct.intel_dvo*, %struct.intel_dvo** %8, align 8
  %31 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %30, i32 0, i32 0
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %33 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %36 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 %29(%struct.TYPE_9__* %31, i32* %34, i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @DVO_ENABLE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @I915_WRITE(i32 %39, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @I915_READ(i32 %44)
  %46 = load %struct.intel_dvo*, %struct.intel_dvo** %8, align 8
  %47 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %50, align 8
  %52 = load %struct.intel_dvo*, %struct.intel_dvo** %8, align 8
  %53 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %52, i32 0, i32 0
  %54 = call i32 %51(%struct.TYPE_9__* %53, i32 1)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_dvo* @enc_to_dvo(%struct.intel_encoder*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
