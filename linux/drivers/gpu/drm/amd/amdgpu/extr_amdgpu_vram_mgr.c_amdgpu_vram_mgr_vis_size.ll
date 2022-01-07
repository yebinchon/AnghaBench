; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vram_mgr.c_amdgpu_vram_mgr_vis_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vram_mgr.c_amdgpu_vram_mgr_vis_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.drm_mm_node = type { i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.amdgpu_device*, %struct.drm_mm_node*)* @amdgpu_vram_mgr_vis_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @amdgpu_vram_mgr_vis_size(%struct.amdgpu_device* %0, %struct.drm_mm_node* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.drm_mm_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %5, align 8
  %8 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %9 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PAGE_SHIFT, align 8
  %12 = shl i64 %10, %11
  store i64 %12, i64* %6, align 8
  %13 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %14 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %17 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = shl i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %47

29:                                               ; preds = %2
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %30, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  br label %43

41:                                               ; preds = %29
  %42 = load i64, i64* %7, align 8
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi i64 [ %40, %36 ], [ %42, %41 ]
  %45 = load i64, i64* %6, align 8
  %46 = sub nsw i64 %44, %45
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %43, %28
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
