; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__*, %struct.drm_device* }
%struct.TYPE_2__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }
%struct.drm_device = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.vc4_dev = type { i32 }
%struct.vc4_crtc = type { i32 }
%struct.vc4_crtc_state = type { i64 }

@SCALER_DISPCTRLX_WIDTH = common dso_local global i32 0, align 4
@SCALER_DISPCTRLX_HEIGHT = common dso_local global i32 0, align 4
@SCALER_DISPCTRLX_ENABLE = common dso_local global i32 0, align 4
@SCALER_DISPCTRLX_ONESHOT = common dso_local global i32 0, align 4
@PV_V_CONTROL = common dso_local global i32 0, align 4
@PV_VCONTROL_VIDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @vc4_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.vc4_dev*, align 8
  %7 = alloca %struct.vc4_crtc*, align 8
  %8 = alloca %struct.vc4_crtc_state*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %13)
  store %struct.vc4_dev* %14, %struct.vc4_dev** %6, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = call %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc* %15)
  store %struct.vc4_crtc* %16, %struct.vc4_crtc** %7, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call %struct.vc4_crtc_state* @to_vc4_crtc_state(%struct.TYPE_2__* %19)
  store %struct.vc4_crtc_state* %20, %struct.vc4_crtc_state** %8, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.drm_display_mode* %24, %struct.drm_display_mode** %9, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = call i32 @require_hvs_enabled(%struct.drm_device* %25)
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %28 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %27)
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %30 = call i32 @vc4_crtc_update_dlist(%struct.drm_crtc* %29)
  %31 = load %struct.vc4_crtc*, %struct.vc4_crtc** %7, align 8
  %32 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SCALER_DISPCTRLX(i32 %33)
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SCALER_DISPCTRLX_WIDTH, align 4
  %39 = call i32 @VC4_SET_FIELD(i32 %37, i32 %38)
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SCALER_DISPCTRLX_HEIGHT, align 4
  %44 = call i32 @VC4_SET_FIELD(i32 %42, i32 %43)
  %45 = or i32 %39, %44
  %46 = load i32, i32* @SCALER_DISPCTRLX_ENABLE, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.vc4_crtc_state*, %struct.vc4_crtc_state** %8, align 8
  %49 = getelementptr inbounds %struct.vc4_crtc_state, %struct.vc4_crtc_state* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %2
  %53 = load i32, i32* @SCALER_DISPCTRLX_ONESHOT, align 4
  br label %55

54:                                               ; preds = %2
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = or i32 %47, %56
  %58 = call i32 @HVS_WRITE(i32 %34, i32 %57)
  %59 = load %struct.vc4_crtc_state*, %struct.vc4_crtc_state** %8, align 8
  %60 = getelementptr inbounds %struct.vc4_crtc_state, %struct.vc4_crtc_state* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @PV_V_CONTROL, align 4
  %65 = load i32, i32* @PV_V_CONTROL, align 4
  %66 = call i32 @CRTC_READ(i32 %65)
  %67 = load i32, i32* @PV_VCONTROL_VIDEN, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @CRTC_WRITE(i32 %64, i32 %68)
  br label %70

70:                                               ; preds = %63, %55
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.vc4_crtc_state* @to_vc4_crtc_state(%struct.TYPE_2__*) #1

declare dso_local i32 @require_hvs_enabled(%struct.drm_device*) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

declare dso_local i32 @vc4_crtc_update_dlist(%struct.drm_crtc*) #1

declare dso_local i32 @HVS_WRITE(i32, i32) #1

declare dso_local i32 @SCALER_DISPCTRLX(i32) #1

declare dso_local i32 @VC4_SET_FIELD(i32, i32) #1

declare dso_local i32 @CRTC_WRITE(i32, i32) #1

declare dso_local i32 @CRTC_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
