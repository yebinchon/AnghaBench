; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__*, %struct.drm_device* }
%struct.TYPE_2__ = type { i32* }
%struct.drm_device = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.vc4_dev = type { i32 }
%struct.vc4_crtc = type { i32 }

@PV_V_CONTROL = common dso_local global i32 0, align 4
@PV_VCONTROL_VIDEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Timeout waiting for !PV_VCONTROL_VIDEN\0A\00", align 1
@SCALER_DISPCTRLX_ENABLE = common dso_local global i32 0, align 4
@SCALER_DISPCTRLX_RESET = common dso_local global i32 0, align 4
@SCALER_DISPSTATX_MODE = common dso_local global i32 0, align 4
@SCALER_DISPSTATX_MODE_DISABLED = common dso_local global i64 0, align 8
@SCALER_DISPSTATX_FULL = common dso_local global i32 0, align 4
@SCALER_DISPSTATX_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @vc4_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.vc4_dev*, align 8
  %7 = alloca %struct.vc4_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %14)
  store %struct.vc4_dev* %15, %struct.vc4_dev** %6, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = call %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc* %16)
  store %struct.vc4_crtc* %17, %struct.vc4_crtc** %7, align 8
  %18 = load %struct.vc4_crtc*, %struct.vc4_crtc** %7, align 8
  %19 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = call i32 @require_hvs_enabled(%struct.drm_device* %21)
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %24 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %23)
  %25 = load i32, i32* @PV_V_CONTROL, align 4
  %26 = load i32, i32* @PV_V_CONTROL, align 4
  %27 = call i32 @CRTC_READ(i32 %26)
  %28 = load i32, i32* @PV_VCONTROL_VIDEN, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @CRTC_WRITE(i32 %25, i32 %30)
  %32 = load i32, i32* @PV_V_CONTROL, align 4
  %33 = call i32 @CRTC_READ(i32 %32)
  %34 = load i32, i32* @PV_VCONTROL_VIDEN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @wait_for(i32 %38, i32 1)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @WARN_ONCE(i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @SCALER_DISPCTRLX(i32 %42)
  %44 = call i32 @HVS_READ(i32 %43)
  %45 = load i32, i32* @SCALER_DISPCTRLX_ENABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %2
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @SCALER_DISPCTRLX(i32 %49)
  %51 = load i32, i32* @SCALER_DISPCTRLX_RESET, align 4
  %52 = call i32 @HVS_WRITE(i32 %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @SCALER_DISPCTRLX(i32 %53)
  %55 = call i32 @HVS_WRITE(i32 %54, i32 0)
  br label %56

56:                                               ; preds = %48, %2
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @SCALER_DISPCTRLX(i32 %57)
  %59 = call i32 @HVS_READ(i32 %58)
  %60 = load i32, i32* @SCALER_DISPCTRLX_RESET, align 4
  %61 = and i32 %59, %60
  %62 = call i32 @WARN_ON_ONCE(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @SCALER_DISPSTATX(i32 %63)
  %65 = call i32 @HVS_READ(i32 %64)
  %66 = load i32, i32* @SCALER_DISPSTATX_MODE, align 4
  %67 = call i64 @VC4_GET_FIELD(i32 %65, i32 %66)
  %68 = load i64, i64* @SCALER_DISPSTATX_MODE_DISABLED, align 8
  %69 = icmp ne i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @WARN_ON_ONCE(i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @SCALER_DISPSTATX(i32 %72)
  %74 = call i32 @HVS_READ(i32 %73)
  %75 = load i32, i32* @SCALER_DISPSTATX_FULL, align 4
  %76 = load i32, i32* @SCALER_DISPSTATX_EMPTY, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = load i32, i32* @SCALER_DISPSTATX_EMPTY, align 4
  %80 = icmp ne i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @WARN_ON_ONCE(i32 %81)
  %83 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %84 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %109

89:                                               ; preds = %56
  %90 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %91 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %90, i32 0, i32 0
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @spin_lock_irqsave(i32* %91, i64 %92)
  %94 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %95 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %96 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %94, i32* %99)
  %101 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %102 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32* null, i32** %104, align 8
  %105 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %106 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %105, i32 0, i32 0
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  br label %109

109:                                              ; preds = %89, %56
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @require_hvs_enabled(%struct.drm_device*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @CRTC_WRITE(i32, i32) #1

declare dso_local i32 @CRTC_READ(i32) #1

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @HVS_READ(i32) #1

declare dso_local i32 @SCALER_DISPCTRLX(i32) #1

declare dso_local i32 @HVS_WRITE(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @VC4_GET_FIELD(i32, i32) #1

declare dso_local i32 @SCALER_DISPSTATX(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
