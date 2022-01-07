; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c_qxl_ttm_bo_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c_qxl_ttm_bo_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32 }
%struct.qxl_bo = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.qxl_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*)* @qxl_ttm_bo_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qxl_ttm_bo_destroy(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca %struct.qxl_bo*, align 8
  %4 = alloca %struct.qxl_device*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %5 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %6 = call %struct.qxl_bo* @to_qxl_bo(%struct.ttm_buffer_object* %5)
  store %struct.qxl_bo* %6, %struct.qxl_bo** %3, align 8
  %7 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %8 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.qxl_device*
  store %struct.qxl_device* %14, %struct.qxl_device** %4, align 8
  %15 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %16 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %17 = call i32 @qxl_surface_evict(%struct.qxl_device* %15, %struct.qxl_bo* %16, i32 0)
  %18 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %19 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON_ONCE(i32 %22)
  %24 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %25 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %29 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %28, i32 0, i32 2
  %30 = call i32 @list_del_init(i32* %29)
  %31 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %32 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %36 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = call i32 @drm_gem_object_release(%struct.TYPE_8__* %37)
  %39 = load %struct.qxl_bo*, %struct.qxl_bo** %3, align 8
  %40 = call i32 @kfree(%struct.qxl_bo* %39)
  ret void
}

declare dso_local %struct.qxl_bo* @to_qxl_bo(%struct.ttm_buffer_object*) #1

declare dso_local i32 @qxl_surface_evict(%struct.qxl_device*, %struct.qxl_bo*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_gem_object_release(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.qxl_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
