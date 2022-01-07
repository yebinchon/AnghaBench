; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_move_accel_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_move_accel_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32*, %struct.TYPE_2__, i32, %struct.ttm_mem_reg, %struct.ttm_bo_device* }
%struct.TYPE_2__ = type { i32 }
%struct.ttm_mem_reg = type { i64, i32* }
%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }
%struct.dma_fence = type { i32 }

@TTM_MEMTYPE_FLAG_FIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_move_accel_cleanup(%struct.ttm_buffer_object* %0, %struct.dma_fence* %1, i32 %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.ttm_bo_device*, align 8
  %11 = alloca %struct.ttm_mem_type_manager*, align 8
  %12 = alloca %struct.ttm_mem_reg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ttm_buffer_object*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %16 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %15, i32 0, i32 4
  %17 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %16, align 8
  store %struct.ttm_bo_device* %17, %struct.ttm_bo_device** %10, align 8
  %18 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  %19 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %18, i32 0, i32 0
  %20 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %19, align 8
  %21 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %22 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %20, i64 %23
  store %struct.ttm_mem_type_manager* %24, %struct.ttm_mem_type_manager** %11, align 8
  %25 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %26 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %25, i32 0, i32 3
  store %struct.ttm_mem_reg* %26, %struct.ttm_mem_reg** %12, align 8
  %27 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %28 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %32 = call i32 @dma_resv_add_excl_fence(i32 %30, %struct.dma_fence* %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %4
  %36 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %37 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %36, i32 0, i32 0)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %5, align 4
  br label %105

42:                                               ; preds = %35
  %43 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %11, align 8
  %44 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TTM_MEMTYPE_FLAG_FIXED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %51 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @ttm_tt_destroy(i32* %52)
  %54 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %55 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %49, %42
  %57 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %58 = call i32 @ttm_bo_free_old_node(%struct.ttm_buffer_object* %57)
  br label %98

59:                                               ; preds = %4
  %60 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %61 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dma_fence_put(i32 %62)
  %64 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %65 = call i32 @dma_fence_get(%struct.dma_fence* %64)
  %66 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %67 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %69 = call i32 @ttm_buffer_object_transfer(%struct.ttm_buffer_object* %68, %struct.ttm_buffer_object** %14)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %59
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %5, align 4
  br label %105

74:                                               ; preds = %59
  %75 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %76 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %80 = call i32 @dma_resv_add_excl_fence(i32 %78, %struct.dma_fence* %79)
  %81 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %11, align 8
  %82 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TTM_MEMTYPE_FLAG_FIXED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %74
  %88 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %89 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  br label %93

90:                                               ; preds = %74
  %91 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %92 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %95 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %94)
  %96 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %97 = call i32 @ttm_bo_put(%struct.ttm_buffer_object* %96)
  br label %98

98:                                               ; preds = %93, %56
  %99 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %12, align 8
  %100 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %101 = bitcast %struct.ttm_mem_reg* %99 to i8*
  %102 = bitcast %struct.ttm_mem_reg* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 16, i1 false)
  %103 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %104 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %103, i32 0, i32 1
  store i32* null, i32** %104, align 8
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %98, %72, %40
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @dma_resv_add_excl_fence(i32, %struct.dma_fence*) #1

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32) #1

declare dso_local i32 @ttm_tt_destroy(i32*) #1

declare dso_local i32 @ttm_bo_free_old_node(%struct.ttm_buffer_object*) #1

declare dso_local i32 @dma_fence_put(i32) #1

declare dso_local i32 @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @ttm_buffer_object_transfer(%struct.ttm_buffer_object*, %struct.ttm_buffer_object**) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_put(%struct.ttm_buffer_object*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
