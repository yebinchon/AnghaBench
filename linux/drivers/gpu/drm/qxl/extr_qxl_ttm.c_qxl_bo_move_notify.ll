; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ttm.c_qxl_bo_move_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ttm.c_qxl_bo_move_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ttm_mem_reg = type { i32 }
%struct.qxl_bo = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.qxl_device* }
%struct.qxl_device = type { i32 }

@TTM_PL_PRIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*, i32, %struct.ttm_mem_reg*)* @qxl_bo_move_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qxl_bo_move_notify(%struct.ttm_buffer_object* %0, i32 %1, %struct.ttm_mem_reg* %2) #0 {
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_reg*, align 8
  %7 = alloca %struct.qxl_bo*, align 8
  %8 = alloca %struct.qxl_device*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %6, align 8
  %9 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %10 = call i32 @qxl_ttm_bo_is_qxl_bo(%struct.ttm_buffer_object* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %42

13:                                               ; preds = %3
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %15 = call %struct.qxl_bo* @to_qxl_bo(%struct.ttm_buffer_object* %14)
  store %struct.qxl_bo* %15, %struct.qxl_bo** %7, align 8
  %16 = load %struct.qxl_bo*, %struct.qxl_bo** %7, align 8
  %17 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.qxl_device*, %struct.qxl_device** %21, align 8
  store %struct.qxl_device* %22, %struct.qxl_device** %8, align 8
  %23 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %24 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TTM_PL_PRIV, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %13
  %30 = load %struct.qxl_bo*, %struct.qxl_bo** %7, align 8
  %31 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.qxl_device*, %struct.qxl_device** %8, align 8
  %36 = load %struct.qxl_bo*, %struct.qxl_bo** %7, align 8
  %37 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %38 = icmp ne %struct.ttm_mem_reg* %37, null
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = call i32 @qxl_surface_evict(%struct.qxl_device* %35, %struct.qxl_bo* %36, i32 %40)
  br label %42

42:                                               ; preds = %12, %34, %29, %13
  ret void
}

declare dso_local i32 @qxl_ttm_bo_is_qxl_bo(%struct.ttm_buffer_object*) #1

declare dso_local %struct.qxl_bo* @to_qxl_bo(%struct.ttm_buffer_object*) #1

declare dso_local i32 @qxl_surface_evict(%struct.qxl_device*, %struct.qxl_bo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
