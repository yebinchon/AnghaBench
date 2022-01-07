; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_manager.c_ttm_bo_man_get_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_manager.c_ttm_bo_man_get_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i64, i64 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_place = type { i64, i32, i32 }
%struct.ttm_mem_reg = type { i32, %struct.drm_mm_node*, i32, i32 }
%struct.drm_mm_node = type { i32 }
%struct.ttm_range_manager = type { i32, %struct.drm_mm }
%struct.drm_mm = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MM_INSERT_BEST = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TOPDOWN = common dso_local global i32 0, align 4
@DRM_MM_INSERT_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_place*, %struct.ttm_mem_reg*)* @ttm_bo_man_get_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_man_get_node(%struct.ttm_mem_type_manager* %0, %struct.ttm_buffer_object* %1, %struct.ttm_place* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_place*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.ttm_range_manager*, align 8
  %11 = alloca %struct.drm_mm*, align 8
  %12 = alloca %struct.drm_mm_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_place* %2, %struct.ttm_place** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %16 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %17 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ttm_range_manager*
  store %struct.ttm_range_manager* %19, %struct.ttm_range_manager** %10, align 8
  %20 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %10, align 8
  %21 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %20, i32 0, i32 1
  store %struct.drm_mm* %21, %struct.drm_mm** %11, align 8
  %22 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %23 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %29 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %14, align 8
  br label %31

31:                                               ; preds = %27, %4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.drm_mm_node* @kzalloc(i32 4, i32 %32)
  store %struct.drm_mm_node* %33, %struct.drm_mm_node** %12, align 8
  %34 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %35 = icmp ne %struct.drm_mm_node* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %86

39:                                               ; preds = %31
  %40 = load i32, i32* @DRM_MM_INSERT_BEST, align 4
  store i32 %40, i32* %13, align 4
  %41 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %42 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TTM_PL_FLAG_TOPDOWN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @DRM_MM_INSERT_HIGH, align 4
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %47, %39
  %50 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %10, align 8
  %51 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %50, i32 0, i32 0
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load %struct.drm_mm*, %struct.drm_mm** %11, align 8
  %54 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %55 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %56 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %59 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %62 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %14, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @drm_mm_insert_node_in_range(%struct.drm_mm* %53, %struct.drm_mm_node* %54, i32 %57, i32 %60, i32 0, i32 %63, i64 %64, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %10, align 8
  %68 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load i32, i32* %15, align 4
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %49
  %74 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %75 = call i32 @kfree(%struct.drm_mm_node* %74)
  br label %85

76:                                               ; preds = %49
  %77 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %78 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %79 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %78, i32 0, i32 1
  store %struct.drm_mm_node* %77, %struct.drm_mm_node** %79, align 8
  %80 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %81 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %84 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %76, %73
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %36
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.drm_mm_node* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_mm_insert_node_in_range(%struct.drm_mm*, %struct.drm_mm_node*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.drm_mm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
