; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_sync_for_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_sync_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.nouveau_drm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ttm_dma_tt = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_bo_sync_for_device(%struct.nouveau_bo* %0) #0 {
  %2 = alloca %struct.nouveau_bo*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.ttm_dma_tt*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %2, align 8
  %6 = load %struct.nouveau_bo*, %struct.nouveau_bo** %2, align 8
  %7 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.nouveau_drm* @nouveau_bdev(i32 %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %3, align 8
  %11 = load %struct.nouveau_bo*, %struct.nouveau_bo** %2, align 8
  %12 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ttm_dma_tt*
  store %struct.ttm_dma_tt* %15, %struct.ttm_dma_tt** %4, align 8
  %16 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %17 = icmp ne %struct.ttm_dma_tt* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %52

19:                                               ; preds = %1
  %20 = load %struct.nouveau_bo*, %struct.nouveau_bo** %2, align 8
  %21 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %52

25:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %29 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %35 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %40 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = load i32, i32* @DMA_TO_DEVICE, align 4
  %48 = call i32 @dma_sync_single_for_device(i32 %38, i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %26

52:                                               ; preds = %18, %24, %26
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
