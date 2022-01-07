; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.sg_table = type { i32 }
%struct.dma_resv = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_init(%struct.ttm_bo_device* %0, %struct.ttm_buffer_object* %1, i64 %2, i32 %3, %struct.ttm_placement* %4, i32 %5, i32 %6, i64 %7, %struct.sg_table* %8, %struct.dma_resv* %9, void (%struct.ttm_buffer_object*)* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.ttm_bo_device*, align 8
  %14 = alloca %struct.ttm_buffer_object*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ttm_placement*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.sg_table*, align 8
  %22 = alloca %struct.dma_resv*, align 8
  %23 = alloca void (%struct.ttm_buffer_object*)*, align 8
  %24 = alloca %struct.ttm_operation_ctx, align 4
  %25 = alloca i32, align 4
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %13, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %14, align 8
  store i64 %2, i64* %15, align 8
  store i32 %3, i32* %16, align 4
  store %struct.ttm_placement* %4, %struct.ttm_placement** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i64 %7, i64* %20, align 8
  store %struct.sg_table* %8, %struct.sg_table** %21, align 8
  store %struct.dma_resv* %9, %struct.dma_resv** %22, align 8
  store void (%struct.ttm_buffer_object*)* %10, void (%struct.ttm_buffer_object*)** %23, align 8
  %26 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %24, i32 0, i32 0
  %27 = load i32, i32* %19, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %24, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %13, align 8
  %30 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load i32, i32* %16, align 4
  %33 = load %struct.ttm_placement*, %struct.ttm_placement** %17, align 8
  %34 = load i32, i32* %18, align 4
  %35 = load i64, i64* %20, align 8
  %36 = load %struct.sg_table*, %struct.sg_table** %21, align 8
  %37 = load %struct.dma_resv*, %struct.dma_resv** %22, align 8
  %38 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %39 = call i32 @ttm_bo_init_reserved(%struct.ttm_bo_device* %29, %struct.ttm_buffer_object* %30, i64 %31, i32 %32, %struct.ttm_placement* %33, i32 %34, %struct.ttm_operation_ctx* %24, i64 %35, %struct.sg_table* %36, %struct.dma_resv* %37, void (%struct.ttm_buffer_object*)* %38)
  store i32 %39, i32* %25, align 4
  %40 = load i32, i32* %25, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %11
  %43 = load i32, i32* %25, align 4
  store i32 %43, i32* %12, align 4
  br label %51

44:                                               ; preds = %11
  %45 = load %struct.dma_resv*, %struct.dma_resv** %22, align 8
  %46 = icmp ne %struct.dma_resv* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %49 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %48)
  br label %50

50:                                               ; preds = %47, %44
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %50, %42
  %52 = load i32, i32* %12, align 4
  ret i32 %52
}

declare dso_local i32 @ttm_bo_init_reserved(%struct.ttm_bo_device*, %struct.ttm_buffer_object*, i64, i32, %struct.ttm_placement*, i32, %struct.ttm_operation_ctx*, i64, %struct.sg_table*, %struct.dma_resv*, void (%struct.ttm_buffer_object*)*) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
