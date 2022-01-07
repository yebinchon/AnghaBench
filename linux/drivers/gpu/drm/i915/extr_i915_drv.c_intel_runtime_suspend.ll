; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_intel_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_intel_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_i915_private = type { i32, i32, %struct.TYPE_4__, %struct.intel_runtime_pm }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.intel_runtime_pm = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Suspending device\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Runtime suspend failed, disabling it (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Unclaimed access detected prior to suspending\0A\00", align 1
@PCI_D3hot = common dso_local global i32 0, align 4
@PCI_D1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Device suspended\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @intel_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_runtime_pm*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.drm_i915_private* @kdev_to_i915(%struct.device* %7)
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 3
  store %struct.intel_runtime_pm* %10, %struct.intel_runtime_pm** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %19 = call i64 @HAS_RC6(%struct.drm_i915_private* %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %17, %1
  %22 = phi i1 [ false, %1 ], [ %20, %17 ]
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON_ONCE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %127

30:                                               ; preds = %21
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %32 = call i32 @HAS_RUNTIME_PM(%struct.drm_i915_private* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON_ONCE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %127

41:                                               ; preds = %30
  %42 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %5, align 8
  %44 = call i32 @disable_rpm_wakeref_asserts(%struct.intel_runtime_pm* %43)
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %46 = call i32 @i915_gem_runtime_suspend(%struct.drm_i915_private* %45)
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 1
  %49 = call i32 @intel_gt_runtime_suspend(i32* %48)
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %51 = call i32 @intel_runtime_pm_disable_interrupts(%struct.drm_i915_private* %50)
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %53 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %52, i32 0, i32 0
  %54 = call i32 @intel_uncore_suspend(i32* %53)
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %56 = call i32 @intel_display_power_suspend(%struct.drm_i915_private* %55)
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %58 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %41
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %62 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %41
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %66 = call i32 @vlv_suspend_complete(%struct.drm_i915_private* %65)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %74 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %73, i32 0, i32 0
  %75 = call i32 @intel_uncore_runtime_resume(i32* %74)
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %77 = call i32 @intel_runtime_pm_enable_interrupts(%struct.drm_i915_private* %76)
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %79 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %78, i32 0, i32 1
  %80 = call i32 @intel_gt_runtime_resume(i32* %79)
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %82 = call i32 @i915_gem_restore_fences(%struct.drm_i915_private* %81)
  %83 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %5, align 8
  %84 = call i32 @enable_rpm_wakeref_asserts(%struct.intel_runtime_pm* %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %127

86:                                               ; preds = %67
  %87 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %5, align 8
  %88 = call i32 @enable_rpm_wakeref_asserts(%struct.intel_runtime_pm* %87)
  %89 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %5, align 8
  %90 = call i32 @intel_runtime_pm_driver_release(%struct.intel_runtime_pm* %89)
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %92 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %91, i32 0, i32 0
  %93 = call i64 @intel_uncore_arm_unclaimed_mmio_detection(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %86
  %98 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %5, align 8
  %99 = getelementptr inbounds %struct.intel_runtime_pm, %struct.intel_runtime_pm* %98, i32 0, i32 0
  store i32 1, i32* %99, align 4
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %101 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %105 = load i32, i32* @PCI_D3hot, align 4
  %106 = call i32 @intel_opregion_notify_adapter(%struct.drm_i915_private* %104, i32 %105)
  br label %111

107:                                              ; preds = %97
  %108 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %109 = load i32, i32* @PCI_D1, align 4
  %110 = call i32 @intel_opregion_notify_adapter(%struct.drm_i915_private* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %103
  %112 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %113 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %112, i32 0, i32 0
  %114 = call i32 @assert_forcewakes_inactive(i32* %113)
  %115 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %116 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %111
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %120 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %124 = call i32 @intel_hpd_poll_init(%struct.drm_i915_private* %123)
  br label %125

125:                                              ; preds = %122, %118, %111
  %126 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %70, %38, %27
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.drm_i915_private* @kdev_to_i915(%struct.device*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @HAS_RC6(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_RUNTIME_PM(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @disable_rpm_wakeref_asserts(%struct.intel_runtime_pm*) #1

declare dso_local i32 @i915_gem_runtime_suspend(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gt_runtime_suspend(i32*) #1

declare dso_local i32 @intel_runtime_pm_disable_interrupts(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uncore_suspend(i32*) #1

declare dso_local i32 @intel_display_power_suspend(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_suspend_complete(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @intel_uncore_runtime_resume(i32*) #1

declare dso_local i32 @intel_runtime_pm_enable_interrupts(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gt_runtime_resume(i32*) #1

declare dso_local i32 @i915_gem_restore_fences(%struct.drm_i915_private*) #1

declare dso_local i32 @enable_rpm_wakeref_asserts(%struct.intel_runtime_pm*) #1

declare dso_local i32 @intel_runtime_pm_driver_release(%struct.intel_runtime_pm*) #1

declare dso_local i64 @intel_uncore_arm_unclaimed_mmio_detection(i32*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_opregion_notify_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_forcewakes_inactive(i32*) #1

declare dso_local i32 @intel_hpd_poll_init(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
