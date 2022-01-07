; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.rcar_du_crtc = type { i64, %struct.rcar_du_device* }
%struct.rcar_du_device = type { %struct.rcar_du_encoder**, %struct.TYPE_4__* }
%struct.rcar_du_encoder = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rcar_du_crtc_state = type { i32 }

@RCAR_DU_OUTPUT_DPAD0 = common dso_local global i64 0, align 8
@RCAR_DU_OUTPUT_LVDS0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @rcar_du_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.rcar_du_crtc*, align 8
  %6 = alloca %struct.rcar_du_crtc_state*, align 8
  %7 = alloca %struct.rcar_du_device*, align 8
  %8 = alloca %struct.rcar_du_encoder*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = call %struct.rcar_du_crtc* @to_rcar_crtc(%struct.drm_crtc* %10)
  store %struct.rcar_du_crtc* %11, %struct.rcar_du_crtc** %5, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = call %struct.rcar_du_crtc_state* @to_rcar_crtc_state(%struct.TYPE_6__* %14)
  store %struct.rcar_du_crtc_state* %15, %struct.rcar_du_crtc_state** %6, align 8
  %16 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %16, i32 0, i32 1
  %18 = load %struct.rcar_du_device*, %struct.rcar_du_device** %17, align 8
  store %struct.rcar_du_device* %18, %struct.rcar_du_device** %7, align 8
  %19 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %20 = call i32 @rcar_du_crtc_get(%struct.rcar_du_crtc* %19)
  %21 = load %struct.rcar_du_device*, %struct.rcar_du_device** %7, align 8
  %22 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %27 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @BIT(i64 %28)
  %30 = and i32 %25, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %2
  %33 = load %struct.rcar_du_crtc_state*, %struct.rcar_du_crtc_state** %6, align 8
  %34 = getelementptr inbounds %struct.rcar_du_crtc_state, %struct.rcar_du_crtc_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @RCAR_DU_OUTPUT_DPAD0, align 8
  %37 = call i32 @BIT(i64 %36)
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %32
  %40 = load %struct.rcar_du_device*, %struct.rcar_du_device** %7, align 8
  %41 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %40, i32 0, i32 0
  %42 = load %struct.rcar_du_encoder**, %struct.rcar_du_encoder*** %41, align 8
  %43 = load i64, i64* @RCAR_DU_OUTPUT_LVDS0, align 8
  %44 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %45 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = getelementptr inbounds %struct.rcar_du_encoder*, %struct.rcar_du_encoder** %42, i64 %47
  %49 = load %struct.rcar_du_encoder*, %struct.rcar_du_encoder** %48, align 8
  store %struct.rcar_du_encoder* %49, %struct.rcar_du_encoder** %8, align 8
  %50 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %51 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store %struct.drm_display_mode* %53, %struct.drm_display_mode** %9, align 8
  %54 = load %struct.rcar_du_encoder*, %struct.rcar_du_encoder** %8, align 8
  %55 = getelementptr inbounds %struct.rcar_du_encoder, %struct.rcar_du_encoder* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 1000
  %62 = call i32 @rcar_lvds_clk_enable(i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %39, %32, %2
  %64 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %65 = call i32 @rcar_du_crtc_start(%struct.rcar_du_crtc* %64)
  ret void
}

declare dso_local %struct.rcar_du_crtc* @to_rcar_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.rcar_du_crtc_state* @to_rcar_crtc_state(%struct.TYPE_6__*) #1

declare dso_local i32 @rcar_du_crtc_get(%struct.rcar_du_crtc*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @rcar_lvds_clk_enable(i32, i32) #1

declare dso_local i32 @rcar_du_crtc_start(%struct.rcar_du_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
