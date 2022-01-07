; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_detect_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_detect_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32 }

@CRT_HOTPLUG_FORCE_DETECT = common dso_local global i32 0, align 4
@PORT_HOTPLUG_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"timed out waiting for FORCE_DETECT to go off\00", align 1
@PORT_HOTPLUG_STAT = common dso_local global i32 0, align 4
@CRT_HOTPLUG_MONITOR_MASK = common dso_local global i32 0, align 4
@CRT_HOTPLUG_MONITOR_NONE = common dso_local global i32 0, align 4
@CRT_HOTPLUG_INT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_crt_detect_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crt_detect_hotplug(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %16 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %20 = call i32 @intel_ironlake_crt_detect_hotplug(%struct.drm_connector* %19)
  store i32 %20, i32* %2, align 4
  br label %72

21:                                               ; preds = %1
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %23 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %27 = call i32 @valleyview_crt_detect_hotplug(%struct.drm_connector* %26)
  store i32 %27, i32* %2, align 4
  br label %72

28:                                               ; preds = %21
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %30 = call i64 @IS_G45(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 2, i32* %9, align 4
  br label %34

33:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %32
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %41 = load i32, i32* @CRT_HOTPLUG_FORCE_DETECT, align 4
  %42 = load i32, i32* @CRT_HOTPLUG_FORCE_DETECT, align 4
  %43 = call i32 @i915_hotplug_interrupt_update(%struct.drm_i915_private* %40, i32 %41, i32 %42)
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %45 = load i32, i32* @PORT_HOTPLUG_EN, align 4
  %46 = load i32, i32* @CRT_HOTPLUG_FORCE_DETECT, align 4
  %47 = call i64 @intel_de_wait_for_clear(%struct.drm_i915_private* %44, i32 %45, i32 %46, i32 1000)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %35

55:                                               ; preds = %35
  %56 = load i32, i32* @PORT_HOTPLUG_STAT, align 4
  %57 = call i32 @I915_READ(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @CRT_HOTPLUG_MONITOR_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @CRT_HOTPLUG_MONITOR_NONE, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 1, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %55
  %65 = load i32, i32* @PORT_HOTPLUG_STAT, align 4
  %66 = load i32, i32* @CRT_HOTPLUG_INT_STATUS, align 4
  %67 = call i32 @I915_WRITE(i32 %65, i32 %66)
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %69 = load i32, i32* @CRT_HOTPLUG_FORCE_DETECT, align 4
  %70 = call i32 @i915_hotplug_interrupt_update(%struct.drm_i915_private* %68, i32 %69, i32 0)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %64, %25, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_ironlake_crt_detect_hotplug(%struct.drm_connector*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @valleyview_crt_detect_hotplug(%struct.drm_connector*) #1

declare dso_local i64 @IS_G45(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_hotplug_interrupt_update(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @intel_de_wait_for_clear(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
