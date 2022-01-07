; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.ltdc_device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LTDC_BCCR = common dso_local global i32 0, align 4
@BCCR_BCBLACK = common dso_local global i32 0, align 4
@LTDC_IER = common dso_local global i32 0, align 4
@IER_RRIE = common dso_local global i32 0, align 4
@IER_FUIE = common dso_local global i32 0, align 4
@IER_TERRIE = common dso_local global i32 0, align 4
@LTDC_SRCR = common dso_local global i32 0, align 4
@SRCR_VBR = common dso_local global i32 0, align 4
@LTDC_GCR = common dso_local global i32 0, align 4
@GCR_LTDCEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @ltdc_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltdc_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.ltdc_device*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = call %struct.ltdc_device* @crtc_to_ltdc(%struct.drm_crtc* %6)
  store %struct.ltdc_device* %7, %struct.ltdc_device** %5, align 8
  %8 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %10 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @LTDC_BCCR, align 4
  %13 = load i32, i32* @BCCR_BCBLACK, align 4
  %14 = call i32 @reg_write(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %16 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LTDC_IER, align 4
  %19 = load i32, i32* @IER_RRIE, align 4
  %20 = load i32, i32* @IER_FUIE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IER_TERRIE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @reg_set(i32 %17, i32 %18, i32 %23)
  %25 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %26 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @LTDC_SRCR, align 4
  %29 = load i32, i32* @SRCR_VBR, align 4
  %30 = call i32 @reg_set(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %32 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LTDC_GCR, align 4
  %35 = load i32, i32* @GCR_LTDCEN, align 4
  %36 = call i32 @reg_set(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %38 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %37)
  ret void
}

declare dso_local %struct.ltdc_device* @crtc_to_ltdc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @reg_set(i32, i32, i32) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
