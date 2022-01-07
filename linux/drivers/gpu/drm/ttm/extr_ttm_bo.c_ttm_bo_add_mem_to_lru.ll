; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_add_mem_to_lru.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_add_mem_to_lru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i64, i32, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__, %struct.ttm_bo_device* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ttm_bo_device = type { %struct.TYPE_6__*, %struct.ttm_mem_type_manager* }
%struct.TYPE_6__ = type { i32* }
%struct.ttm_mem_type_manager = type { i32, i32* }
%struct.ttm_mem_reg = type { i32, i64 }

@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4
@TTM_MEMTYPE_FLAG_FIXED = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_SG = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_SWAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*, %struct.ttm_mem_reg*)* @ttm_bo_add_mem_to_lru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_bo_add_mem_to_lru(%struct.ttm_buffer_object* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_mem_reg*, align 8
  %5 = alloca %struct.ttm_bo_device*, align 8
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %4, align 8
  %7 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %8 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %7, i32 0, i32 6
  %9 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  store %struct.ttm_bo_device* %9, %struct.ttm_bo_device** %5, align 8
  %10 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %11 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dma_resv_assert_held(i32 %13)
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %16 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %15, i32 0, i32 4
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %87

20:                                               ; preds = %2
  %21 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %22 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %87

28:                                               ; preds = %20
  %29 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %30 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %29, i32 0, i32 1
  %31 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %30, align 8
  %32 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %33 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %31, i64 %34
  store %struct.ttm_mem_type_manager* %35, %struct.ttm_mem_type_manager** %6, align 8
  %36 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %37 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %36, i32 0, i32 4
  %38 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %39 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %42 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = call i32 @list_add_tail(i32* %37, i32* %44)
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %47 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %46, i32 0, i32 1
  %48 = call i32 @kref_get(i32* %47)
  %49 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %50 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TTM_MEMTYPE_FLAG_FIXED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %87, label %55

55:                                               ; preds = %28
  %56 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %57 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = icmp ne %struct.TYPE_5__* %58, null
  br i1 %59, label %60, label %87

60:                                               ; preds = %55
  %61 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %62 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %61, i32 0, i32 3
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @TTM_PAGE_FLAG_SG, align 4
  %67 = load i32, i32* @TTM_PAGE_FLAG_SWAPPED, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %60
  %72 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %73 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %72, i32 0, i32 2
  %74 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %75 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %80 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = call i32 @list_add_tail(i32* %73, i32* %82)
  %84 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %85 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %84, i32 0, i32 1
  %86 = call i32 @kref_get(i32* %85)
  br label %87

87:                                               ; preds = %19, %27, %71, %60, %55, %28
  ret void
}

declare dso_local i32 @dma_resv_assert_held(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
