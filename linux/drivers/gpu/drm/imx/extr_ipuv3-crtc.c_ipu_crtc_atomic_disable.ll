; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_ipu_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_ipu_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.drm_crtc_state = type { i32 }
%struct.ipu_crtc = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ipu_soc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @ipu_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.ipu_crtc*, align 8
  %6 = alloca %struct.ipu_soc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = call %struct.ipu_crtc* @to_ipu_crtc(%struct.drm_crtc* %7)
  store %struct.ipu_crtc* %8, %struct.ipu_crtc** %5, align 8
  %9 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %10 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ipu_soc* @dev_get_drvdata(i32 %13)
  store %struct.ipu_soc* %14, %struct.ipu_soc** %6, align 8
  %15 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %16 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ipu_dc_disable_channel(i32 %17)
  %19 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %20 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ipu_di_disable(i32 %21)
  %23 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %24 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %25 = call i32 @ipu_crtc_disable_planes(%struct.ipu_crtc* %23, %struct.drm_crtc_state* %24)
  %26 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %27 = call i32 @ipu_dc_disable(%struct.ipu_soc* %26)
  %28 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %29 = call i32 @ipu_prg_disable(%struct.ipu_soc* %28)
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %31 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %30)
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %33 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %38 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %2
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %45 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %43
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %52 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %53 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %51, i32* %56)
  %58 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %59 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %50, %43, %2
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %64 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_irq(i32* %66)
  ret void
}

declare dso_local %struct.ipu_crtc* @to_ipu_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.ipu_soc* @dev_get_drvdata(i32) #1

declare dso_local i32 @ipu_dc_disable_channel(i32) #1

declare dso_local i32 @ipu_di_disable(i32) #1

declare dso_local i32 @ipu_crtc_disable_planes(%struct.ipu_crtc*, %struct.drm_crtc_state*) #1

declare dso_local i32 @ipu_dc_disable(%struct.ipu_soc*) #1

declare dso_local i32 @ipu_prg_disable(%struct.ipu_soc*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
