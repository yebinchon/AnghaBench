; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_process_alloc_gpuvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_process_alloc_gpuvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process_device = type { i32, %struct.kfd_dev* }
%struct.kfd_dev = type { i32 }
%struct.kgd_mem = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Sync memory failed, wait interrupted by user signal\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Map GTT BO to kernel failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_process_device*, i32, i32, i32, i8**)* @kfd_process_alloc_gpuvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_process_alloc_gpuvm(%struct.kfd_process_device* %0, i32 %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kfd_process_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.kfd_dev*, align 8
  %13 = alloca %struct.kgd_mem*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.kfd_process_device* %0, %struct.kfd_process_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %16 = load %struct.kfd_process_device*, %struct.kfd_process_device** %7, align 8
  %17 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %16, i32 0, i32 1
  %18 = load %struct.kfd_dev*, %struct.kfd_dev** %17, align 8
  store %struct.kfd_dev* %18, %struct.kfd_dev** %12, align 8
  store %struct.kgd_mem* null, %struct.kgd_mem** %13, align 8
  %19 = load %struct.kfd_dev*, %struct.kfd_dev** %12, align 8
  %20 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.kfd_process_device*, %struct.kfd_process_device** %7, align 8
  %25 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @amdgpu_amdkfd_gpuvm_alloc_memory_of_gpu(i32 %21, i32 %22, i32 %23, i32 %26, %struct.kgd_mem** %13, i32* null, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  br label %95

32:                                               ; preds = %5
  %33 = load %struct.kfd_dev*, %struct.kfd_dev** %12, align 8
  %34 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.kgd_mem*, %struct.kgd_mem** %13, align 8
  %37 = load %struct.kfd_process_device*, %struct.kfd_process_device** %7, align 8
  %38 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @amdgpu_amdkfd_gpuvm_map_memory_to_gpu(i32 %35, %struct.kgd_mem* %36, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %89

44:                                               ; preds = %32
  %45 = load %struct.kfd_dev*, %struct.kfd_dev** %12, align 8
  %46 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.kgd_mem*, %struct.kgd_mem** %13, align 8
  %49 = call i32 @amdgpu_amdkfd_gpuvm_sync_memory(i32 %47, %struct.kgd_mem* %48, i32 1)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %84

54:                                               ; preds = %44
  %55 = load %struct.kfd_process_device*, %struct.kfd_process_device** %7, align 8
  %56 = load %struct.kgd_mem*, %struct.kgd_mem** %13, align 8
  %57 = call i32 @kfd_process_device_create_obj_handle(%struct.kfd_process_device* %55, %struct.kgd_mem* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %15, align 4
  br label %83

62:                                               ; preds = %54
  %63 = load i8**, i8*** %11, align 8
  %64 = icmp ne i8** %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load %struct.kfd_dev*, %struct.kfd_dev** %12, align 8
  %67 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.kgd_mem*, %struct.kgd_mem** %13, align 8
  %70 = load i8**, i8*** %11, align 8
  %71 = call i32 @amdgpu_amdkfd_gpuvm_map_gtt_bo_to_kernel(i32 %68, %struct.kgd_mem* %69, i8** %70, i32* null)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %79

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %62
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %6, align 4
  br label %98

79:                                               ; preds = %74
  %80 = load %struct.kfd_process_device*, %struct.kfd_process_device** %7, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @kfd_process_device_remove_obj_handle(%struct.kfd_process_device* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %60
  br label %84

84:                                               ; preds = %83, %52
  %85 = load %struct.kgd_mem*, %struct.kgd_mem** %13, align 8
  %86 = load %struct.kfd_process_device*, %struct.kfd_process_device** %7, align 8
  %87 = call i32 @kfd_process_free_gpuvm(%struct.kgd_mem* %85, %struct.kfd_process_device* %86)
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %6, align 4
  br label %98

89:                                               ; preds = %43
  %90 = load %struct.kfd_dev*, %struct.kfd_dev** %12, align 8
  %91 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.kgd_mem*, %struct.kgd_mem** %13, align 8
  %94 = call i32 @amdgpu_amdkfd_gpuvm_free_memory_of_gpu(i32 %92, %struct.kgd_mem* %93)
  br label %95

95:                                               ; preds = %89, %31
  %96 = load i8**, i8*** %11, align 8
  store i8* null, i8** %96, align 8
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %95, %84, %77
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @amdgpu_amdkfd_gpuvm_alloc_memory_of_gpu(i32, i32, i32, i32, %struct.kgd_mem**, i32*, i32) #1

declare dso_local i32 @amdgpu_amdkfd_gpuvm_map_memory_to_gpu(i32, %struct.kgd_mem*, i32) #1

declare dso_local i32 @amdgpu_amdkfd_gpuvm_sync_memory(i32, %struct.kgd_mem*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @kfd_process_device_create_obj_handle(%struct.kfd_process_device*, %struct.kgd_mem*) #1

declare dso_local i32 @amdgpu_amdkfd_gpuvm_map_gtt_bo_to_kernel(i32, %struct.kgd_mem*, i8**, i32*) #1

declare dso_local i32 @kfd_process_device_remove_obj_handle(%struct.kfd_process_device*, i32) #1

declare dso_local i32 @kfd_process_free_gpuvm(%struct.kgd_mem*, %struct.kfd_process_device*) #1

declare dso_local i32 @amdgpu_amdkfd_gpuvm_free_memory_of_gpu(i32, %struct.kgd_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
