; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_modeset_driver_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_modeset_driver_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_modeset_driver_remove(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %4)
  store %struct.drm_i915_private* %5, %struct.drm_i915_private** %3, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @flush_workqueue(i32 %8)
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = call i32 @flush_work(i32* %12)
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @llist_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = call i32 @intel_irq_uninstall(%struct.drm_i915_private* %22)
  %24 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %25 = call i32 @intel_hpd_poll_fini(%struct.drm_device* %24)
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %27 = call i32 @intel_fbdev_fini(%struct.drm_i915_private* %26)
  %28 = call i32 (...) @intel_unregister_dsm_handler()
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = call i32 @intel_fbc_global_disable(%struct.drm_i915_private* %29)
  %31 = call i32 (...) @flush_scheduled_work()
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %33 = call i32 @intel_hdcp_component_fini(%struct.drm_i915_private* %32)
  %34 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %35 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %34)
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %37 = call i32 @intel_overlay_cleanup(%struct.drm_i915_private* %36)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = call i32 @intel_gmbus_teardown(%struct.drm_i915_private* %38)
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %41 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @destroy_workqueue(i32 %42)
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %45 = call i32 @intel_fbc_cleanup_cfb(%struct.drm_i915_private* %44)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @llist_empty(i32*) #1

declare dso_local i32 @intel_irq_uninstall(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_hpd_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @intel_fbdev_fini(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_unregister_dsm_handler(...) #1

declare dso_local i32 @intel_fbc_global_disable(%struct.drm_i915_private*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @intel_hdcp_component_fini(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @intel_overlay_cleanup(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gmbus_teardown(%struct.drm_i915_private*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @intel_fbc_cleanup_cfb(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
