; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c_qxl_bo_kunmap_atomic_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c_qxl_bo_kunmap_atomic_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32 }
%struct.qxl_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }

@TTM_PL_VRAM = common dso_local global i64 0, align 8
@TTM_PL_PRIV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qxl_bo_kunmap_atomic_page(%struct.qxl_device* %0, %struct.qxl_bo* %1, i8* %2) #0 {
  %4 = alloca %struct.qxl_device*, align 8
  %5 = alloca %struct.qxl_bo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %4, align 8
  store %struct.qxl_bo* %1, %struct.qxl_bo** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %9 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %12, align 8
  %14 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %15 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %13, i64 %18
  store %struct.ttm_mem_type_manager* %19, %struct.ttm_mem_type_manager** %7, align 8
  %20 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %21 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TTM_PL_VRAM, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %29 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TTM_PL_PRIV, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %51

36:                                               ; preds = %27, %3
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @io_mapping_unmap_atomic(i8* %37)
  %39 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %40 = call i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager* %39, i32 0)
  %41 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %42 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %46 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @ttm_mem_io_free(%struct.TYPE_5__* %44, %struct.TYPE_6__* %47)
  %49 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %50 = call i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager* %49)
  br label %54

51:                                               ; preds = %35
  %52 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %53 = call i32 @qxl_bo_kunmap(%struct.qxl_bo* %52)
  br label %54

54:                                               ; preds = %51, %36
  ret void
}

declare dso_local i32 @io_mapping_unmap_atomic(i8*) #1

declare dso_local i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager*, i32) #1

declare dso_local i32 @ttm_mem_io_free(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager*) #1

declare dso_local i32 @qxl_bo_kunmap(%struct.qxl_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
