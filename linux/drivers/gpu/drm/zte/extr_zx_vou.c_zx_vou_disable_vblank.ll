; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_vou_disable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_vou_disable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.zx_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.zx_vou_hw = type { i64 }

@TIMING_INT_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @zx_vou_disable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_vou_disable_vblank(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.zx_crtc*, align 8
  %4 = alloca %struct.zx_vou_hw*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %6 = call %struct.zx_crtc* @to_zx_crtc(%struct.drm_crtc* %5)
  store %struct.zx_crtc* %6, %struct.zx_crtc** %3, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = call %struct.zx_vou_hw* @crtc_to_vou(%struct.drm_crtc* %7)
  store %struct.zx_vou_hw* %8, %struct.zx_vou_hw** %4, align 8
  %9 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %4, align 8
  %10 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TIMING_INT_CTRL, align 8
  %13 = add nsw i64 %11, %12
  %14 = load %struct.zx_crtc*, %struct.zx_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @zx_writel_mask(i64 %13, i32 %18, i32 0)
  ret void
}

declare dso_local %struct.zx_crtc* @to_zx_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.zx_vou_hw* @crtc_to_vou(%struct.drm_crtc*) #1

declare dso_local i32 @zx_writel_mask(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
