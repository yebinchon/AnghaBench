; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.nouveau_fence_chan = type { i32, i32 }
%struct.nouveau_channel = type { i32 }

@nouveau_fence_ops_legacy = common dso_local global i32 0, align 4
@nouveau_fence_ops_uevent = common dso_local global i32 0, align 4
@DMA_FENCE_FLAG_SIGNALED_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fence_done(%struct.nouveau_fence* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_fence*, align 8
  %4 = alloca %struct.nouveau_fence_chan*, align 8
  %5 = alloca %struct.nouveau_channel*, align 8
  %6 = alloca i64, align 8
  store %struct.nouveau_fence* %0, %struct.nouveau_fence** %3, align 8
  %7 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, @nouveau_fence_ops_legacy
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, @nouveau_fence_ops_uevent
  br i1 %17, label %18, label %56

18:                                               ; preds = %12, %1
  %19 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %20 = call %struct.nouveau_fence_chan* @nouveau_fctx(%struct.nouveau_fence* %19)
  store %struct.nouveau_fence_chan* %20, %struct.nouveau_fence_chan** %4, align 8
  %21 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %22 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %23 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %21, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %60

28:                                               ; preds = %18
  %29 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %4, align 8
  %30 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %29, i32 0, i32 0
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %34 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %4, align 8
  %37 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %36, i32 0, i32 0
  %38 = call i32 @lockdep_is_held(i32* %37)
  %39 = call %struct.nouveau_channel* @rcu_dereference_protected(i32 %35, i32 %38)
  store %struct.nouveau_channel* %39, %struct.nouveau_channel** %5, align 8
  %40 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %41 = icmp ne %struct.nouveau_channel* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %28
  %43 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %44 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %4, align 8
  %45 = call i64 @nouveau_fence_update(%struct.nouveau_channel* %43, %struct.nouveau_fence_chan* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %4, align 8
  %49 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %48, i32 0, i32 1
  %50 = call i32 @nvif_notify_put(i32* %49)
  br label %51

51:                                               ; preds = %47, %42, %28
  %52 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %4, align 8
  %53 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %52, i32 0, i32 0
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %12
  %57 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %58 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %57, i32 0, i32 0
  %59 = call i32 @dma_fence_is_signaled(%struct.TYPE_2__* %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %27
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.nouveau_fence_chan* @nouveau_fctx(%struct.nouveau_fence*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.nouveau_channel* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @nouveau_fence_update(%struct.nouveau_channel*, %struct.nouveau_fence_chan*) #1

declare dso_local i32 @nvif_notify_put(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_fence_is_signaled(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
