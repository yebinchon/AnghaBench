; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_create_process_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_create_process_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_vm = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMDGPU_VM_CONTEXT_COMPUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed init vm ret %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_amdkfd_gpuvm_create_process_vm(%struct.kgd_dev* %0, i32 %1, i8** %2, i8** %3, %struct.dma_fence** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kgd_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.dma_fence**, align 8
  %12 = alloca %struct.amdgpu_device*, align 8
  %13 = alloca %struct.amdgpu_vm*, align 8
  %14 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store %struct.dma_fence** %4, %struct.dma_fence*** %11, align 8
  %15 = load %struct.kgd_dev*, %struct.kgd_dev** %7, align 8
  %16 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %15)
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %12, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.amdgpu_vm* @kzalloc(i32 4, i32 %17)
  store %struct.amdgpu_vm* %18, %struct.amdgpu_vm** %13, align 8
  %19 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %13, align 8
  %20 = icmp ne %struct.amdgpu_vm* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %55

24:                                               ; preds = %5
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %26 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %13, align 8
  %27 = load i32, i32* @AMDGPU_VM_CONTEXT_COMPUTE, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @amdgpu_vm_init(%struct.amdgpu_device* %25, %struct.amdgpu_vm* %26, i32 %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %51

35:                                               ; preds = %24
  %36 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %13, align 8
  %37 = load i8**, i8*** %10, align 8
  %38 = load %struct.dma_fence**, %struct.dma_fence*** %11, align 8
  %39 = call i32 @init_kfd_vm(%struct.amdgpu_vm* %36, i8** %37, %struct.dma_fence** %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %47

43:                                               ; preds = %35
  %44 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %13, align 8
  %45 = bitcast %struct.amdgpu_vm* %44 to i8*
  %46 = load i8**, i8*** %9, align 8
  store i8* %45, i8** %46, align 8
  store i32 0, i32* %6, align 4
  br label %55

47:                                               ; preds = %42
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %49 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %13, align 8
  %50 = call i32 @amdgpu_vm_fini(%struct.amdgpu_device* %48, %struct.amdgpu_vm* %49)
  br label %51

51:                                               ; preds = %47, %32
  %52 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %13, align 8
  %53 = call i32 @kfree(%struct.amdgpu_vm* %52)
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %43, %21
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local %struct.amdgpu_vm* @kzalloc(i32, i32) #1

declare dso_local i32 @amdgpu_vm_init(%struct.amdgpu_device*, %struct.amdgpu_vm*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @init_kfd_vm(%struct.amdgpu_vm*, i8**, %struct.dma_fence**) #1

declare dso_local i32 @amdgpu_vm_fini(%struct.amdgpu_device*, %struct.amdgpu_vm*) #1

declare dso_local i32 @kfree(%struct.amdgpu_vm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
