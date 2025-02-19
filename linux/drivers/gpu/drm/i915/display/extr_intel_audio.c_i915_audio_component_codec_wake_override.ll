; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_i915_audio_component_codec_wake_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_i915_audio_component_codec_wake_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_i915_private = type { i32 }

@HSW_AUD_CHICKENBIT = common dso_local global i32 0, align 4
@SKL_AUD_CODEC_WAKE_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @i915_audio_component_codec_wake_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_audio_component_codec_wake_override(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.drm_i915_private* @kdev_to_i915(%struct.device* %8)
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %5, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %11 = call i32 @IS_GEN(%struct.drm_i915_private* %10, i32 9)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i64 @i915_audio_component_get_power(%struct.device* %15)
  store i64 %16, i64* %6, align 8
  %17 = load i32, i32* @HSW_AUD_CHICKENBIT, align 4
  %18 = call i32 @I915_READ(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @SKL_AUD_CODEC_WAKE_SIGNAL, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @HSW_AUD_CHICKENBIT, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @I915_WRITE(i32 %23, i32 %24)
  %26 = call i32 @usleep_range(i32 1000, i32 1500)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %14
  %30 = load i32, i32* @HSW_AUD_CHICKENBIT, align 4
  %31 = call i32 @I915_READ(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @SKL_AUD_CODEC_WAKE_SIGNAL, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @HSW_AUD_CHICKENBIT, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @I915_WRITE(i32 %35, i32 %36)
  %38 = call i32 @usleep_range(i32 1000, i32 1500)
  br label %39

39:                                               ; preds = %29, %14
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @i915_audio_component_put_power(%struct.device* %40, i64 %41)
  br label %43

43:                                               ; preds = %39, %13
  ret void
}

declare dso_local %struct.drm_i915_private* @kdev_to_i915(%struct.device*) #1

declare dso_local i32 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @i915_audio_component_get_power(%struct.device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i915_audio_component_put_power(%struct.device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
