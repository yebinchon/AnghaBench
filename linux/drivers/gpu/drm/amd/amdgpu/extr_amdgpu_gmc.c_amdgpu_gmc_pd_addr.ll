; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gmc.c_amdgpu_gmc_pd_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gmc.c_amdgpu_gmc_pd_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_device = type { i64 }

@CHIP_VEGA10 = common dso_local global i64 0, align 8
@AMDGPU_PTE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gmc_pd_addr(%struct.amdgpu_bo* %0) #0 {
  %2 = alloca %struct.amdgpu_bo*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_bo* %0, %struct.amdgpu_bo** %2, align 8
  %6 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %9)
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %3, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CHIP_VEGA10, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @AMDGPU_PTE_VALID, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %19 = call i32 @amdgpu_gmc_get_pde_for_bo(%struct.amdgpu_bo* %18, i32 -1, i32* %4, i32* %5)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %2, align 8
  %25 = call i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %16
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @amdgpu_gmc_get_pde_for_bo(%struct.amdgpu_bo*, i32, i32*, i32*) #1

declare dso_local i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
