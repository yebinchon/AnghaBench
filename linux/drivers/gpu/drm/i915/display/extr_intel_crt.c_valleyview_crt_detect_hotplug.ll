; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_valleyview_crt_detect_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_valleyview_crt_detect_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crt = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"trigger hotplug detect cycle: adpa=0x%x\0A\00", align 1
@ADPA_CRT_HOTPLUG_FORCE_TRIGGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"timed out waiting for FORCE_TRIGGER\00", align 1
@ADPA_CRT_HOTPLUG_MONITOR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"valleyview hotplug adpa=0x%x, result %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @valleyview_crt_detect_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valleyview_crt_detect_hotplug(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.intel_crt*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %3, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %14 = call %struct.intel_crt* @intel_attached_crt(%struct.drm_connector* %13)
  store %struct.intel_crt* %14, %struct.intel_crt** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %5, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %18 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %19 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @intel_hpd_disable(%struct.drm_i915_private* %17, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %24 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @I915_READ(i32 %25)
  store i32 %26, i32* %7, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ADPA_CRT_HOTPLUG_FORCE_TRIGGER, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %33 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @I915_WRITE(i32 %34, i32 %35)
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %38 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %39 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ADPA_CRT_HOTPLUG_FORCE_TRIGGER, align 4
  %42 = call i64 @intel_de_wait_for_clear(%struct.drm_i915_private* %37, i32 %40, i32 %41, i32 1000)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %1
  %45 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %47 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @I915_WRITE(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %1
  %52 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %53 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @I915_READ(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ADPA_CRT_HOTPLUG_MONITOR_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 1, i32* %8, align 4
  br label %62

61:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %70 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %71 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @intel_hpd_enable(%struct.drm_i915_private* %69, i32 %73)
  br label %75

75:                                               ; preds = %68, %62
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local %struct.intel_crt* @intel_attached_crt(%struct.drm_connector*) #1

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @intel_hpd_disable(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @intel_de_wait_for_clear(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @intel_hpd_enable(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
