; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nvc0_fence.c_nvc0_fence_context_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nvc0_fence.c_nvc0_fence_context_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.nv84_fence_chan* }
%struct.nv84_fence_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@nvc0_fence_emit32 = common dso_local global i32 0, align 4
@nvc0_fence_sync32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*)* @nvc0_fence_context_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_fence_context_new(%struct.nouveau_channel* %0) #0 {
  %2 = alloca %struct.nouveau_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nv84_fence_chan*, align 8
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %2, align 8
  %5 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %6 = call i32 @nv84_fence_context_new(%struct.nouveau_channel* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %11 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %10, i32 0, i32 0
  %12 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %11, align 8
  store %struct.nv84_fence_chan* %12, %struct.nv84_fence_chan** %4, align 8
  %13 = load i32, i32* @nvc0_fence_emit32, align 4
  %14 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %4, align 8
  %15 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @nvc0_fence_sync32, align 4
  %18 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %4, align 8
  %19 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %9, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @nv84_fence_context_new(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
