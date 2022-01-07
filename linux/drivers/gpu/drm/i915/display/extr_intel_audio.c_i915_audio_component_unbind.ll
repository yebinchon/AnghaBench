; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_i915_audio_component_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_i915_audio_component_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i915_audio_component = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.drm_i915_private = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*, i8*)* @i915_audio_component_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_audio_component_unbind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.i915_audio_component*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.i915_audio_component*
  store %struct.i915_audio_component* %10, %struct.i915_audio_component** %7, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.drm_i915_private* @kdev_to_i915(%struct.device* %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %8, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = call i32 @drm_modeset_lock_all(i32* %14)
  %16 = load %struct.i915_audio_component*, %struct.i915_audio_component** %7, align 8
  %17 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.i915_audio_component*, %struct.i915_audio_component** %7, align 8
  %20 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 0
  %26 = call i32 @drm_modeset_unlock_all(i32* %25)
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 @device_link_remove(%struct.device* %27, %struct.device* %28)
  ret void
}

declare dso_local %struct.drm_i915_private* @kdev_to_i915(%struct.device*) #1

declare dso_local i32 @drm_modeset_lock_all(i32*) #1

declare dso_local i32 @drm_modeset_unlock_all(i32*) #1

declare dso_local i32 @device_link_remove(%struct.device*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
