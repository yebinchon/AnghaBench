; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vram_mgr.c_amdgpu_vram_mgr_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vram_mgr.c_amdgpu_vram_mgr_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { %struct.amdgpu_vram_mgr*, i32 }
%struct.amdgpu_vram_mgr = type { i32, i32, i32 }
%struct.ttm_mem_reg = type { i32, %struct.drm_mm_node* }
%struct.drm_mm_node = type { i32 }
%struct.amdgpu_device = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_mem_type_manager*, %struct.ttm_mem_reg*)* @amdgpu_vram_mgr_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_vram_mgr_del(%struct.ttm_mem_type_manager* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca %struct.ttm_mem_type_manager*, align 8
  %4 = alloca %struct.ttm_mem_reg*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_vram_mgr*, align 8
  %7 = alloca %struct.drm_mm_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %3, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %4, align 8
  %11 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %3, align 8
  %12 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %13)
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %5, align 8
  %15 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %3, align 8
  %16 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %16, align 8
  store %struct.amdgpu_vram_mgr* %17, %struct.amdgpu_vram_mgr** %6, align 8
  %18 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %19 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %18, i32 0, i32 1
  %20 = load %struct.drm_mm_node*, %struct.drm_mm_node** %19, align 8
  store %struct.drm_mm_node* %20, %struct.drm_mm_node** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %22 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %25 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %24, i32 0, i32 1
  %26 = load %struct.drm_mm_node*, %struct.drm_mm_node** %25, align 8
  %27 = icmp ne %struct.drm_mm_node* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %78

29:                                               ; preds = %2
  %30 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %6, align 8
  %31 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %30, i32 0, i32 2
  %32 = call i32 @spin_lock(i32* %31)
  br label %33

33:                                               ; preds = %36, %29
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %38 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sub i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %43 = call i32 @drm_mm_remove_node(%struct.drm_mm_node* %42)
  %44 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %45 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PAGE_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %52 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %53 = call i64 @amdgpu_vram_mgr_vis_size(%struct.amdgpu_device* %51, %struct.drm_mm_node* %52)
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  %58 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %59 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %58, i32 1
  store %struct.drm_mm_node* %59, %struct.drm_mm_node** %7, align 8
  br label %33

60:                                               ; preds = %33
  %61 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %6, align 8
  %62 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %61, i32 0, i32 2
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %6, align 8
  %66 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %65, i32 0, i32 1
  %67 = call i32 @atomic64_sub(i32 %64, i32* %66)
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %6, align 8
  %70 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %69, i32 0, i32 0
  %71 = call i32 @atomic64_sub(i32 %68, i32* %70)
  %72 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %73 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %72, i32 0, i32 1
  %74 = load %struct.drm_mm_node*, %struct.drm_mm_node** %73, align 8
  %75 = call i32 @kvfree(%struct.drm_mm_node* %74)
  %76 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %77 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %76, i32 0, i32 1
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %77, align 8
  br label %78

78:                                               ; preds = %60, %28
  ret void
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_mm_remove_node(%struct.drm_mm_node*) #1

declare dso_local i64 @amdgpu_vram_mgr_vis_size(%struct.amdgpu_device*, %struct.drm_mm_node*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic64_sub(i32, i32*) #1

declare dso_local i32 @kvfree(%struct.drm_mm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
