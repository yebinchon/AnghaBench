; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_local_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_local_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { i32 }
%struct.dma_fence = type { i64, i32* }
%struct.nouveau_drm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@nouveau_fence_ops_legacy = common dso_local global i32 0, align 4
@nouveau_fence_ops_uevent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nouveau_fence* (%struct.dma_fence*, %struct.nouveau_drm*)* @nouveau_local_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nouveau_fence* @nouveau_local_fence(%struct.dma_fence* %0, %struct.nouveau_drm* %1) #0 {
  %3 = alloca %struct.nouveau_fence*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca %struct.nouveau_drm*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %4, align 8
  store %struct.nouveau_drm* %1, %struct.nouveau_drm** %5, align 8
  %6 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %7 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, @nouveau_fence_ops_legacy
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %12 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, @nouveau_fence_ops_uevent
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store %struct.nouveau_fence* null, %struct.nouveau_fence** %3, align 8
  br label %43

16:                                               ; preds = %10, %2
  %17 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %18 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %19, %23
  br i1 %24, label %39, label %25

25:                                               ; preds = %16
  %26 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %27 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %34 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %32, %36
  %38 = icmp sge i64 %28, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %25, %16
  store %struct.nouveau_fence* null, %struct.nouveau_fence** %3, align 8
  br label %43

40:                                               ; preds = %25
  %41 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %42 = call %struct.nouveau_fence* @from_fence(%struct.dma_fence* %41)
  store %struct.nouveau_fence* %42, %struct.nouveau_fence** %3, align 8
  br label %43

43:                                               ; preds = %40, %39, %15
  %44 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  ret %struct.nouveau_fence* %44
}

declare dso_local %struct.nouveau_fence* @from_fence(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
