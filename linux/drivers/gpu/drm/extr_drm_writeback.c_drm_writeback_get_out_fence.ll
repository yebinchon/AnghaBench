; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_writeback.c_drm_writeback_get_out_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_writeback.c_drm_writeback_get_out_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.drm_writeback_connector = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DRM_MODE_CONNECTOR_WRITEBACK = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@drm_writeback_fence_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_fence* @drm_writeback_get_out_fence(%struct.drm_writeback_connector* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.drm_writeback_connector*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  store %struct.drm_writeback_connector* %0, %struct.drm_writeback_connector** %3, align 8
  %5 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %3, align 8
  %6 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DRM_MODE_CONNECTOR_WRITEBACK, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %34

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.dma_fence* @kzalloc(i32 4, i32 %16)
  store %struct.dma_fence* %17, %struct.dma_fence** %4, align 8
  %18 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %19 = icmp ne %struct.dma_fence* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %34

21:                                               ; preds = %15
  %22 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %23 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %3, align 8
  %24 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %23, i32 0, i32 2
  %25 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %3, align 8
  %26 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %3, align 8
  %29 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = call i32 @dma_fence_init(%struct.dma_fence* %22, i32* @drm_writeback_fence_ops, i32* %24, i32 %27, i32 %31)
  %33 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  store %struct.dma_fence* %33, %struct.dma_fence** %2, align 8
  br label %34

34:                                               ; preds = %21, %20, %14
  %35 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  ret %struct.dma_fence* %35
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.dma_fence* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_fence_init(%struct.dma_fence*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
