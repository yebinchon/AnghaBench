; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_flush_all_fences.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_flush_all_fences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dma_resv_list = type { i32, i32* }
%struct.dma_fence = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*)* @ttm_bo_flush_all_fences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_bo_flush_all_fences(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca %struct.dma_resv_list*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %6 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %7 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = call %struct.dma_resv_list* @dma_resv_get_list(i32* %8)
  store %struct.dma_resv_list* %9, %struct.dma_resv_list** %3, align 8
  %10 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %11 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = call %struct.dma_fence* @dma_resv_get_excl(i32* %12)
  store %struct.dma_fence* %13, %struct.dma_fence** %4, align 8
  %14 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %15 = icmp ne %struct.dma_fence* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %18 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %25 = call i32 @dma_fence_enable_sw_signaling(%struct.dma_fence* %24)
  br label %26

26:                                               ; preds = %23, %16, %1
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %62, %26
  %28 = load %struct.dma_resv_list*, %struct.dma_resv_list** %3, align 8
  %29 = icmp ne %struct.dma_resv_list* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.dma_resv_list*, %struct.dma_resv_list** %3, align 8
  %33 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br label %36

36:                                               ; preds = %30, %27
  %37 = phi i1 [ false, %27 ], [ %35, %30 ]
  br i1 %37, label %38, label %65

38:                                               ; preds = %36
  %39 = load %struct.dma_resv_list*, %struct.dma_resv_list** %3, align 8
  %40 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %47 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dma_resv_held(i32 %49)
  %51 = call %struct.dma_fence* @rcu_dereference_protected(i32 %45, i32 %50)
  store %struct.dma_fence* %51, %struct.dma_fence** %4, align 8
  %52 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %53 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %38
  %59 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %60 = call i32 @dma_fence_enable_sw_signaling(%struct.dma_fence* %59)
  br label %61

61:                                               ; preds = %58, %38
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %27

65:                                               ; preds = %36
  ret void
}

declare dso_local %struct.dma_resv_list* @dma_resv_get_list(i32*) #1

declare dso_local %struct.dma_fence* @dma_resv_get_excl(i32*) #1

declare dso_local i32 @dma_fence_enable_sw_signaling(%struct.dma_fence*) #1

declare dso_local %struct.dma_fence* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @dma_resv_held(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
