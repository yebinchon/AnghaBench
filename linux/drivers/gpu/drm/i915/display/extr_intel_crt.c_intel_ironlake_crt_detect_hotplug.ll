; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_ironlake_crt_detect_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_ironlake_crt_detect_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crt = type { i32, i64 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"trigger hotplug detect cycle: adpa=0x%x\0A\00", align 1
@ADPA_CRT_HOTPLUG_FORCE_TRIGGER = common dso_local global i32 0, align 4
@ADPA_DAC_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"timed out waiting for FORCE_TRIGGER\00", align 1
@ADPA_CRT_HOTPLUG_MONITOR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"ironlake hotplug adpa=0x%x, result %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_ironlake_crt_detect_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ironlake_crt_detect_hotplug(%struct.drm_connector* %0) #0 {
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
  %17 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %18 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %1
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %23 = call i32 @HAS_PCH_SPLIT(%struct.drm_i915_private* %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %25 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %27 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @I915_READ(i32 %28)
  store i32 %29, i32* %6, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ADPA_CRT_HOTPLUG_FORCE_TRIGGER, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %21
  %38 = load i32, i32* @ADPA_DAC_ENABLE, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %37, %21
  %43 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %44 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @I915_WRITE(i32 %45, i32 %46)
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %49 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %50 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ADPA_CRT_HOTPLUG_FORCE_TRIGGER, align 4
  %53 = call i64 @intel_de_wait_for_clear(%struct.drm_i915_private* %48, i32 %51, i32 %52, i32 1000)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %42
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %62 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @I915_WRITE(i32 %63, i32 %64)
  %66 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %67 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @POSTING_READ(i32 %68)
  br label %70

70:                                               ; preds = %60, %57
  br label %71

71:                                               ; preds = %70, %1
  %72 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %73 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @I915_READ(i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @ADPA_CRT_HOTPLUG_MONITOR_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 1, i32* %7, align 4
  br label %82

81:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local %struct.intel_crt* @intel_attached_crt(%struct.drm_connector*) #1

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @intel_de_wait_for_clear(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
