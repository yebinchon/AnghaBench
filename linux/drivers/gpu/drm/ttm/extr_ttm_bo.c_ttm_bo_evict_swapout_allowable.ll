; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_evict_swapout_allowable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_evict_swapout_allowable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ttm_operation_ctx = type { i64, i32 }

@TTM_OPT_FLAG_ALLOW_RES_EVICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.ttm_operation_ctx*, i32*, i32*)* @ttm_bo_evict_swapout_allowable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_evict_swapout_allowable(%struct.ttm_buffer_object* %0, %struct.ttm_operation_ctx* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca %struct.ttm_operation_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %5, align 8
  store %struct.ttm_operation_ctx* %1, %struct.ttm_operation_ctx** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %11 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %4
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %20 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @dma_resv_assert_held(i64 %22)
  %24 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TTM_OPT_FLAG_ALLOW_RES_EVICT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %18
  %31 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %32 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %31, i32 0, i32 1
  %33 = call i32 @list_empty(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %18
  store i32 1, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32*, i32** %7, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32*, i32** %8, align 8
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %36
  br label %60

43:                                               ; preds = %4
  %44 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %45 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dma_resv_trylock(i64 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load i32*, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %43
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i32 @dma_resv_assert_held(i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dma_resv_trylock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
