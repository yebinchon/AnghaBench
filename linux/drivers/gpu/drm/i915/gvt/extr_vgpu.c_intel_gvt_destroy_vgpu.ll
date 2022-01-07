; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_vgpu.c_intel_gvt_destroy_vgpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_vgpu.c_intel_gvt_destroy_vgpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, i32, i32, %struct.intel_gvt* }
%struct.intel_gvt = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"vGPU is still active!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_gvt_destroy_vgpu(%struct.intel_vgpu* %0) #0 {
  %2 = alloca %struct.intel_vgpu*, align 8
  %3 = alloca %struct.intel_gvt*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %2, align 8
  %4 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %5 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %4, i32 0, i32 3
  %6 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  store %struct.intel_gvt* %6, %struct.intel_gvt** %3, align 8
  %7 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %8 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %11 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @WARN(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %15 = call i32 @intel_gvt_debugfs_remove_vgpu(%struct.intel_vgpu* %14)
  %16 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %17 = call i32 @intel_vgpu_clean_sched_policy(%struct.intel_vgpu* %16)
  %18 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %19 = call i32 @intel_vgpu_clean_submission(%struct.intel_vgpu* %18)
  %20 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %21 = call i32 @intel_vgpu_clean_display(%struct.intel_vgpu* %20)
  %22 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %23 = call i32 @intel_vgpu_clean_opregion(%struct.intel_vgpu* %22)
  %24 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %25 = call i32 @intel_vgpu_reset_ggtt(%struct.intel_vgpu* %24, i32 1)
  %26 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %27 = call i32 @intel_vgpu_clean_gtt(%struct.intel_vgpu* %26)
  %28 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %29 = call i32 @intel_gvt_hypervisor_detach_vgpu(%struct.intel_vgpu* %28)
  %30 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %31 = call i32 @intel_vgpu_free_resource(%struct.intel_vgpu* %30)
  %32 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %33 = call i32 @intel_vgpu_clean_mmio(%struct.intel_vgpu* %32)
  %34 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %35 = call i32 @intel_vgpu_dmabuf_cleanup(%struct.intel_vgpu* %34)
  %36 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %37 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %40 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %43 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %42, i32 0, i32 1
  %44 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %45 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @idr_remove(i32* %43, i32 %46)
  %48 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %49 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %48, i32 0, i32 1
  %50 = call i64 @idr_is_empty(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %1
  %53 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %54 = call i32 @intel_gvt_clean_irq(%struct.intel_gvt* %53)
  br label %55

55:                                               ; preds = %52, %1
  %56 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %57 = call i32 @intel_gvt_update_vgpu_types(%struct.intel_gvt* %56)
  %58 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %59 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %62 = call i32 @vfree(%struct.intel_vgpu* %61)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @intel_gvt_debugfs_remove_vgpu(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_clean_sched_policy(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_clean_submission(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_clean_display(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_clean_opregion(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_reset_ggtt(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @intel_vgpu_clean_gtt(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_gvt_hypervisor_detach_vgpu(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_free_resource(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_clean_mmio(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_dmabuf_cleanup(%struct.intel_vgpu*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i64 @idr_is_empty(i32*) #1

declare dso_local i32 @intel_gvt_clean_irq(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_update_vgpu_types(%struct.intel_gvt*) #1

declare dso_local i32 @vfree(%struct.intel_vgpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
