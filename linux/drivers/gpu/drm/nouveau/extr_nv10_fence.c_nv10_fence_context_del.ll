; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv10_fence.c_nv10_fence_context_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv10_fence.c_nv10_fence_context_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.nv10_fence_chan* }
%struct.nv10_fence_chan = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv10_fence_context_del(%struct.nouveau_channel* %0) #0 {
  %2 = alloca %struct.nouveau_channel*, align 8
  %3 = alloca %struct.nv10_fence_chan*, align 8
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %2, align 8
  %4 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %5 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %4, i32 0, i32 0
  %6 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %5, align 8
  store %struct.nv10_fence_chan* %6, %struct.nv10_fence_chan** %3, align 8
  %7 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %3, align 8
  %8 = getelementptr inbounds %struct.nv10_fence_chan, %struct.nv10_fence_chan* %7, i32 0, i32 0
  %9 = call i32 @nouveau_fence_context_del(i32* %8)
  %10 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %3, align 8
  %11 = getelementptr inbounds %struct.nv10_fence_chan, %struct.nv10_fence_chan* %10, i32 0, i32 1
  %12 = call i32 @nvif_object_fini(i32* %11)
  %13 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %14 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %13, i32 0, i32 0
  store %struct.nv10_fence_chan* null, %struct.nv10_fence_chan** %14, align 8
  %15 = load %struct.nv10_fence_chan*, %struct.nv10_fence_chan** %3, align 8
  %16 = getelementptr inbounds %struct.nv10_fence_chan, %struct.nv10_fence_chan* %15, i32 0, i32 0
  %17 = call i32 @nouveau_fence_context_free(i32* %16)
  ret void
}

declare dso_local i32 @nouveau_fence_context_del(i32*) #1

declare dso_local i32 @nvif_object_fini(i32*) #1

declare dso_local i32 @nouveau_fence_context_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
