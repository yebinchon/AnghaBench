; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_move_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_move_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.ttm_operation_ctx = type { i32 }
%struct.ttm_mem_reg = type { i32, i32, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_operation_ctx*)* @ttm_bo_move_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_move_buffer(%struct.ttm_buffer_object* %0, %struct.ttm_placement* %1, %struct.ttm_operation_ctx* %2) #0 {
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca %struct.ttm_placement*, align 8
  %6 = alloca %struct.ttm_operation_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_mem_reg, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store %struct.ttm_placement* %1, %struct.ttm_placement** %5, align 8
  store %struct.ttm_operation_ctx* %2, %struct.ttm_operation_ctx** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %10 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dma_resv_assert_held(i32 %12)
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %8, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %8, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %24 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %8, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %8, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %8, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %33 = load %struct.ttm_placement*, %struct.ttm_placement** %5, align 8
  %34 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %6, align 8
  %35 = call i32 @ttm_bo_mem_space(%struct.ttm_buffer_object* %32, %struct.ttm_placement* %33, %struct.ttm_mem_reg* %8, %struct.ttm_operation_ctx* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  br label %43

39:                                               ; preds = %3
  %40 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %41 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %6, align 8
  %42 = call i32 @ttm_bo_handle_move_mem(%struct.ttm_buffer_object* %40, %struct.ttm_mem_reg* %8, i32 0, %struct.ttm_operation_ctx* %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %38
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %8, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %52 = call i32 @ttm_bo_mem_put(%struct.ttm_buffer_object* %51, %struct.ttm_mem_reg* %8)
  br label %53

53:                                               ; preds = %50, %46, %43
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @dma_resv_assert_held(i32) #1

declare dso_local i32 @ttm_bo_mem_space(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*, %struct.ttm_operation_ctx*) #1

declare dso_local i32 @ttm_bo_handle_move_mem(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*, i32, %struct.ttm_operation_ctx*) #1

declare dso_local i32 @ttm_bo_mem_put(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
