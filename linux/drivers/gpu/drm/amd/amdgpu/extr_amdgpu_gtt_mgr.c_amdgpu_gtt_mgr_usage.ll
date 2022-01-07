; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gtt_mgr.c_amdgpu_gtt_mgr_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gtt_mgr.c_amdgpu_gtt_mgr_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i32, %struct.amdgpu_gtt_mgr* }
%struct.amdgpu_gtt_mgr = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gtt_mgr_usage(%struct.ttm_mem_type_manager* %0) #0 {
  %2 = alloca %struct.ttm_mem_type_manager*, align 8
  %3 = alloca %struct.amdgpu_gtt_mgr*, align 8
  %4 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %2, align 8
  %5 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %2, align 8
  %6 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %5, i32 0, i32 1
  %7 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %6, align 8
  store %struct.amdgpu_gtt_mgr* %7, %struct.amdgpu_gtt_mgr** %3, align 8
  %8 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %2, align 8
  %9 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %11, i32 0, i32 0
  %13 = call i32 @atomic64_read(i32* %12)
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  ret i32 %23
}

declare dso_local i32 @atomic64_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
