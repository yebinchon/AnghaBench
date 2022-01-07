; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_drm_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_drm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_D1 = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@FBINFO_STATE_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @i915_drm_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_drm_suspend(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %6)
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = call i32 @disable_rpm_wakeref_asserts(i32* %13)
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = call i32 @intel_power_domains_disable(%struct.drm_i915_private* %15)
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = call i32 @drm_kms_helper_poll_disable(%struct.drm_device* %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @pci_save_state(%struct.pci_dev* %19)
  %21 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %22 = call i32 @intel_display_suspend(%struct.drm_device* %21)
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = call i32 @intel_dp_mst_suspend(%struct.drm_i915_private* %23)
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = call i32 @intel_runtime_pm_disable_interrupts(%struct.drm_i915_private* %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = call i32 @intel_hpd_cancel_work(%struct.drm_i915_private* %27)
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = call i32 @intel_suspend_encoders(%struct.drm_i915_private* %29)
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %32 = call i32 @intel_suspend_hw(%struct.drm_i915_private* %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = call i32 @i915_gem_suspend_gtt_mappings(%struct.drm_i915_private* %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = call i32 @i915_save_state(%struct.drm_i915_private* %35)
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = call i64 @suspend_to_idle(%struct.drm_i915_private* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @PCI_D1, align 4
  br label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @PCI_D3cold, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %5, align 4
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @intel_opregion_suspend(%struct.drm_i915_private* %46, i32 %47)
  %49 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %50 = load i32, i32* @FBINFO_STATE_SUSPENDED, align 4
  %51 = call i32 @intel_fbdev_set_suspend(%struct.drm_device* %49, i32 %50, i32 1)
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %53 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %57 = call i32 @intel_csr_ucode_suspend(%struct.drm_i915_private* %56)
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 0
  %60 = call i32 @enable_rpm_wakeref_asserts(i32* %59)
  ret i32 0
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @disable_rpm_wakeref_asserts(i32*) #1

declare dso_local i32 @intel_power_domains_disable(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_kms_helper_poll_disable(%struct.drm_device*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @intel_display_suspend(%struct.drm_device*) #1

declare dso_local i32 @intel_dp_mst_suspend(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_runtime_pm_disable_interrupts(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_hpd_cancel_work(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_suspend_encoders(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_suspend_hw(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_suspend_gtt_mappings(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_save_state(%struct.drm_i915_private*) #1

declare dso_local i64 @suspend_to_idle(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_opregion_suspend(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_fbdev_set_suspend(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @intel_csr_ucode_suspend(%struct.drm_i915_private*) #1

declare dso_local i32 @enable_rpm_wakeref_asserts(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
