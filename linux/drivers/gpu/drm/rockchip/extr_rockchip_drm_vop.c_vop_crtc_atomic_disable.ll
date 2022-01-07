; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.vop = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@common = common dso_local global i32 0, align 4
@standby = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @vop_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vop_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.vop*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = call %struct.vop* @to_vop(%struct.drm_crtc* %6)
  store %struct.vop* %7, %struct.vop** %5, align 8
  %8 = load %struct.vop*, %struct.vop** %5, align 8
  %9 = getelementptr inbounds %struct.vop, %struct.vop* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %20 = call i32 @rockchip_drm_set_win_enabled(%struct.drm_crtc* %19, i32 0)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.vop*, %struct.vop** %5, align 8
  %23 = getelementptr inbounds %struct.vop, %struct.vop* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %26 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %25)
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %28 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %74

34:                                               ; preds = %21
  %35 = load %struct.vop*, %struct.vop** %5, align 8
  %36 = getelementptr inbounds %struct.vop, %struct.vop* %35, i32 0, i32 5
  %37 = call i32 @reinit_completion(i32* %36)
  %38 = load %struct.vop*, %struct.vop** %5, align 8
  %39 = call i32 @vop_dsp_hold_valid_irq_enable(%struct.vop* %38)
  %40 = load %struct.vop*, %struct.vop** %5, align 8
  %41 = getelementptr inbounds %struct.vop, %struct.vop* %40, i32 0, i32 6
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.vop*, %struct.vop** %5, align 8
  %44 = load i32, i32* @common, align 4
  %45 = load i32, i32* @standby, align 4
  %46 = call i32 @VOP_REG_SET(%struct.vop* %43, i32 %44, i32 %45, i32 1)
  %47 = load %struct.vop*, %struct.vop** %5, align 8
  %48 = getelementptr inbounds %struct.vop, %struct.vop* %47, i32 0, i32 6
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.vop*, %struct.vop** %5, align 8
  %51 = getelementptr inbounds %struct.vop, %struct.vop* %50, i32 0, i32 5
  %52 = call i32 @wait_for_completion(i32* %51)
  %53 = load %struct.vop*, %struct.vop** %5, align 8
  %54 = call i32 @vop_dsp_hold_valid_irq_disable(%struct.vop* %53)
  %55 = load %struct.vop*, %struct.vop** %5, align 8
  %56 = getelementptr inbounds %struct.vop, %struct.vop* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load %struct.vop*, %struct.vop** %5, align 8
  %58 = getelementptr inbounds %struct.vop, %struct.vop* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vop*, %struct.vop** %5, align 8
  %61 = getelementptr inbounds %struct.vop, %struct.vop* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @rockchip_drm_dma_detach_device(i32 %59, i32 %62)
  %64 = load %struct.vop*, %struct.vop** %5, align 8
  %65 = getelementptr inbounds %struct.vop, %struct.vop* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @clk_disable(i32 %66)
  %68 = load %struct.vop*, %struct.vop** %5, align 8
  %69 = call i32 @vop_core_clks_disable(%struct.vop* %68)
  %70 = load %struct.vop*, %struct.vop** %5, align 8
  %71 = getelementptr inbounds %struct.vop, %struct.vop* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pm_runtime_put(i32 %72)
  br label %74

74:                                               ; preds = %34, %33
  %75 = load %struct.vop*, %struct.vop** %5, align 8
  %76 = getelementptr inbounds %struct.vop, %struct.vop* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %79 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %113

84:                                               ; preds = %74
  %85 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %86 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %113, label %91

91:                                               ; preds = %84
  %92 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %93 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = call i32 @spin_lock_irq(i32* %95)
  %97 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %98 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %99 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %97, i32* %102)
  %104 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %105 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = call i32 @spin_unlock_irq(i32* %107)
  %109 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %110 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  br label %113

113:                                              ; preds = %91, %84, %74
  ret void
}

declare dso_local %struct.vop* @to_vop(%struct.drm_crtc*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rockchip_drm_set_win_enabled(%struct.drm_crtc*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @vop_dsp_hold_valid_irq_enable(%struct.vop*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @VOP_REG_SET(%struct.vop*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @vop_dsp_hold_valid_irq_disable(%struct.vop*) #1

declare dso_local i32 @rockchip_drm_dma_detach_device(i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @vop_core_clks_disable(%struct.vop*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
