; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_get_process_page_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_get_process_page_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.amdgpu_bo* }
%struct.amdgpu_bo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_device = type { i64 }

@CHIP_VEGA10 = common dso_local global i64 0, align 8
@AMDGPU_GPU_PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_amdkfd_gpuvm_get_process_page_dir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_vm*, align 8
  %5 = alloca %struct.amdgpu_bo*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_vm*
  store %struct.amdgpu_vm* %8, %struct.amdgpu_vm** %4, align 8
  %9 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  store %struct.amdgpu_bo* %13, %struct.amdgpu_bo** %5, align 8
  %14 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %15 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %17)
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %6, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CHIP_VEGA10, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %4, align 8
  %26 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AMDGPU_GPU_PAGE_SHIFT, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %4, align 8
  %32 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
