; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_map_bo_to_gpuvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_map_bo_to_gpuvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.kfd_bo_va_list = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_sync = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Failed to map VA 0x%llx in vm. ret %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"update_gpuvm_pte() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.kfd_bo_va_list*, %struct.amdgpu_sync*, i32)* @map_bo_to_gpuvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_bo_to_gpuvm(%struct.amdgpu_device* %0, %struct.kfd_bo_va_list* %1, %struct.amdgpu_sync* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.kfd_bo_va_list*, align 8
  %8 = alloca %struct.amdgpu_sync*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.kfd_bo_va_list* %1, %struct.kfd_bo_va_list** %7, align 8
  store %struct.amdgpu_sync* %2, %struct.amdgpu_sync** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %12 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %7, align 8
  %13 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %7, align 8
  %16 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %7, align 8
  %19 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @amdgpu_bo_size(i32 %23)
  %25 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %7, align 8
  %26 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @amdgpu_vm_bo_map(%struct.amdgpu_device* %11, %struct.TYPE_4__* %14, i32 %17, i32 0, i32 %24, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %4
  %32 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %7, align 8
  %33 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %58

38:                                               ; preds = %4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %58

42:                                               ; preds = %38
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %44 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %7, align 8
  %45 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %8, align 8
  %46 = call i32 @update_gpuvm_pte(%struct.amdgpu_device* %43, %struct.kfd_bo_va_list* %44, %struct.amdgpu_sync* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %52

51:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %58

52:                                               ; preds = %49
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %54 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %7, align 8
  %55 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %8, align 8
  %56 = call i32 @unmap_bo_from_gpuvm(%struct.amdgpu_device* %53, %struct.kfd_bo_va_list* %54, %struct.amdgpu_sync* %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %52, %51, %41, %31
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @amdgpu_vm_bo_map(%struct.amdgpu_device*, %struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_bo_size(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @update_gpuvm_pte(%struct.amdgpu_device*, %struct.kfd_bo_va_list*, %struct.amdgpu_sync*) #1

declare dso_local i32 @unmap_bo_from_gpuvm(%struct.amdgpu_device*, %struct.kfd_bo_va_list*, %struct.amdgpu_sync*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
