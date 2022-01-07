; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gtt_mgr.c_amdgpu_gtt_mgr_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gtt_mgr.c_amdgpu_gtt_mgr_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { %struct.amdgpu_gtt_mgr* }
%struct.amdgpu_gtt_mgr = type { i32, i32 }
%struct.ttm_mem_reg = type { %struct.amdgpu_gtt_node*, i32 }
%struct.amdgpu_gtt_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AMDGPU_BO_INVALID_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_mem_type_manager*, %struct.ttm_mem_reg*)* @amdgpu_gtt_mgr_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_gtt_mgr_del(%struct.ttm_mem_type_manager* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca %struct.ttm_mem_type_manager*, align 8
  %4 = alloca %struct.ttm_mem_reg*, align 8
  %5 = alloca %struct.amdgpu_gtt_mgr*, align 8
  %6 = alloca %struct.amdgpu_gtt_node*, align 8
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %3, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %4, align 8
  %7 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %3, align 8
  %8 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %7, i32 0, i32 0
  %9 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %8, align 8
  store %struct.amdgpu_gtt_mgr* %9, %struct.amdgpu_gtt_mgr** %5, align 8
  %10 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %11 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_gtt_node*, %struct.amdgpu_gtt_node** %11, align 8
  store %struct.amdgpu_gtt_node* %12, %struct.amdgpu_gtt_node** %6, align 8
  %13 = load %struct.amdgpu_gtt_node*, %struct.amdgpu_gtt_node** %6, align 8
  %14 = icmp ne %struct.amdgpu_gtt_node* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.amdgpu_gtt_node*, %struct.amdgpu_gtt_node** %6, align 8
  %21 = getelementptr inbounds %struct.amdgpu_gtt_node, %struct.amdgpu_gtt_node* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AMDGPU_BO_INVALID_OFFSET, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.amdgpu_gtt_node*, %struct.amdgpu_gtt_node** %6, align 8
  %28 = getelementptr inbounds %struct.amdgpu_gtt_node, %struct.amdgpu_gtt_node* %27, i32 0, i32 0
  %29 = call i32 @drm_mm_remove_node(%struct.TYPE_2__* %28)
  br label %30

30:                                               ; preds = %26, %16
  %31 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %5, align 8
  %32 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %35 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %5, align 8
  %38 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %37, i32 0, i32 0
  %39 = call i32 @atomic64_add(i32 %36, i32* %38)
  %40 = load %struct.amdgpu_gtt_node*, %struct.amdgpu_gtt_node** %6, align 8
  %41 = call i32 @kfree(%struct.amdgpu_gtt_node* %40)
  %42 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %43 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %42, i32 0, i32 0
  store %struct.amdgpu_gtt_node* null, %struct.amdgpu_gtt_node** %43, align 8
  br label %44

44:                                               ; preds = %30, %15
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_mm_remove_node(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i32 @kfree(%struct.amdgpu_gtt_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
