; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gart.c_amdgpu_gart_table_vram_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gart.c_amdgpu_gart_table_vram_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.amdgpu_bo_param = type { i32, i32*, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS = common dso_local global i32 0, align 4
@ttm_bo_type_kernel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gart_table_vram_alloc(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_bo_param, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  %12 = call i32 @memset(%struct.amdgpu_bo_param* %5, i32 0, i32 32)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %5, i32 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %5, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %21 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %5, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED, align 4
  %23 = load i32, i32* @AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS, align 4
  %24 = or i32 %22, %23
  %25 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @ttm_bo_type_kernel, align 4
  %27 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %5, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %5, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @amdgpu_bo_create(%struct.amdgpu_device* %29, %struct.amdgpu_bo_param* %5, i32** %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %11
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %11
  br label %39

39:                                               ; preds = %38, %1
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @memset(%struct.amdgpu_bo_param*, i32, i32) #1

declare dso_local i32 @amdgpu_bo_create(%struct.amdgpu_device*, %struct.amdgpu_bo_param*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
