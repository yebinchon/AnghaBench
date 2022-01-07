; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_find_mm_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_find_mm_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i64 }
%struct.ttm_mem_reg = type { %struct.drm_mm_node* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_mm_node* (%struct.ttm_mem_reg*, i64*)* @amdgpu_find_mm_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_mm_node* @amdgpu_find_mm_node(%struct.ttm_mem_reg* %0, i64* %1) #0 {
  %3 = alloca %struct.ttm_mem_reg*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.drm_mm_node*, align 8
  store %struct.ttm_mem_reg* %0, %struct.ttm_mem_reg** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %3, align 8
  %7 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %6, i32 0, i32 0
  %8 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  store %struct.drm_mm_node* %8, %struct.drm_mm_node** %5, align 8
  br label %9

9:                                                ; preds = %18, %2
  %10 = load i64*, i64** %4, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %13 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = shl i64 %14, %15
  %17 = icmp uge i64 %11, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %9
  %19 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %20 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = shl i64 %21, %22
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %25, %23
  store i64 %26, i64* %24, align 8
  %27 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %28 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %27, i32 1
  store %struct.drm_mm_node* %28, %struct.drm_mm_node** %5, align 8
  br label %9

29:                                               ; preds = %9
  %30 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  ret %struct.drm_mm_node* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
