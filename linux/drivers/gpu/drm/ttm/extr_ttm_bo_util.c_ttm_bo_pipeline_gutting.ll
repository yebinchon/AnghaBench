; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_pipeline_gutting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_pipeline_gutting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TTM_PL_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_pipeline_gutting(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  %6 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %7 = call i32 @ttm_buffer_object_transfer(%struct.ttm_buffer_object* %6, %struct.ttm_buffer_object** %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %14 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %18 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dma_resv_copy_fences(i32 %16, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %26 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %25, i32 0, i32 0)
  br label %27

27:                                               ; preds = %24, %12
  %28 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %29 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %28, i32 0, i32 1
  %30 = call i32 @memset(%struct.TYPE_4__* %29, i32 0, i32 4)
  %31 = load i32, i32* @TTM_PL_SYSTEM, align 4
  %32 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %33 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %36 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %38 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %37)
  %39 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %40 = call i32 @ttm_bo_put(%struct.ttm_buffer_object* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %27, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ttm_buffer_object_transfer(%struct.ttm_buffer_object*, %struct.ttm_buffer_object**) #1

declare dso_local i32 @dma_resv_copy_fences(i32, i32) #1

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_put(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
