; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nouveau_fence_chan = type { i32 }

@DMA_FENCE_FLAG_USER_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_fence*)* @nouveau_fence_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_fence_signal(%struct.nouveau_fence* %0) #0 {
  %2 = alloca %struct.nouveau_fence*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_fence_chan*, align 8
  store %struct.nouveau_fence* %0, %struct.nouveau_fence** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.nouveau_fence*, %struct.nouveau_fence** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %5, i32 0, i32 0
  %7 = call i32 @dma_fence_signal_locked(%struct.TYPE_3__* %6)
  %8 = load %struct.nouveau_fence*, %struct.nouveau_fence** %2, align 8
  %9 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %8, i32 0, i32 2
  %10 = call i32 @list_del(i32* %9)
  %11 = load %struct.nouveau_fence*, %struct.nouveau_fence** %2, align 8
  %12 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rcu_assign_pointer(i32 %13, i32* null)
  %15 = load i32, i32* @DMA_FENCE_FLAG_USER_BITS, align 4
  %16 = load %struct.nouveau_fence*, %struct.nouveau_fence** %2, align 8
  %17 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %15, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.nouveau_fence*, %struct.nouveau_fence** %2, align 8
  %23 = call %struct.nouveau_fence_chan* @nouveau_fctx(%struct.nouveau_fence* %22)
  store %struct.nouveau_fence_chan* %23, %struct.nouveau_fence_chan** %4, align 8
  %24 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %4, align 8
  %25 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %21
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.nouveau_fence*, %struct.nouveau_fence** %2, align 8
  %33 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %32, i32 0, i32 0
  %34 = call i32 @dma_fence_put(%struct.TYPE_3__* %33)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @dma_fence_signal_locked(%struct.TYPE_3__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.nouveau_fence_chan* @nouveau_fctx(%struct.nouveau_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
