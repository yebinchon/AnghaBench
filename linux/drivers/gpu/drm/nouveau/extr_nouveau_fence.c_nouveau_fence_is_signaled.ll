; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_is_signaled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_is_signaled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.nouveau_fence = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_fence_chan = type { i64 (%struct.nouveau_channel*)* }
%struct.nouveau_channel = type opaque
%struct.nouveau_channel.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_fence*)* @nouveau_fence_is_signaled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_fence_is_signaled(%struct.dma_fence* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.nouveau_fence*, align 8
  %4 = alloca %struct.nouveau_fence_chan*, align 8
  %5 = alloca %struct.nouveau_channel.0*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_fence* %0, %struct.dma_fence** %2, align 8
  %7 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %8 = call %struct.nouveau_fence* @from_fence(%struct.dma_fence* %7)
  store %struct.nouveau_fence* %8, %struct.nouveau_fence** %3, align 8
  %9 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %10 = call %struct.nouveau_fence_chan* @nouveau_fctx(%struct.nouveau_fence* %9)
  store %struct.nouveau_fence_chan* %10, %struct.nouveau_fence_chan** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %13 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.nouveau_channel.0* @rcu_dereference(i32 %14)
  store %struct.nouveau_channel.0* %15, %struct.nouveau_channel.0** %5, align 8
  %16 = load %struct.nouveau_channel.0*, %struct.nouveau_channel.0** %5, align 8
  %17 = icmp ne %struct.nouveau_channel.0* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %4, align 8
  %20 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %19, i32 0, i32 0
  %21 = load i64 (%struct.nouveau_channel*)*, i64 (%struct.nouveau_channel*)** %20, align 8
  %22 = load %struct.nouveau_channel.0*, %struct.nouveau_channel.0** %5, align 8
  %23 = bitcast %struct.nouveau_channel.0* %22 to %struct.nouveau_channel*
  %24 = call i64 %21(%struct.nouveau_channel* %23)
  %25 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %26 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %24, %28
  %30 = trunc i64 %29 to i32
  %31 = icmp sge i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %18, %1
  %34 = call i32 (...) @rcu_read_unlock()
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local %struct.nouveau_fence* @from_fence(%struct.dma_fence*) #1

declare dso_local %struct.nouveau_fence_chan* @nouveau_fctx(%struct.nouveau_fence*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nouveau_channel.0* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
