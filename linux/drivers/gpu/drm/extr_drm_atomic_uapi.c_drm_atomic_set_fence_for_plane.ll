; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_uapi.c_drm_atomic_set_fence_for_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_uapi.c_drm_atomic_set_fence_for_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { %struct.dma_fence* }
%struct.dma_fence = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_atomic_set_fence_for_plane(%struct.drm_plane_state* %0, %struct.dma_fence* %1) #0 {
  %3 = alloca %struct.drm_plane_state*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %3, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %4, align 8
  %5 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %6 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %5, i32 0, i32 0
  %7 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %8 = icmp ne %struct.dma_fence* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %11 = call i32 @dma_fence_put(%struct.dma_fence* %10)
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %15 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 0
  store %struct.dma_fence* %13, %struct.dma_fence** %15, align 8
  br label %16

16:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
