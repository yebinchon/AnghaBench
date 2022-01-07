; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.drm_crtc_state = type { i32 }
%struct.rcar_du_crtc = type { i64, %struct.rcar_du_device* }
%struct.rcar_du_device = type { %struct.rcar_du_encoder**, %struct.TYPE_5__* }
%struct.rcar_du_encoder = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rcar_du_crtc_state = type { i32 }

@RCAR_DU_OUTPUT_DPAD0 = common dso_local global i64 0, align 8
@RCAR_DU_OUTPUT_LVDS0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @rcar_du_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.rcar_du_crtc*, align 8
  %6 = alloca %struct.rcar_du_crtc_state*, align 8
  %7 = alloca %struct.rcar_du_device*, align 8
  %8 = alloca %struct.rcar_du_encoder*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = call %struct.rcar_du_crtc* @to_rcar_crtc(%struct.drm_crtc* %9)
  store %struct.rcar_du_crtc* %10, %struct.rcar_du_crtc** %5, align 8
  %11 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %12 = call %struct.rcar_du_crtc_state* @to_rcar_crtc_state(%struct.drm_crtc_state* %11)
  store %struct.rcar_du_crtc_state* %12, %struct.rcar_du_crtc_state** %6, align 8
  %13 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %14 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %13, i32 0, i32 1
  %15 = load %struct.rcar_du_device*, %struct.rcar_du_device** %14, align 8
  store %struct.rcar_du_device* %15, %struct.rcar_du_device** %7, align 8
  %16 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %17 = call i32 @rcar_du_crtc_stop(%struct.rcar_du_crtc* %16)
  %18 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %19 = call i32 @rcar_du_crtc_put(%struct.rcar_du_crtc* %18)
  %20 = load %struct.rcar_du_device*, %struct.rcar_du_device** %7, align 8
  %21 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %26 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @BIT(i64 %27)
  %29 = and i32 %24, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %2
  %32 = load %struct.rcar_du_crtc_state*, %struct.rcar_du_crtc_state** %6, align 8
  %33 = getelementptr inbounds %struct.rcar_du_crtc_state, %struct.rcar_du_crtc_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @RCAR_DU_OUTPUT_DPAD0, align 8
  %36 = call i32 @BIT(i64 %35)
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load %struct.rcar_du_device*, %struct.rcar_du_device** %7, align 8
  %40 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %39, i32 0, i32 0
  %41 = load %struct.rcar_du_encoder**, %struct.rcar_du_encoder*** %40, align 8
  %42 = load i64, i64* @RCAR_DU_OUTPUT_LVDS0, align 8
  %43 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %44 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %42, %45
  %47 = getelementptr inbounds %struct.rcar_du_encoder*, %struct.rcar_du_encoder** %41, i64 %46
  %48 = load %struct.rcar_du_encoder*, %struct.rcar_du_encoder** %47, align 8
  store %struct.rcar_du_encoder* %48, %struct.rcar_du_encoder** %8, align 8
  %49 = load %struct.rcar_du_encoder*, %struct.rcar_du_encoder** %8, align 8
  %50 = getelementptr inbounds %struct.rcar_du_encoder, %struct.rcar_du_encoder* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @rcar_lvds_clk_disable(i32 %52)
  br label %54

54:                                               ; preds = %38, %31, %2
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %56 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = call i32 @spin_lock_irq(i32* %58)
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %61 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %54
  %67 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %68 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %69 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %67, i32* %72)
  %74 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %75 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %66, %54
  %79 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %80 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock_irq(i32* %82)
  ret void
}

declare dso_local %struct.rcar_du_crtc* @to_rcar_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.rcar_du_crtc_state* @to_rcar_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local i32 @rcar_du_crtc_stop(%struct.rcar_du_crtc*) #1

declare dso_local i32 @rcar_du_crtc_put(%struct.rcar_du_crtc*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @rcar_lvds_clk_disable(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
