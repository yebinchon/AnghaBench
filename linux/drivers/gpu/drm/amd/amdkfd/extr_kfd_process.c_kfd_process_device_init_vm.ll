; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_process_device_init_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_process_device_init_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process_device = type { i32*, %struct.file*, %struct.kfd_dev*, %struct.kfd_process* }
%struct.kfd_dev = type { i32 }
%struct.kfd_process = type { i32, i32, i32 }
%struct.file = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to create process VM object\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_process_device_init_vm(%struct.kfd_process_device* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kfd_process_device*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca %struct.kfd_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.kfd_process_device* %0, %struct.kfd_process_device** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.kfd_process_device*, %struct.kfd_process_device** %4, align 8
  %10 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = icmp ne %struct.file* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  br label %20

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  store i32 %21, i32* %3, align 4
  br label %104

22:                                               ; preds = %2
  %23 = load %struct.kfd_process_device*, %struct.kfd_process_device** %4, align 8
  %24 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %23, i32 0, i32 3
  %25 = load %struct.kfd_process*, %struct.kfd_process** %24, align 8
  store %struct.kfd_process* %25, %struct.kfd_process** %6, align 8
  %26 = load %struct.kfd_process_device*, %struct.kfd_process_device** %4, align 8
  %27 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %26, i32 0, i32 2
  %28 = load %struct.kfd_dev*, %struct.kfd_dev** %27, align 8
  store %struct.kfd_dev* %28, %struct.kfd_dev** %7, align 8
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = icmp ne %struct.file* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %33 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %37 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.kfd_process_device*, %struct.kfd_process_device** %4, align 8
  %40 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %39, i32 0, i32 0
  %41 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %42 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %41, i32 0, i32 1
  %43 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %44 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %43, i32 0, i32 0
  %45 = call i32 @amdgpu_amdkfd_gpuvm_acquire_process_vm(i32 %34, %struct.file* %35, i32 %38, i32** %40, i32* %42, i32* %44)
  store i32 %45, i32* %8, align 4
  br label %60

46:                                               ; preds = %22
  %47 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %48 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %51 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.kfd_process_device*, %struct.kfd_process_device** %4, align 8
  %54 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %53, i32 0, i32 0
  %55 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %56 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %55, i32 0, i32 1
  %57 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %58 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %57, i32 0, i32 0
  %59 = call i32 @amdgpu_amdkfd_gpuvm_create_process_vm(i32 %49, i32 %52, i32** %54, i32* %56, i32* %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %46, %31
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %104

66:                                               ; preds = %60
  %67 = load %struct.kfd_process_device*, %struct.kfd_process_device** %4, align 8
  %68 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @amdgpu_vm_set_task_info(i32* %69)
  %71 = load %struct.kfd_process_device*, %struct.kfd_process_device** %4, align 8
  %72 = call i32 @kfd_process_device_reserve_ib_mem(%struct.kfd_process_device* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %87

76:                                               ; preds = %66
  %77 = load %struct.kfd_process_device*, %struct.kfd_process_device** %4, align 8
  %78 = call i32 @kfd_process_device_init_cwsr_dgpu(%struct.kfd_process_device* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %86

82:                                               ; preds = %76
  %83 = load %struct.file*, %struct.file** %5, align 8
  %84 = load %struct.kfd_process_device*, %struct.kfd_process_device** %4, align 8
  %85 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %84, i32 0, i32 1
  store %struct.file* %83, %struct.file** %85, align 8
  store i32 0, i32* %3, align 4
  br label %104

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86, %75
  %88 = load %struct.kfd_process_device*, %struct.kfd_process_device** %4, align 8
  %89 = call i32 @kfd_process_device_free_bos(%struct.kfd_process_device* %88)
  %90 = load %struct.file*, %struct.file** %5, align 8
  %91 = icmp ne %struct.file* %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %87
  %93 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %94 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.kfd_process_device*, %struct.kfd_process_device** %4, align 8
  %97 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @amdgpu_amdkfd_gpuvm_destroy_process_vm(i32 %95, i32* %98)
  br label %100

100:                                              ; preds = %92, %87
  %101 = load %struct.kfd_process_device*, %struct.kfd_process_device** %4, align 8
  %102 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %101, i32 0, i32 0
  store i32* null, i32** %102, align 8
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %82, %63, %20
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @amdgpu_amdkfd_gpuvm_acquire_process_vm(i32, %struct.file*, i32, i32**, i32*, i32*) #1

declare dso_local i32 @amdgpu_amdkfd_gpuvm_create_process_vm(i32, i32, i32**, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @amdgpu_vm_set_task_info(i32*) #1

declare dso_local i32 @kfd_process_device_reserve_ib_mem(%struct.kfd_process_device*) #1

declare dso_local i32 @kfd_process_device_init_cwsr_dgpu(%struct.kfd_process_device*) #1

declare dso_local i32 @kfd_process_device_free_bos(%struct.kfd_process_device*) #1

declare dso_local i32 @amdgpu_amdkfd_gpuvm_destroy_process_vm(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
