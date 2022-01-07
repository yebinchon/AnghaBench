; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_drm_suspend_late.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_drm_suspend_late.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__, %struct.intel_runtime_pm, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_runtime_pm = type { i32 }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Suspend complete failed: %d\0A\00", align 1
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @i915_drm_suspend_late to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_drm_suspend_late(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.intel_runtime_pm*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %5, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 1
  store %struct.intel_runtime_pm* %16, %struct.intel_runtime_pm** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %7, align 8
  %18 = call i32 @disable_rpm_wakeref_asserts(%struct.intel_runtime_pm* %17)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %20 = call i32 @i915_gem_suspend_late(%struct.drm_i915_private* %19)
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %22 = call i32 @i915_rc6_ctx_wa_suspend(%struct.drm_i915_private* %21)
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = call i32 @intel_uncore_suspend(%struct.TYPE_4__* %24)
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @get_suspend_mode(%struct.drm_i915_private* %27, i32 %28)
  %30 = call i32 @intel_power_domains_suspend(%struct.drm_i915_private* %26, i32 %29)
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %32 = call i32 @intel_display_power_suspend_late(%struct.drm_i915_private* %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %34 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %2
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %38 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %2
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %42 = call i32 @vlv_suspend_complete(%struct.drm_i915_private* %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %50 = call i32 @intel_power_domains_resume(%struct.drm_i915_private* %49)
  br label %65

51:                                               ; preds = %43
  %52 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %53 = call i32 @pci_disable_device(%struct.pci_dev* %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %58 = call i32 @INTEL_GEN(%struct.drm_i915_private* %57)
  %59 = icmp slt i32 %58, 6
  br i1 %59, label %64, label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %62 = load i32, i32* @PCI_D3hot, align 4
  %63 = call i32 @pci_set_power_state(%struct.pci_dev* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %46
  %66 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %7, align 8
  %67 = call i32 @enable_rpm_wakeref_asserts(%struct.intel_runtime_pm* %66)
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %69 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  %74 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %7, align 8
  %75 = call i32 @intel_runtime_pm_driver_release(%struct.intel_runtime_pm* %74)
  br label %76

76:                                               ; preds = %73, %65
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @disable_rpm_wakeref_asserts(%struct.intel_runtime_pm*) #1

declare dso_local i32 @i915_gem_suspend_late(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_rc6_ctx_wa_suspend(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uncore_suspend(%struct.TYPE_4__*) #1

declare dso_local i32 @intel_power_domains_suspend(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @get_suspend_mode(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_display_power_suspend_late(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_suspend_complete(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @intel_power_domains_resume(%struct.drm_i915_private*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @enable_rpm_wakeref_asserts(%struct.intel_runtime_pm*) #1

declare dso_local i32 @intel_runtime_pm_driver_release(%struct.intel_runtime_pm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
