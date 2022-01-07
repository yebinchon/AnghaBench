; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gtt_mgr.c_amdgpu_gtt_mgr_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gtt_mgr.c_amdgpu_gtt_mgr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { %struct.amdgpu_gtt_mgr*, i32 }
%struct.amdgpu_gtt_mgr = type { i32, i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_place = type { i64, i64, i32 }
%struct.ttm_mem_reg = type { i32, i32, i32, %struct.amdgpu_gtt_node* }
%struct.amdgpu_gtt_node = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@DRM_MM_INSERT_BEST = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TOPDOWN = common dso_local global i32 0, align 4
@DRM_MM_INSERT_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_place*, %struct.ttm_mem_reg*)* @amdgpu_gtt_mgr_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_gtt_mgr_alloc(%struct.ttm_mem_type_manager* %0, %struct.ttm_buffer_object* %1, %struct.ttm_place* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_place*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca %struct.amdgpu_gtt_mgr*, align 8
  %12 = alloca %struct.amdgpu_gtt_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_place* %2, %struct.ttm_place** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %17 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %18 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %19)
  store %struct.amdgpu_device* %20, %struct.amdgpu_device** %10, align 8
  %21 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %22 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %21, i32 0, i32 0
  %23 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %22, align 8
  store %struct.amdgpu_gtt_mgr* %23, %struct.amdgpu_gtt_mgr** %11, align 8
  %24 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %25 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %24, i32 0, i32 3
  %26 = load %struct.amdgpu_gtt_node*, %struct.amdgpu_gtt_node** %25, align 8
  store %struct.amdgpu_gtt_node* %26, %struct.amdgpu_gtt_node** %12, align 8
  %27 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %28 = call i64 @amdgpu_gtt_mgr_has_gart_addr(%struct.ttm_mem_reg* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %101

31:                                               ; preds = %4
  %32 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %33 = icmp ne %struct.ttm_place* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %36 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %14, align 8
  br label %39

38:                                               ; preds = %31
  store i64 0, i64* %14, align 8
  br label %39

39:                                               ; preds = %38, %34
  %40 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %41 = icmp ne %struct.ttm_place* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %44 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %49 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %15, align 8
  br label %56

51:                                               ; preds = %42, %39
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %15, align 8
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i32, i32* @DRM_MM_INSERT_BEST, align 4
  store i32 %57, i32* %13, align 4
  %58 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %59 = icmp ne %struct.ttm_place* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %62 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @TTM_PL_FLAG_TOPDOWN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @DRM_MM_INSERT_HIGH, align 4
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %67, %60, %56
  %70 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %11, align 8
  %71 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %70, i32 0, i32 0
  %72 = call i32 @spin_lock(i32* %71)
  %73 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %11, align 8
  %74 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %73, i32 0, i32 1
  %75 = load %struct.amdgpu_gtt_node*, %struct.amdgpu_gtt_node** %12, align 8
  %76 = getelementptr inbounds %struct.amdgpu_gtt_node, %struct.amdgpu_gtt_node* %75, i32 0, i32 0
  %77 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %78 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %81 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @drm_mm_insert_node_in_range(i32* %74, %struct.TYPE_4__* %76, i32 %79, i32 %82, i32 0, i64 %83, i64 %84, i32 %85)
  store i32 %86, i32* %16, align 4
  %87 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %11, align 8
  %88 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %69
  %93 = load %struct.amdgpu_gtt_node*, %struct.amdgpu_gtt_node** %12, align 8
  %94 = getelementptr inbounds %struct.amdgpu_gtt_node, %struct.amdgpu_gtt_node* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %98 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %92, %69
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %30
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i64 @amdgpu_gtt_mgr_has_gart_addr(%struct.ttm_mem_reg*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_mm_insert_node_in_range(i32*, %struct.TYPE_4__*, i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
