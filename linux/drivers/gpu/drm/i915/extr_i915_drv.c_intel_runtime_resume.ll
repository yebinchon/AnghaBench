; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_intel_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_intel_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_i915_private = type { i32, i32, %struct.intel_runtime_pm }
%struct.intel_runtime_pm = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Resuming device\0A\00", align 1
@PCI_D0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unclaimed access during suspend, bios?\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Runtime resume failed, disabling it (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Device resumed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @intel_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_runtime_resume(%struct.device* %0) #0 {
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
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 2
  store %struct.intel_runtime_pm* %10, %struct.intel_runtime_pm** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %12 = call i32 @HAS_RUNTIME_PM(%struct.drm_i915_private* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %88

21:                                               ; preds = %1
  %22 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %5, align 8
  %24 = getelementptr inbounds %struct.intel_runtime_pm, %struct.intel_runtime_pm* %23, i32 0, i32 1
  %25 = call i32 @atomic_read(i32* %24)
  %26 = call i64 @WARN_ON_ONCE(i32 %25)
  %27 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %5, align 8
  %28 = call i32 @disable_rpm_wakeref_asserts(%struct.intel_runtime_pm* %27)
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %30 = load i32, i32* @PCI_D0, align 4
  %31 = call i32 @intel_opregion_notify_adapter(%struct.drm_i915_private* %29, i32 %30)
  %32 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %5, align 8
  %33 = getelementptr inbounds %struct.intel_runtime_pm, %struct.intel_runtime_pm* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 1
  %36 = call i64 @intel_uncore_unclaimed_mmio(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %21
  %39 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %21
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %42 = call i32 @intel_display_power_resume(%struct.drm_i915_private* %41)
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %44 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %48 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %40
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %52 = call i32 @vlv_resume_prepare(%struct.drm_i915_private* %51, i32 1)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %46
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 1
  %56 = call i32 @intel_uncore_runtime_resume(i32* %55)
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %58 = call i32 @intel_runtime_pm_enable_interrupts(%struct.drm_i915_private* %57)
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %60 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %59, i32 0, i32 0
  %61 = call i32 @intel_gt_runtime_resume(i32* %60)
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %63 = call i32 @i915_gem_restore_fences(%struct.drm_i915_private* %62)
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %65 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %53
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %69 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %73 = call i32 @intel_hpd_init(%struct.drm_i915_private* %72)
  br label %74

74:                                               ; preds = %71, %67, %53
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %76 = call i32 @intel_enable_ipc(%struct.drm_i915_private* %75)
  %77 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %5, align 8
  %78 = call i32 @enable_rpm_wakeref_asserts(%struct.intel_runtime_pm* %77)
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %86

84:                                               ; preds = %74
  %85 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %18
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.drm_i915_private* @kdev_to_i915(%struct.device*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @HAS_RUNTIME_PM(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @disable_rpm_wakeref_asserts(%struct.intel_runtime_pm*) #1

declare dso_local i32 @intel_opregion_notify_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @intel_uncore_unclaimed_mmio(i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @intel_display_power_resume(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_resume_prepare(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_runtime_resume(i32*) #1

declare dso_local i32 @intel_runtime_pm_enable_interrupts(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gt_runtime_resume(i32*) #1

declare dso_local i32 @i915_gem_restore_fences(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_hpd_init(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_enable_ipc(%struct.drm_i915_private*) #1

declare dso_local i32 @enable_rpm_wakeref_asserts(%struct.intel_runtime_pm*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
