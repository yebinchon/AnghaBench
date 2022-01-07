; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_mem_force_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_mem_force_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_3__, %struct.ttm_bo_device* }
%struct.TYPE_3__ = type { i32 }
%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_place*, %struct.ttm_mem_reg*)* }
%struct.ttm_place = type { i32 }
%struct.ttm_mem_reg = type { i64, i64 }
%struct.ttm_operation_ctx = type { i32 }
%struct.ww_acquire_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.ttm_place*, %struct.ttm_mem_reg*, %struct.ttm_operation_ctx*)* @ttm_bo_mem_force_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_mem_force_space(%struct.ttm_buffer_object* %0, %struct.ttm_place* %1, %struct.ttm_mem_reg* %2, %struct.ttm_operation_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca %struct.ttm_place*, align 8
  %8 = alloca %struct.ttm_mem_reg*, align 8
  %9 = alloca %struct.ttm_operation_ctx*, align 8
  %10 = alloca %struct.ttm_bo_device*, align 8
  %11 = alloca %struct.ttm_mem_type_manager*, align 8
  %12 = alloca %struct.ww_acquire_ctx*, align 8
  %13 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store %struct.ttm_place* %1, %struct.ttm_place** %7, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %8, align 8
  store %struct.ttm_operation_ctx* %3, %struct.ttm_operation_ctx** %9, align 8
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 1
  %16 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %15, align 8
  store %struct.ttm_bo_device* %16, %struct.ttm_bo_device** %10, align 8
  %17 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  %18 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %17, i32 0, i32 0
  %19 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %18, align 8
  %20 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %19, i64 %22
  store %struct.ttm_mem_type_manager* %23, %struct.ttm_mem_type_manager** %11, align 8
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %25 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.ww_acquire_ctx* @dma_resv_locking_ctx(i32 %27)
  store %struct.ww_acquire_ctx* %28, %struct.ww_acquire_ctx** %12, align 8
  br label %29

29:                                               ; preds = %70, %4
  %30 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %11, align 8
  %31 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_place*, %struct.ttm_mem_reg*)*, i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_place*, %struct.ttm_mem_reg*)** %33, align 8
  %35 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %11, align 8
  %36 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %37 = load %struct.ttm_place*, %struct.ttm_place** %7, align 8
  %38 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %39 = call i32 %34(%struct.ttm_mem_type_manager* %35, %struct.ttm_buffer_object* %36, %struct.ttm_place* %37, %struct.ttm_mem_reg* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %5, align 4
  br label %76

47:                                               ; preds = %29
  %48 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %49 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %71

53:                                               ; preds = %47
  %54 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  %55 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %56 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ttm_place*, %struct.ttm_place** %7, align 8
  %59 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %9, align 8
  %60 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %12, align 8
  %61 = call i32 @ttm_mem_evict_first(%struct.ttm_bo_device* %54, i64 %57, %struct.ttm_place* %58, %struct.ttm_operation_ctx* %59, %struct.ww_acquire_ctx* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %5, align 4
  br label %76

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69
  br i1 true, label %29, label %71

71:                                               ; preds = %70, %52
  %72 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %73 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %11, align 8
  %74 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %75 = call i32 @ttm_bo_add_move_fence(%struct.ttm_buffer_object* %72, %struct.ttm_mem_type_manager* %73, %struct.ttm_mem_reg* %74)
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %71, %67, %45
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.ww_acquire_ctx* @dma_resv_locking_ctx(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_mem_evict_first(%struct.ttm_bo_device*, i64, %struct.ttm_place*, %struct.ttm_operation_ctx*, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @ttm_bo_add_move_fence(%struct.ttm_buffer_object*, %struct.ttm_mem_type_manager*, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
