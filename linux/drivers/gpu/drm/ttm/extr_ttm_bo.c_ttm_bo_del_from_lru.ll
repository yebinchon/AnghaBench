; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_del_from_lru.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_del_from_lru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, i32, i32, %struct.ttm_bo_device* }
%struct.ttm_bo_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ttm_buffer_object*)* }

@ttm_bo_ref_bug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_bo_del_from_lru(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca %struct.ttm_bo_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %5 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %6 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %5, i32 0, i32 3
  %7 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  store %struct.ttm_bo_device* %7, %struct.ttm_bo_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %9 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %8, i32 0, i32 2
  %10 = call i32 @list_empty(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %14 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %13, i32 0, i32 2
  %15 = call i32 @list_del_init(i32* %14)
  %16 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %17 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %16, i32 0, i32 0
  %18 = load i32, i32* @ttm_bo_ref_bug, align 4
  %19 = call i32 @kref_put(i32* %17, i32 %18)
  store i32 1, i32* %4, align 4
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %22 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %21, i32 0, i32 1
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %27 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %26, i32 0, i32 1
  %28 = call i32 @list_del_init(i32* %27)
  %29 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %30 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %29, i32 0, i32 0
  %31 = load i32, i32* @ttm_bo_ref_bug, align 4
  %32 = call i32 @kref_put(i32* %30, i32 %31)
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %20
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %38 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.ttm_buffer_object*)*, i32 (%struct.ttm_buffer_object*)** %40, align 8
  %42 = icmp ne i32 (%struct.ttm_buffer_object*)* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %45 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.ttm_buffer_object*)*, i32 (%struct.ttm_buffer_object*)** %47, align 8
  %49 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %50 = call i32 %48(%struct.ttm_buffer_object* %49)
  br label %51

51:                                               ; preds = %43, %36, %33
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
