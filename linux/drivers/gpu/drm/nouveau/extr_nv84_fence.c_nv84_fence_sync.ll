; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nouveau_channel = type { i32, %struct.nv84_fence_chan* }
%struct.nv84_fence_chan = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (%struct.nouveau_channel.0*, i64, i32)* }
%struct.nouveau_channel.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_fence*, %struct.nouveau_channel*, %struct.nouveau_channel*)* @nv84_fence_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv84_fence_sync(%struct.nouveau_fence* %0, %struct.nouveau_channel* %1, %struct.nouveau_channel* %2) #0 {
  %4 = alloca %struct.nouveau_fence*, align 8
  %5 = alloca %struct.nouveau_channel*, align 8
  %6 = alloca %struct.nouveau_channel*, align 8
  %7 = alloca %struct.nv84_fence_chan*, align 8
  %8 = alloca i64, align 8
  store %struct.nouveau_fence* %0, %struct.nouveau_fence** %4, align 8
  store %struct.nouveau_channel* %1, %struct.nouveau_channel** %5, align 8
  store %struct.nouveau_channel* %2, %struct.nouveau_channel** %6, align 8
  %9 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %10 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %9, i32 0, i32 1
  %11 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %10, align 8
  store %struct.nv84_fence_chan* %11, %struct.nv84_fence_chan** %7, align 8
  %12 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %7, align 8
  %13 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %18 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %19, 16
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %16, %21
  store i64 %22, i64* %8, align 8
  %23 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %7, align 8
  %24 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32 (%struct.nouveau_channel.0*, i64, i32)*, i32 (%struct.nouveau_channel.0*, i64, i32)** %25, align 8
  %27 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %28 = bitcast %struct.nouveau_channel* %27 to %struct.nouveau_channel.0*
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.nouveau_fence*, %struct.nouveau_fence** %4, align 8
  %31 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %26(%struct.nouveau_channel.0* %28, i64 %29, i32 %33)
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
