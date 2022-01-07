; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_acquire_process_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_acquire_process_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.file = type { %struct.drm_file* }
%struct.drm_file = type { %struct.amdgpu_fpriv* }
%struct.amdgpu_fpriv = type { %struct.amdgpu_vm }
%struct.amdgpu_vm = type { i64 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_amdkfd_gpuvm_acquire_process_vm(%struct.kgd_dev* %0, %struct.file* %1, i32 %2, i8** %3, i8** %4, %struct.dma_fence** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kgd_dev*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.dma_fence**, align 8
  %14 = alloca %struct.amdgpu_device*, align 8
  %15 = alloca %struct.drm_file*, align 8
  %16 = alloca %struct.amdgpu_fpriv*, align 8
  %17 = alloca %struct.amdgpu_vm*, align 8
  %18 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %8, align 8
  store %struct.file* %1, %struct.file** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store %struct.dma_fence** %5, %struct.dma_fence*** %13, align 8
  %19 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %20 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %19)
  store %struct.amdgpu_device* %20, %struct.amdgpu_device** %14, align 8
  %21 = load %struct.file*, %struct.file** %9, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.drm_file*, %struct.drm_file** %22, align 8
  store %struct.drm_file* %23, %struct.drm_file** %15, align 8
  %24 = load %struct.drm_file*, %struct.drm_file** %15, align 8
  %25 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %24, i32 0, i32 0
  %26 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %25, align 8
  store %struct.amdgpu_fpriv* %26, %struct.amdgpu_fpriv** %16, align 8
  %27 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %16, align 8
  %28 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %27, i32 0, i32 0
  store %struct.amdgpu_vm* %28, %struct.amdgpu_vm** %17, align 8
  %29 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %17, align 8
  %30 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %6
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %58

36:                                               ; preds = %6
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %38 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %17, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @amdgpu_vm_make_compute(%struct.amdgpu_device* %37, %struct.amdgpu_vm* %38, i32 %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %18, align 4
  store i32 %44, i32* %7, align 4
  br label %58

45:                                               ; preds = %36
  %46 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %17, align 8
  %47 = load i8**, i8*** %12, align 8
  %48 = load %struct.dma_fence**, %struct.dma_fence*** %13, align 8
  %49 = call i32 @init_kfd_vm(%struct.amdgpu_vm* %46, i8** %47, %struct.dma_fence** %48)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %18, align 4
  store i32 %53, i32* %7, align 4
  br label %58

54:                                               ; preds = %45
  %55 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %17, align 8
  %56 = bitcast %struct.amdgpu_vm* %55 to i8*
  %57 = load i8**, i8*** %11, align 8
  store i8* %56, i8** %57, align 8
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %52, %43, %33
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i32 @amdgpu_vm_make_compute(%struct.amdgpu_device*, %struct.amdgpu_vm*, i32) #1

declare dso_local i32 @init_kfd_vm(%struct.amdgpu_vm*, i8**, %struct.dma_fence**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
