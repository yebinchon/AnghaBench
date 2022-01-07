; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_i915_audio_component_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_i915_audio_component_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i915_audio_component = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device*, i32* }
%struct.drm_i915_private = type { i32, %struct.i915_audio_component* }

@EEXIST = common dso_local global i32 0, align 4
@DL_FLAG_STATELESS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i915_audio_component_ops = common dso_local global i32 0, align 4
@MAX_PORTS = common dso_local global i64 0, align 8
@I915_MAX_PORTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @i915_audio_component_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_audio_component_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.i915_audio_component*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.i915_audio_component*
  store %struct.i915_audio_component* %12, %struct.i915_audio_component** %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.drm_i915_private* @kdev_to_i915(%struct.device* %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %9, align 8
  %15 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %16 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %22 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.device*, %struct.device** %23, align 8
  %25 = icmp ne %struct.device* %24, null
  br label %26

26:                                               ; preds = %20, %3
  %27 = phi i1 [ true, %3 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EEXIST, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %87

34:                                               ; preds = %26
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load i32, i32* @DL_FLAG_STATELESS, align 4
  %38 = call i32 @device_link_add(%struct.device* %35, %struct.device* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %87

47:                                               ; preds = %34
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %49 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %48, i32 0, i32 0
  %50 = call i32 @drm_modeset_lock_all(i32* %49)
  %51 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %52 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32* @i915_audio_component_ops, i32** %53, align 8
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %56 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.device* %54, %struct.device** %57, align 8
  %58 = load i64, i64* @MAX_PORTS, align 8
  %59 = load i64, i64* @I915_MAX_PORTS, align 8
  %60 = icmp ne i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUILD_BUG_ON(i32 %61)
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %77, %47
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %66 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = call i32 @ARRAY_SIZE(i64* %67)
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %63
  %71 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %72 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %63

80:                                               ; preds = %63
  %81 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %83 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %82, i32 0, i32 1
  store %struct.i915_audio_component* %81, %struct.i915_audio_component** %83, align 8
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %85 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %84, i32 0, i32 0
  %86 = call i32 @drm_modeset_unlock_all(i32* %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %80, %44, %31
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.drm_i915_private* @kdev_to_i915(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @device_link_add(%struct.device*, %struct.device*, i32) #1

declare dso_local i32 @drm_modeset_lock_all(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @drm_modeset_unlock_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
