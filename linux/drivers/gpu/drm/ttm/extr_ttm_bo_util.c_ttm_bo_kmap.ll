; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_kmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_bo_kmap_obj = type { %struct.ttm_buffer_object*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_kmap(%struct.ttm_buffer_object* %0, i64 %1, i64 %2, %struct.ttm_bo_kmap_obj* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ttm_bo_kmap_obj*, align 8
  %10 = alloca %struct.ttm_mem_type_manager*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ttm_bo_kmap_obj* %3, %struct.ttm_bo_kmap_obj** %9, align 8
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %17, align 8
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %20 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %18, i64 %22
  store %struct.ttm_mem_type_manager* %23, %struct.ttm_mem_type_manager** %10, align 8
  %24 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %25 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %27 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %28 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %27, i32 0, i32 0
  store %struct.ttm_buffer_object* %26, %struct.ttm_buffer_object** %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %31 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %86

37:                                               ; preds = %4
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %40 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %86

46:                                               ; preds = %37
  %47 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %10, align 8
  %48 = call i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager* %47, i32 0)
  %49 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %50 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %53 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %52, i32 0, i32 1
  %54 = call i32 @ttm_mem_io_reserve(%struct.TYPE_5__* %51, %struct.TYPE_6__* %53)
  store i32 %54, i32* %13, align 4
  %55 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %10, align 8
  %56 = call i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager* %55)
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %5, align 4
  br label %86

61:                                               ; preds = %46
  %62 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %63 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %61
  %69 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %73 = call i32 @ttm_bo_kmap_ttm(%struct.ttm_buffer_object* %69, i64 %70, i64 %71, %struct.ttm_bo_kmap_obj* %72)
  store i32 %73, i32* %5, align 4
  br label %86

74:                                               ; preds = %61
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @PAGE_SHIFT, align 8
  %77 = shl i64 %75, %76
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @PAGE_SHIFT, align 8
  %80 = shl i64 %78, %79
  store i64 %80, i64* %12, align 8
  %81 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %85 = call i32 @ttm_bo_ioremap(%struct.ttm_buffer_object* %81, i64 %82, i64 %83, %struct.ttm_bo_kmap_obj* %84)
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %74, %68, %59, %43, %34
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager*, i32) #1

declare dso_local i32 @ttm_mem_io_reserve(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager*) #1

declare dso_local i32 @ttm_bo_kmap_ttm(%struct.ttm_buffer_object*, i64, i64, %struct.ttm_bo_kmap_obj*) #1

declare dso_local i32 @ttm_bo_ioremap(%struct.ttm_buffer_object*, i64, i64, %struct.ttm_bo_kmap_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
