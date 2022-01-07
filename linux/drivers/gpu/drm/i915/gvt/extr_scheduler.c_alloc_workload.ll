; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_alloc_workload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_alloc_workload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_workload = type { %struct.intel_vgpu*, i32, i32, i32, i32, i32 }
%struct.intel_vgpu = type { %struct.intel_vgpu_submission }
%struct.intel_vgpu_submission = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_vgpu_workload* (%struct.intel_vgpu*)* @alloc_workload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_vgpu_workload* @alloc_workload(%struct.intel_vgpu* %0) #0 {
  %2 = alloca %struct.intel_vgpu_workload*, align 8
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca %struct.intel_vgpu_submission*, align 8
  %5 = alloca %struct.intel_vgpu_workload*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  %6 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %7 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %6, i32 0, i32 0
  store %struct.intel_vgpu_submission* %7, %struct.intel_vgpu_submission** %4, align 8
  %8 = load %struct.intel_vgpu_submission*, %struct.intel_vgpu_submission** %4, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu_submission, %struct.intel_vgpu_submission* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.intel_vgpu_workload* @kmem_cache_zalloc(i32 %10, i32 %11)
  store %struct.intel_vgpu_workload* %12, %struct.intel_vgpu_workload** %5, align 8
  %13 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %5, align 8
  %14 = icmp ne %struct.intel_vgpu_workload* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.intel_vgpu_workload* @ERR_PTR(i32 %17)
  store %struct.intel_vgpu_workload* %18, %struct.intel_vgpu_workload** %2, align 8
  br label %40

19:                                               ; preds = %1
  %20 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %5, align 8
  %21 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %20, i32 0, i32 5
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %5, align 8
  %24 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %23, i32 0, i32 4
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %5, align 8
  %27 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %26, i32 0, i32 3
  %28 = call i32 @init_waitqueue_head(i32* %27)
  %29 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %5, align 8
  %30 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %29, i32 0, i32 2
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load i32, i32* @EINPROGRESS, align 4
  %33 = sub nsw i32 0, %32
  %34 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %5, align 8
  %35 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %37 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %5, align 8
  %38 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %37, i32 0, i32 0
  store %struct.intel_vgpu* %36, %struct.intel_vgpu** %38, align 8
  %39 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %5, align 8
  store %struct.intel_vgpu_workload* %39, %struct.intel_vgpu_workload** %2, align 8
  br label %40

40:                                               ; preds = %19, %15
  %41 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  ret %struct.intel_vgpu_workload* %41
}

declare dso_local %struct.intel_vgpu_workload* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.intel_vgpu_workload* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
