; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_context_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_context_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32, %struct.nv84_fence_chan*, %struct.TYPE_4__* }
%struct.nv84_fence_chan = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.nv84_fence_priv* }
%struct.nv84_fence_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_channel*)* @nv84_fence_context_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv84_fence_context_del(%struct.nouveau_channel* %0) #0 {
  %2 = alloca %struct.nouveau_channel*, align 8
  %3 = alloca %struct.nv84_fence_priv*, align 8
  %4 = alloca %struct.nv84_fence_chan*, align 8
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %2, align 8
  %5 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %8, align 8
  store %struct.nv84_fence_priv* %9, %struct.nv84_fence_priv** %3, align 8
  %10 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %11 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %10, i32 0, i32 1
  %12 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %11, align 8
  store %struct.nv84_fence_chan* %12, %struct.nv84_fence_chan** %4, align 8
  %13 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %3, align 8
  %14 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %17 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %18, 16
  %20 = sdiv i32 %19, 4
  %21 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %4, align 8
  %22 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nouveau_bo_wr32(i32 %15, i32 %20, i32 %24)
  %26 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %3, align 8
  %27 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %4, align 8
  %30 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %29, i32 0, i32 1
  %31 = call i32 @nouveau_vma_del(i32* %30)
  %32 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %3, align 8
  %33 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %4, align 8
  %36 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %35, i32 0, i32 0
  %37 = call i32 @nouveau_fence_context_del(%struct.TYPE_5__* %36)
  %38 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %39 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %38, i32 0, i32 1
  store %struct.nv84_fence_chan* null, %struct.nv84_fence_chan** %39, align 8
  %40 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %4, align 8
  %41 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %40, i32 0, i32 0
  %42 = call i32 @nouveau_fence_context_free(%struct.TYPE_5__* %41)
  ret void
}

declare dso_local i32 @nouveau_bo_wr32(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nouveau_vma_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nouveau_fence_context_del(%struct.TYPE_5__*) #1

declare dso_local i32 @nouveau_fence_context_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
