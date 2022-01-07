; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_driver_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_driver_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_driver_remove(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = call i32 @disable_rpm_wakeref_asserts(i32* %9)
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = call i32 @i915_driver_unregister(%struct.drm_i915_private* %11)
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 1
  %15 = call i32 @intel_gt_set_wedged(%struct.TYPE_7__* %14)
  %16 = call i32 (...) @synchronize_rcu()
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %18 = call i32 @i915_gem_suspend(%struct.drm_i915_private* %17)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 2
  %21 = call i32 @drm_atomic_helper_shutdown(%struct.TYPE_6__* %20)
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = call i32 @intel_gvt_driver_remove(%struct.drm_i915_private* %22)
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 2
  %26 = call i32 @intel_modeset_driver_remove(%struct.TYPE_6__* %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = call i32 @intel_bios_driver_remove(%struct.drm_i915_private* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = call i32 @vga_switcheroo_unregister_client(%struct.pci_dev* %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = call i32 @vga_client_register(%struct.pci_dev* %31, i32* null, i32* null, i32* null)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %34 = call i32 @intel_csr_ucode_fini(%struct.drm_i915_private* %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @cancel_delayed_work_sync(i32* %38)
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %41 = call i32 @i915_reset_error_state(%struct.drm_i915_private* %40)
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = call i32 @i915_gem_driver_remove(%struct.drm_i915_private* %42)
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %45 = call i32 @intel_power_domains_driver_remove(%struct.drm_i915_private* %44)
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = call i32 @i915_driver_hw_remove(%struct.drm_i915_private* %46)
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %49 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %48, i32 0, i32 0
  %50 = call i32 @enable_rpm_wakeref_asserts(i32* %49)
  ret void
}

declare dso_local i32 @disable_rpm_wakeref_asserts(i32*) #1

declare dso_local i32 @i915_driver_unregister(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gt_set_wedged(%struct.TYPE_7__*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @i915_gem_suspend(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_atomic_helper_shutdown(%struct.TYPE_6__*) #1

declare dso_local i32 @intel_gvt_driver_remove(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_modeset_driver_remove(%struct.TYPE_6__*) #1

declare dso_local i32 @intel_bios_driver_remove(%struct.drm_i915_private*) #1

declare dso_local i32 @vga_switcheroo_unregister_client(%struct.pci_dev*) #1

declare dso_local i32 @vga_client_register(%struct.pci_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @intel_csr_ucode_fini(%struct.drm_i915_private*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @i915_reset_error_state(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_driver_remove(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_power_domains_driver_remove(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_driver_hw_remove(%struct.drm_i915_private*) #1

declare dso_local i32 @enable_rpm_wakeref_asserts(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
