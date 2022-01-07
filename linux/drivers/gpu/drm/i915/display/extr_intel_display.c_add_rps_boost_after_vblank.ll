; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_add_rps_boost_after_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_add_rps_boost_after_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.dma_fence = type { i32 }
%struct.wait_rps_boost = type { %struct.TYPE_2__, %struct.drm_crtc*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@do_rps_boost = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.dma_fence*)* @add_rps_boost_after_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_rps_boost_after_vblank(%struct.drm_crtc* %0, %struct.dma_fence* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca %struct.wait_rps_boost*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %4, align 8
  %6 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %7 = call i32 @dma_fence_is_i915(%struct.dma_fence* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %52

10:                                               ; preds = %2
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @to_i915(i32 %13)
  %15 = call i32 @INTEL_GEN(i32 %14)
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %52

18:                                               ; preds = %10
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %20 = call i64 @drm_crtc_vblank_get(%struct.drm_crtc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %52

23:                                               ; preds = %18
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.wait_rps_boost* @kmalloc(i32 32, i32 %24)
  store %struct.wait_rps_boost* %25, %struct.wait_rps_boost** %5, align 8
  %26 = load %struct.wait_rps_boost*, %struct.wait_rps_boost** %5, align 8
  %27 = icmp ne %struct.wait_rps_boost* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %30 = call i32 @drm_crtc_vblank_put(%struct.drm_crtc* %29)
  br label %52

31:                                               ; preds = %23
  %32 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %33 = call i32 @dma_fence_get(%struct.dma_fence* %32)
  %34 = call i32 @to_request(i32 %33)
  %35 = load %struct.wait_rps_boost*, %struct.wait_rps_boost** %5, align 8
  %36 = getelementptr inbounds %struct.wait_rps_boost, %struct.wait_rps_boost* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %38 = load %struct.wait_rps_boost*, %struct.wait_rps_boost** %5, align 8
  %39 = getelementptr inbounds %struct.wait_rps_boost, %struct.wait_rps_boost* %38, i32 0, i32 1
  store %struct.drm_crtc* %37, %struct.drm_crtc** %39, align 8
  %40 = load i32, i32* @do_rps_boost, align 4
  %41 = load %struct.wait_rps_boost*, %struct.wait_rps_boost** %5, align 8
  %42 = getelementptr inbounds %struct.wait_rps_boost, %struct.wait_rps_boost* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load %struct.wait_rps_boost*, %struct.wait_rps_boost** %5, align 8
  %45 = getelementptr inbounds %struct.wait_rps_boost, %struct.wait_rps_boost* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %48 = call i32 @drm_crtc_vblank_waitqueue(%struct.drm_crtc* %47)
  %49 = load %struct.wait_rps_boost*, %struct.wait_rps_boost** %5, align 8
  %50 = getelementptr inbounds %struct.wait_rps_boost, %struct.wait_rps_boost* %49, i32 0, i32 0
  %51 = call i32 @add_wait_queue(i32 %48, %struct.TYPE_2__* %50)
  br label %52

52:                                               ; preds = %31, %28, %22, %17, %9
  ret void
}

declare dso_local i32 @dma_fence_is_i915(%struct.dma_fence*) #1

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @to_i915(i32) #1

declare dso_local i64 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local %struct.wait_rps_boost* @kmalloc(i32, i32) #1

declare dso_local i32 @drm_crtc_vblank_put(%struct.drm_crtc*) #1

declare dso_local i32 @to_request(i32) #1

declare dso_local i32 @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @add_wait_queue(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @drm_crtc_vblank_waitqueue(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
