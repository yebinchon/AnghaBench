; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.ttm_operation_ctx = type { i32 }

@TTM_PL_MASK_MEMTYPE = common dso_local global i32 0, align 4
@TTM_PL_SYSTEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_validate(%struct.ttm_buffer_object* %0, %struct.ttm_placement* %1, %struct.ttm_operation_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca %struct.ttm_placement*, align 8
  %7 = alloca %struct.ttm_operation_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %5, align 8
  store %struct.ttm_placement* %1, %struct.ttm_placement** %6, align 8
  store %struct.ttm_operation_ctx* %2, %struct.ttm_operation_ctx** %7, align 8
  %10 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %11 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dma_resv_assert_held(i32 %13)
  %15 = load %struct.ttm_placement*, %struct.ttm_placement** %6, align 8
  %16 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %17 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %16, i32 0, i32 1
  %18 = call i32 @ttm_bo_mem_compat(%struct.ttm_placement* %15, %struct.TYPE_4__* %17, i32* %9)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %3
  %21 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %22 = load %struct.ttm_placement*, %struct.ttm_placement** %6, align 8
  %23 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %7, align 8
  %24 = call i32 @ttm_bo_move_buffer(%struct.ttm_buffer_object* %21, %struct.ttm_placement* %22, %struct.ttm_operation_ctx* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %59

29:                                               ; preds = %20
  br label %38

30:                                               ; preds = %3
  %31 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %32 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @TTM_PL_MASK_MEMTYPE, align 4
  %36 = xor i32 %35, -1
  %37 = call i32 @ttm_flag_masked(i32* %33, i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %30, %29
  %39 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %40 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %47 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %52 = call i32 @ttm_tt_create(%struct.ttm_buffer_object* %51, i32 1)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %59

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %45, %38
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %55, %27
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @dma_resv_assert_held(i32) #1

declare dso_local i32 @ttm_bo_mem_compat(%struct.ttm_placement*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @ttm_bo_move_buffer(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_operation_ctx*) #1

declare dso_local i32 @ttm_flag_masked(i32*, i32, i32) #1

declare dso_local i32 @ttm_tt_create(%struct.ttm_buffer_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
