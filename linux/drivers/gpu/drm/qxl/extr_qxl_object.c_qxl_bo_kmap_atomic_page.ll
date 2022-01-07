; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c_qxl_bo_kmap_atomic_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c_qxl_bo_kmap_atomic_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.io_mapping*, %struct.io_mapping* }
%struct.io_mapping = type { i32 }
%struct.qxl_bo = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }

@TTM_PL_VRAM = common dso_local global i64 0, align 8
@TTM_PL_PRIV = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @qxl_bo_kmap_atomic_page(%struct.qxl_device* %0, %struct.qxl_bo* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qxl_device*, align 8
  %6 = alloca %struct.qxl_bo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_mem_type_manager*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.io_mapping*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %5, align 8
  store %struct.qxl_bo* %1, %struct.qxl_bo** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %13 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %16, align 8
  %18 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %19 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %17, i64 %22
  store %struct.ttm_mem_type_manager* %23, %struct.ttm_mem_type_manager** %8, align 8
  %24 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %25 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TTM_PL_VRAM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %33 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %32, i32 0, i32 1
  %34 = load %struct.io_mapping*, %struct.io_mapping** %33, align 8
  store %struct.io_mapping* %34, %struct.io_mapping** %11, align 8
  br label %49

35:                                               ; preds = %3
  %36 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %37 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TTM_PL_PRIV, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %45 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %44, i32 0, i32 0
  %46 = load %struct.io_mapping*, %struct.io_mapping** %45, align 8
  store %struct.io_mapping* %46, %struct.io_mapping** %11, align 8
  br label %48

47:                                               ; preds = %35
  br label %73

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %31
  %50 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %51 = call i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager* %50, i32 0)
  %52 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %53 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %57 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @ttm_mem_io_reserve(%struct.TYPE_7__* %55, %struct.TYPE_8__* %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %61 = call i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager* %60)
  %62 = load %struct.io_mapping*, %struct.io_mapping** %11, align 8
  %63 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %64 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = call i8* @io_mapping_map_atomic_wc(%struct.io_mapping* %62, i64 %71)
  store i8* %72, i8** %4, align 8
  br label %102

73:                                               ; preds = %47
  %74 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %75 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %80 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr i8, i8* %81, i64 %85
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  store i8* %87, i8** %4, align 8
  br label %102

88:                                               ; preds = %73
  %89 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %90 = call i32 @qxl_bo_kmap(%struct.qxl_bo* %89, i8** %9)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i8* null, i8** %4, align 8
  br label %102

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i8*, i8** %9, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr i8, i8* %98, i64 %99
  store i8* %100, i8** %9, align 8
  %101 = load i8*, i8** %9, align 8
  store i8* %101, i8** %4, align 8
  br label %102

102:                                              ; preds = %94, %93, %78, %49
  %103 = load i8*, i8** %4, align 8
  ret i8* %103
}

declare dso_local i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager*, i32) #1

declare dso_local i32 @ttm_mem_io_reserve(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager*) #1

declare dso_local i8* @io_mapping_map_atomic_wc(%struct.io_mapping*, i64) #1

declare dso_local i32 @qxl_bo_kmap(%struct.qxl_bo*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
