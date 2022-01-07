; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vram_mgr.c_amdgpu_vram_mgr_bo_visible_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vram_mgr.c_amdgpu_vram_mgr_bo_visible_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ttm_mem_reg, i32 }
%struct.ttm_mem_reg = type { i32, i64, %struct.drm_mm_node* }
%struct.drm_mm_node = type { i64 }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @amdgpu_vram_mgr_bo_visible_size(%struct.amdgpu_bo* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.amdgpu_bo*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.ttm_mem_reg*, align 8
  %6 = alloca %struct.drm_mm_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.amdgpu_bo* %0, %struct.amdgpu_bo** %3, align 8
  %9 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %12)
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %4, align 8
  %14 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.ttm_mem_reg* %16, %struct.ttm_mem_reg** %5, align 8
  %17 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %18 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %17, i32 0, i32 2
  %19 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  store %struct.drm_mm_node* %19, %struct.drm_mm_node** %6, align 8
  %20 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = call i64 @amdgpu_gmc_vram_full_visible(%struct.TYPE_4__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %29 = call i64 @amdgpu_bo_size(%struct.amdgpu_bo* %28)
  store i64 %29, i64* %2, align 8
  br label %70

30:                                               ; preds = %1
  %31 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %32 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = zext i32 %38 to i64
  %40 = ashr i64 %37, %39
  %41 = icmp sge i64 %33, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i64 0, i64* %2, align 8
  br label %70

43:                                               ; preds = %30
  store i64 0, i64* %8, align 8
  br label %44

44:                                               ; preds = %58, %43
  %45 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %46 = icmp ne %struct.drm_mm_node* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ false, %44 ], [ %49, %47 ]
  br i1 %51, label %52, label %68

52:                                               ; preds = %50
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %54 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %55 = call i64 @amdgpu_vram_mgr_vis_size(%struct.amdgpu_device* %53, %struct.drm_mm_node* %54)
  %56 = load i64, i64* %8, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %52
  %59 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %60 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = sub nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %7, align 4
  %66 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %67 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %66, i32 1
  store %struct.drm_mm_node* %67, %struct.drm_mm_node** %6, align 8
  br label %44

68:                                               ; preds = %50
  %69 = load i64, i64* %8, align 8
  store i64 %69, i64* %2, align 8
  br label %70

70:                                               ; preds = %68, %42, %27
  %71 = load i64, i64* %2, align 8
  ret i64 %71
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i64 @amdgpu_gmc_vram_full_visible(%struct.TYPE_4__*) #1

declare dso_local i64 @amdgpu_bo_size(%struct.amdgpu_bo*) #1

declare dso_local i64 @amdgpu_vram_mgr_vis_size(%struct.amdgpu_device*, %struct.drm_mm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
