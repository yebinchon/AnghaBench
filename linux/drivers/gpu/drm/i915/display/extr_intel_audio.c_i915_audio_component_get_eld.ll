; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_i915_audio_component_get_eld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_i915_audio_component_get_eld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Not valid for port %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32*, i8*, i32)* @i915_audio_component_get_eld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_audio_component_get_eld(%struct.device* %0, i32 %1, i32 %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_i915_private*, align 8
  %15 = alloca %struct.intel_encoder*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.device*, %struct.device** %8, align 8
  %19 = call %struct.drm_i915_private* @kdev_to_i915(%struct.device* %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %14, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %17, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.intel_encoder* @get_saved_enc(%struct.drm_i915_private* %25, i32 %26, i32 %27)
  store %struct.intel_encoder* %28, %struct.intel_encoder** %15, align 8
  %29 = load %struct.intel_encoder*, %struct.intel_encoder** %15, align 8
  %30 = icmp ne %struct.intel_encoder* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @port_name(i32 %32)
  %34 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %17, align 4
  store i32 %38, i32* %7, align 4
  br label %68

39:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  %40 = load %struct.intel_encoder*, %struct.intel_encoder** %15, align 8
  %41 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %39
  %50 = load %struct.intel_encoder*, %struct.intel_encoder** %15, align 8
  %51 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %16, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = call i32 @drm_eld_size(i32* %55)
  store i32 %56, i32* %17, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %17, align 4
  %61 = call i32 @min(i32 %59, i32 %60)
  %62 = call i32 @memcpy(i8* %57, i32* %58, i32 %61)
  br label %63

63:                                               ; preds = %49, %39
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %17, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %63, %31
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.drm_i915_private* @kdev_to_i915(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.intel_encoder* @get_saved_enc(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_eld_size(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
