; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_move_to_lru_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_move_to_lru_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ttm_lru_bulk_move = type { i32*, i32*, i32* }

@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_SG = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_SWAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_bo_move_to_lru_tail(%struct.ttm_buffer_object* %0, %struct.ttm_lru_bulk_move* %1) #0 {
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_lru_bulk_move*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  store %struct.ttm_lru_bulk_move* %1, %struct.ttm_lru_bulk_move** %4, align 8
  %5 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %6 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @dma_resv_assert_held(i32 %8)
  %10 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %11 = call i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object* %10)
  %12 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %13 = call i32 @ttm_bo_add_to_lru(%struct.ttm_buffer_object* %12)
  %14 = load %struct.ttm_lru_bulk_move*, %struct.ttm_lru_bulk_move** %4, align 8
  %15 = icmp ne %struct.ttm_lru_bulk_move* %14, null
  br i1 %15, label %16, label %76

16:                                               ; preds = %2
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %18 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %76, label %24

24:                                               ; preds = %16
  %25 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %26 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %49 [
    i32 129, label %29
    i32 128, label %39
  ]

29:                                               ; preds = %24
  %30 = load %struct.ttm_lru_bulk_move*, %struct.ttm_lru_bulk_move** %4, align 8
  %31 = getelementptr inbounds %struct.ttm_lru_bulk_move, %struct.ttm_lru_bulk_move* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %34 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %38 = call i32 @ttm_bo_bulk_move_set_pos(i32* %36, %struct.ttm_buffer_object* %37)
  br label %49

39:                                               ; preds = %24
  %40 = load %struct.ttm_lru_bulk_move*, %struct.ttm_lru_bulk_move** %4, align 8
  %41 = getelementptr inbounds %struct.ttm_lru_bulk_move, %struct.ttm_lru_bulk_move* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %44 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %48 = call i32 @ttm_bo_bulk_move_set_pos(i32* %46, %struct.ttm_buffer_object* %47)
  br label %49

49:                                               ; preds = %24, %39, %29
  %50 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %51 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %75

54:                                               ; preds = %49
  %55 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %56 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TTM_PAGE_FLAG_SG, align 4
  %61 = load i32, i32* @TTM_PAGE_FLAG_SWAPPED, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %54
  %66 = load %struct.ttm_lru_bulk_move*, %struct.ttm_lru_bulk_move** %4, align 8
  %67 = getelementptr inbounds %struct.ttm_lru_bulk_move, %struct.ttm_lru_bulk_move* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %70 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %74 = call i32 @ttm_bo_bulk_move_set_pos(i32* %72, %struct.ttm_buffer_object* %73)
  br label %75

75:                                               ; preds = %65, %54, %49
  br label %76

76:                                               ; preds = %75, %16, %2
  ret void
}

declare dso_local i32 @dma_resv_assert_held(i32) #1

declare dso_local i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_add_to_lru(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_bulk_move_set_pos(i32*, %struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
