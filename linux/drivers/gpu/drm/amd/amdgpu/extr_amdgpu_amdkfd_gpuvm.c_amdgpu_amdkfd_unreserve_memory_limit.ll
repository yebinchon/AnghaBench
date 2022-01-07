; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_unreserve_memory_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_unreserve_memory_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_device = type { i32 }

@AMDGPU_GEM_DOMAIN_CPU = common dso_local global i64 0, align 8
@AMDGPU_AMDKFD_USERPTR_BO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_amdkfd_unreserve_memory_limit(%struct.amdgpu_bo* %0) #0 {
  %2 = alloca %struct.amdgpu_bo*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_bo* %0, %struct.amdgpu_bo** %2, align 8
  %6 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %9)
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %3, align 8
  %11 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AMDGPU_GEM_DOMAIN_CPU, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @AMDGPU_AMDKFD_USERPTR_BO, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i64, i64* @AMDGPU_GEM_DOMAIN_CPU, align 8
  store i64 %27, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %1
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %31 = call i32 @amdgpu_bo_size(%struct.amdgpu_bo* %30)
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @unreserve_mem_limit(%struct.amdgpu_device* %29, i32 %31, i64 %32, i32 %33)
  ret void
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @unreserve_mem_limit(%struct.amdgpu_device*, i32, i64, i32) #1

declare dso_local i32 @amdgpu_bo_size(%struct.amdgpu_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
