; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_intel_gvt_clean_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_intel_gvt_clean_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32* }
%struct.intel_gvt = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_gvt_clean_device(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_gvt*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = call %struct.intel_gvt* @to_gvt(%struct.drm_i915_private* %4)
  store %struct.intel_gvt* %5, %struct.intel_gvt** %3, align 8
  %6 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %7 = icmp ne %struct.intel_gvt* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %15 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @intel_gvt_destroy_idle_vgpu(i32 %16)
  %18 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %19 = call i32 @intel_gvt_cleanup_vgpu_type_groups(%struct.intel_gvt* %18)
  %20 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %21 = call i32 @intel_gvt_clean_vgpu_types(%struct.intel_gvt* %20)
  %22 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %23 = call i32 @intel_gvt_debugfs_clean(%struct.intel_gvt* %22)
  %24 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %25 = call i32 @clean_service_thread(%struct.intel_gvt* %24)
  %26 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %27 = call i32 @intel_gvt_clean_cmd_parser(%struct.intel_gvt* %26)
  %28 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %29 = call i32 @intel_gvt_clean_sched_policy(%struct.intel_gvt* %28)
  %30 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %31 = call i32 @intel_gvt_clean_workload_scheduler(%struct.intel_gvt* %30)
  %32 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %33 = call i32 @intel_gvt_clean_gtt(%struct.intel_gvt* %32)
  %34 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %35 = call i32 @intel_gvt_clean_irq(%struct.intel_gvt* %34)
  %36 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %37 = call i32 @intel_gvt_free_firmware(%struct.intel_gvt* %36)
  %38 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %39 = call i32 @intel_gvt_clean_mmio_info(%struct.intel_gvt* %38)
  %40 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %41 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %40, i32 0, i32 0
  %42 = call i32 @idr_destroy(i32* %41)
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %44 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @kfree(i32* %45)
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.intel_gvt* @to_gvt(%struct.drm_i915_private*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_gvt_destroy_idle_vgpu(i32) #1

declare dso_local i32 @intel_gvt_cleanup_vgpu_type_groups(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_clean_vgpu_types(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_debugfs_clean(%struct.intel_gvt*) #1

declare dso_local i32 @clean_service_thread(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_clean_cmd_parser(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_clean_sched_policy(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_clean_workload_scheduler(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_clean_gtt(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_clean_irq(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_free_firmware(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_clean_mmio_info(%struct.intel_gvt*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
