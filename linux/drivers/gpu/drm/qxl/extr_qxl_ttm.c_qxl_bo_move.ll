; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ttm.c_qxl_bo_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ttm.c_qxl_bo_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32*, %struct.ttm_mem_reg }
%struct.ttm_mem_reg = type { i64 }
%struct.ttm_operation_ctx = type { i32, i32 }

@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, %struct.ttm_operation_ctx*, %struct.ttm_mem_reg*)* @qxl_bo_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_bo_move(%struct.ttm_buffer_object* %0, i32 %1, %struct.ttm_operation_ctx* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_operation_ctx*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.ttm_mem_reg*, align 8
  %11 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ttm_operation_ctx* %2, %struct.ttm_operation_ctx** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %12 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %13 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %12, i32 0, i32 1
  store %struct.ttm_mem_reg* %13, %struct.ttm_mem_reg** %10, align 8
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %15 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %14, i32 %17, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %46

26:                                               ; preds = %4
  %27 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %28 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %34 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %39 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %40 = call i32 @qxl_move_null(%struct.ttm_buffer_object* %38, %struct.ttm_mem_reg* %39)
  store i32 0, i32* %5, align 4
  br label %46

41:                                               ; preds = %32, %26
  %42 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %43 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %44 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %45 = call i32 @ttm_bo_move_memcpy(%struct.ttm_buffer_object* %42, %struct.ttm_operation_ctx* %43, %struct.ttm_mem_reg* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %37, %24
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32) #1

declare dso_local i32 @qxl_move_null(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #1

declare dso_local i32 @ttm_bo_move_memcpy(%struct.ttm_buffer_object*, %struct.ttm_operation_ctx*, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
