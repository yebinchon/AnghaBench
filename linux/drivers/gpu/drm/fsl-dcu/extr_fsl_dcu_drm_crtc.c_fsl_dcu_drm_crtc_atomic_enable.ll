; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_crtc.c_fsl_dcu_drm_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_crtc.c_fsl_dcu_drm_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.fsl_dcu_drm_device* }
%struct.fsl_dcu_drm_device = type { i32, i32 }
%struct.drm_crtc_state = type { i32 }

@DCU_DCU_MODE = common dso_local global i32 0, align 4
@DCU_MODE_DCU_MODE_MASK = common dso_local global i32 0, align 4
@DCU_MODE_NORMAL = common dso_local global i32 0, align 4
@DCU_UPDATE_MODE = common dso_local global i32 0, align 4
@DCU_UPDATE_MODE_READREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @fsl_dcu_drm_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_dcu_drm_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.fsl_dcu_drm_device*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %11, align 8
  store %struct.fsl_dcu_drm_device* %12, %struct.fsl_dcu_drm_device** %6, align 8
  %13 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %6, align 8
  %14 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_prepare_enable(i32 %15)
  %17 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %6, align 8
  %18 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DCU_DCU_MODE, align 4
  %21 = load i32, i32* @DCU_MODE_DCU_MODE_MASK, align 4
  %22 = load i32, i32* @DCU_MODE_NORMAL, align 4
  %23 = call i32 @DCU_MODE_DCU_MODE(i32 %22)
  %24 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %23)
  %25 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %6, align 8
  %26 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DCU_UPDATE_MODE, align 4
  %29 = load i32, i32* @DCU_UPDATE_MODE_READREG, align 4
  %30 = call i32 @regmap_write(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %32 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %31)
  ret void
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @DCU_MODE_DCU_MODE(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
