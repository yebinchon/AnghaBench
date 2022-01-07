; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_mem_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_mem_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ttm_mem_reg = type { i64, i32, %struct.drm_mm_node* }
%struct.drm_mm_node = type { i32, i32 }

@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@TTM_PL_TT = common dso_local global i64 0, align 8
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.ttm_mem_reg*)* @amdgpu_mem_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_mem_visible(%struct.amdgpu_device* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.ttm_mem_reg*, align 8
  %6 = alloca %struct.drm_mm_node*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %5, align 8
  %7 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %8 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %7, i32 0, i32 2
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  store %struct.drm_mm_node* %9, %struct.drm_mm_node** %6, align 8
  %10 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %11 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %17 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TTM_PL_TT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  store i32 1, i32* %3, align 4
  br label %54

22:                                               ; preds = %15
  %23 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %24 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TTM_PL_VRAM, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %54

29:                                               ; preds = %22
  %30 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %31 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %34 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %54

38:                                               ; preds = %29
  %39 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %40 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %43 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = load i32, i32* @PAGE_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %47, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %38, %37, %28, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
