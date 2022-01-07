; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.zx_crtc = type { i64, i32, %struct.zx_vou_hw*, %struct.zx_crtc_bits* }
%struct.zx_vou_hw = type { i64 }
%struct.zx_crtc_bits = type { i32 }

@CHN_CTRL0 = common dso_local global i64 0, align 8
@CHN_ENABLE = common dso_local global i32 0, align 4
@TIMING_TC_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @zx_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.zx_crtc*, align 8
  %6 = alloca %struct.zx_crtc_bits*, align 8
  %7 = alloca %struct.zx_vou_hw*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = call %struct.zx_crtc* @to_zx_crtc(%struct.drm_crtc* %8)
  store %struct.zx_crtc* %9, %struct.zx_crtc** %5, align 8
  %10 = load %struct.zx_crtc*, %struct.zx_crtc** %5, align 8
  %11 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %10, i32 0, i32 3
  %12 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %11, align 8
  store %struct.zx_crtc_bits* %12, %struct.zx_crtc_bits** %6, align 8
  %13 = load %struct.zx_crtc*, %struct.zx_crtc** %5, align 8
  %14 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %13, i32 0, i32 2
  %15 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %14, align 8
  store %struct.zx_vou_hw* %15, %struct.zx_vou_hw** %7, align 8
  %16 = load %struct.zx_crtc*, %struct.zx_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @clk_disable_unprepare(i32 %18)
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %21 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %20)
  %22 = load %struct.zx_crtc*, %struct.zx_crtc** %5, align 8
  %23 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHN_CTRL0, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* @CHN_ENABLE, align 4
  %28 = call i32 @zx_writel_mask(i64 %26, i32 %27, i32 0)
  %29 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %7, align 8
  %30 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TIMING_TC_ENABLE, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %6, align 8
  %35 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @zx_writel_mask(i64 %33, i32 %36, i32 0)
  ret void
}

declare dso_local %struct.zx_crtc* @to_zx_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @zx_writel_mask(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
