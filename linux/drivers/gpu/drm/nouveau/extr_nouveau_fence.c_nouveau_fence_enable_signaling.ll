; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_enable_signaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_enable_signaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.nouveau_fence = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_fence_chan = type { i32, i32 }

@DMA_FENCE_FLAG_USER_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_fence*)* @nouveau_fence_enable_signaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_fence_enable_signaling(%struct.dma_fence* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.nouveau_fence*, align 8
  %4 = alloca %struct.nouveau_fence_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_fence* %0, %struct.dma_fence** %2, align 8
  %6 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %7 = call %struct.nouveau_fence* @from_fence(%struct.dma_fence* %6)
  store %struct.nouveau_fence* %7, %struct.nouveau_fence** %3, align 8
  %8 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %9 = call %struct.nouveau_fence_chan* @nouveau_fctx(%struct.nouveau_fence* %8)
  store %struct.nouveau_fence_chan* %9, %struct.nouveau_fence_chan** %4, align 8
  %10 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %4, align 8
  %11 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %4, align 8
  %17 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %16, i32 0, i32 0
  %18 = call i32 @nvif_notify_get(i32* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %21 = call i32 @nouveau_fence_no_signaling(%struct.dma_fence* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @DMA_FENCE_FLAG_USER_BITS, align 4
  %26 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %27 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @set_bit(i32 %25, i32* %28)
  br label %41

30:                                               ; preds = %19
  %31 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %4, align 8
  %32 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %4, align 8
  %38 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %37, i32 0, i32 0
  %39 = call i32 @nvif_notify_put(i32* %38)
  br label %40

40:                                               ; preds = %36, %30
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.nouveau_fence* @from_fence(%struct.dma_fence*) #1

declare dso_local %struct.nouveau_fence_chan* @nouveau_fctx(%struct.nouveau_fence*) #1

declare dso_local i32 @nvif_notify_get(i32*) #1

declare dso_local i32 @nouveau_fence_no_signaling(%struct.dma_fence*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nvif_notify_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
