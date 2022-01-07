; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_no_signaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_no_signaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.nouveau_fence = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_fence*)* @nouveau_fence_no_signaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_fence_no_signaling(%struct.dma_fence* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.nouveau_fence*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %3, align 8
  %5 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %6 = call %struct.nouveau_fence* @from_fence(%struct.dma_fence* %5)
  store %struct.nouveau_fence* %6, %struct.nouveau_fence** %4, align 8
  %7 = load %struct.nouveau_fence*, %struct.nouveau_fence** %4, align 8
  %8 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @kref_read(i32* %9)
  %11 = icmp sle i32 %10, 1
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %15 = call i64 @nouveau_fence_is_signaled(%struct.dma_fence* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.nouveau_fence*, %struct.nouveau_fence** %4, align 8
  %19 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %18, i32 0, i32 1
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.nouveau_fence*, %struct.nouveau_fence** %4, align 8
  %22 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %21, i32 0, i32 0
  %23 = call i32 @dma_fence_put(%struct.TYPE_2__* %22)
  store i32 0, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.nouveau_fence* @from_fence(%struct.dma_fence*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i64 @nouveau_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dma_fence_put(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
