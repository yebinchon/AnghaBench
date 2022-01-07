; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_update_gpuvm_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_update_gpuvm_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.kfd_bo_va_list = type { %struct.amdgpu_bo_va* }
%struct.amdgpu_bo_va = type { i32 }
%struct.amdgpu_sync = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"amdgpu_vm_bo_update failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.kfd_bo_va_list*, %struct.amdgpu_sync*)* @update_gpuvm_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_gpuvm_pte(%struct.amdgpu_device* %0, %struct.kfd_bo_va_list* %1, %struct.amdgpu_sync* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.kfd_bo_va_list*, align 8
  %7 = alloca %struct.amdgpu_sync*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_bo_va*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.kfd_bo_va_list* %1, %struct.kfd_bo_va_list** %6, align 8
  store %struct.amdgpu_sync* %2, %struct.amdgpu_sync** %7, align 8
  %10 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %6, align 8
  %11 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %11, align 8
  store %struct.amdgpu_bo_va* %12, %struct.amdgpu_bo_va** %9, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %14 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %9, align 8
  %15 = call i32 @amdgpu_vm_bo_update(%struct.amdgpu_device* %13, %struct.amdgpu_bo_va* %14, i32 0)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %27

21:                                               ; preds = %3
  %22 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %7, align 8
  %23 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %9, align 8
  %24 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @amdgpu_sync_fence(i32* null, %struct.amdgpu_sync* %22, i32 %25, i32 0)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @amdgpu_vm_bo_update(%struct.amdgpu_device*, %struct.amdgpu_bo_va*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @amdgpu_sync_fence(i32*, %struct.amdgpu_sync*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
