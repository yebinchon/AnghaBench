; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_intel_vgpu_destroy_workload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_intel_vgpu_destroy_workload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_workload = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intel_vgpu_submission }
%struct.intel_vgpu_submission = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_vgpu_destroy_workload(%struct.intel_vgpu_workload* %0) #0 {
  %2 = alloca %struct.intel_vgpu_workload*, align 8
  %3 = alloca %struct.intel_vgpu_submission*, align 8
  store %struct.intel_vgpu_workload* %0, %struct.intel_vgpu_workload** %2, align 8
  %4 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %5 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.intel_vgpu_submission* %7, %struct.intel_vgpu_submission** %3, align 8
  %8 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %9 = call i32 @release_shadow_batch_buffer(%struct.intel_vgpu_workload* %8)
  %10 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %11 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %10, i32 0, i32 1
  %12 = call i32 @release_shadow_wa_ctx(i32* %11)
  %13 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %19 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @intel_vgpu_mm_put(i64 %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.intel_vgpu_submission*, %struct.intel_vgpu_submission** %3, align 8
  %24 = getelementptr inbounds %struct.intel_vgpu_submission, %struct.intel_vgpu_submission* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %27 = call i32 @kmem_cache_free(i32 %25, %struct.intel_vgpu_workload* %26)
  ret void
}

declare dso_local i32 @release_shadow_batch_buffer(%struct.intel_vgpu_workload*) #1

declare dso_local i32 @release_shadow_wa_ctx(i32*) #1

declare dso_local i32 @intel_vgpu_mm_put(i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.intel_vgpu_workload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
