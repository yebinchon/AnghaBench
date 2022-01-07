; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_evict.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, %struct.ttm_mem_reg, %struct.TYPE_4__, %struct.ttm_bo_device* }
%struct.ttm_mem_reg = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ttm_bo_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*)* }
%struct.ttm_placement = type { i64, i64 }
%struct.ttm_operation_ctx = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Failed to find memory space for buffer 0x%p eviction\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Buffer eviction failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.ttm_operation_ctx*)* @ttm_bo_evict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_evict(%struct.ttm_buffer_object* %0, %struct.ttm_operation_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca %struct.ttm_operation_ctx*, align 8
  %6 = alloca %struct.ttm_bo_device*, align 8
  %7 = alloca %struct.ttm_mem_reg, align 8
  %8 = alloca %struct.ttm_placement, align 8
  %9 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store %struct.ttm_operation_ctx* %1, %struct.ttm_operation_ctx** %5, align 8
  %10 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %11 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %10, i32 0, i32 3
  %12 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %11, align 8
  store %struct.ttm_bo_device* %12, %struct.ttm_bo_device** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %14 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dma_resv_assert_held(i32 %16)
  %18 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %8, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %8, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %21 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*)*, i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*)** %23, align 8
  %25 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %26 = call i32 %24(%struct.ttm_buffer_object* %25, %struct.ttm_placement* %8)
  %27 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %8, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %8, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %36 = call i32 @ttm_bo_pipeline_gutting(%struct.ttm_buffer_object* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %92

41:                                               ; preds = %34
  %42 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %43 = call i32 @ttm_tt_create(%struct.ttm_buffer_object* %42, i32 0)
  store i32 %43, i32* %3, align 4
  br label %92

44:                                               ; preds = %30, %2
  %45 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %46 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %45, i32 0, i32 1
  %47 = bitcast %struct.ttm_mem_reg* %7 to i8*
  %48 = bitcast %struct.ttm_mem_reg* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 24, i1 false)
  %49 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %7, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %7, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %7, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %55 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %5, align 8
  %56 = call i32 @ttm_bo_mem_space(%struct.ttm_buffer_object* %54, %struct.ttm_placement* %8, %struct.ttm_mem_reg* %7, %struct.ttm_operation_ctx* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %44
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @ERESTARTSYS, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.ttm_buffer_object* %65)
  %67 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %68 = call i32 @ttm_bo_mem_space_debug(%struct.ttm_buffer_object* %67, %struct.ttm_placement* %8)
  br label %69

69:                                               ; preds = %64, %59
  br label %90

70:                                               ; preds = %44
  %71 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %72 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %5, align 8
  %73 = call i32 @ttm_bo_handle_move_mem(%struct.ttm_buffer_object* %71, %struct.ttm_mem_reg* %7, i32 1, %struct.ttm_operation_ctx* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @ERESTARTSYS, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %77
  %85 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %86 = call i32 @ttm_bo_mem_put(%struct.ttm_buffer_object* %85, %struct.ttm_mem_reg* %7)
  br label %90

87:                                               ; preds = %70
  %88 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %89 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %84, %69
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %41, %39
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @dma_resv_assert_held(i32) #1

declare dso_local i32 @ttm_bo_pipeline_gutting(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_tt_create(%struct.ttm_buffer_object*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ttm_bo_mem_space(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*, %struct.ttm_operation_ctx*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ttm_bo_mem_space_debug(%struct.ttm_buffer_object*, %struct.ttm_placement*) #1

declare dso_local i32 @ttm_bo_handle_move_mem(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*, i32, %struct.ttm_operation_ctx*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_bo_mem_put(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
