; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_hibmc_crtc_atomic_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_hibmc_crtc_atomic_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.hibmc_drm_private* }
%struct.hibmc_drm_private = type { i64 }
%struct.drm_crtc_state = type { i32 }

@HIBMC_PW_MODE_CTL_MODE_MODE0 = common dso_local global i32 0, align 4
@HIBMC_CURRENT_GATE = common dso_local global i64 0, align 8
@HIBMC_CURR_GATE_DISPLAY_MASK = common dso_local global i32 0, align 4
@HIBMC_CURR_GATE_LOCALMEM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @hibmc_crtc_atomic_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hibmc_crtc_atomic_begin(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.hibmc_drm_private*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %12, align 8
  store %struct.hibmc_drm_private* %13, %struct.hibmc_drm_private** %7, align 8
  %14 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %7, align 8
  %15 = load i32, i32* @HIBMC_PW_MODE_CTL_MODE_MODE0, align 4
  %16 = call i32 @hibmc_set_power_mode(%struct.hibmc_drm_private* %14, i32 %15)
  %17 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %7, align 8
  %18 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HIBMC_CURRENT_GATE, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @HIBMC_CURR_GATE_DISPLAY_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @HIBMC_CURR_GATE_LOCALMEM_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = call i32 @HIBMC_CURR_GATE_DISPLAY(i32 1)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = call i32 @HIBMC_CURR_GATE_LOCALMEM(i32 1)
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @hibmc_set_current_gate(%struct.hibmc_drm_private* %37, i32 %38)
  ret void
}

declare dso_local i32 @hibmc_set_power_mode(%struct.hibmc_drm_private*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @HIBMC_CURR_GATE_DISPLAY(i32) #1

declare dso_local i32 @HIBMC_CURR_GATE_LOCALMEM(i32) #1

declare dso_local i32 @hibmc_set_current_gate(%struct.hibmc_drm_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
