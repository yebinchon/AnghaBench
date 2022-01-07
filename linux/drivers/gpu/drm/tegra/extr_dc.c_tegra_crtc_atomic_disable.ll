; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.drm_crtc_state = type { i32 }
%struct.tegra_dc = type { i32, i32, i64 }

@DC_CMD_DISPLAY_POWER_CONTROL = common dso_local global i32 0, align 4
@PW0_ENABLE = common dso_local global i32 0, align 4
@PW1_ENABLE = common dso_local global i32 0, align 4
@PW2_ENABLE = common dso_local global i32 0, align 4
@PW3_ENABLE = common dso_local global i32 0, align 4
@PW4_ENABLE = common dso_local global i32 0, align 4
@PM0_ENABLE = common dso_local global i32 0, align 4
@PM1_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @tegra_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.tegra_dc*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = call %struct.tegra_dc* @to_tegra_dc(%struct.drm_crtc* %7)
  store %struct.tegra_dc* %8, %struct.tegra_dc** %5, align 8
  %9 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %10 = call i32 @tegra_dc_idle(%struct.tegra_dc* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %14 = call i32 @tegra_dc_stop(%struct.tegra_dc* %13)
  %15 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %16 = call i32 @tegra_dc_wait_idle(%struct.tegra_dc* %15, i32 100)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %19 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %24 = load i32, i32* @DC_CMD_DISPLAY_POWER_CONTROL, align 4
  %25 = call i32 @tegra_dc_readl(%struct.tegra_dc* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @PW0_ENABLE, align 4
  %27 = load i32, i32* @PW1_ENABLE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PW2_ENABLE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PW3_ENABLE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PW4_ENABLE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @PM0_ENABLE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @PM1_ENABLE, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @DC_CMD_DISPLAY_POWER_CONTROL, align 4
  %45 = call i32 @tegra_dc_writel(%struct.tegra_dc* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %22, %17
  %47 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %48 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %47, i32 0, i32 1
  %49 = call i32 @tegra_dc_stats_reset(i32* %48)
  %50 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %51 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %50)
  %52 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %53 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_irq(i32* %55)
  %57 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %58 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %46
  %64 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %65 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %66 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %64, i32* %69)
  %71 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %72 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %63, %46
  %76 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %77 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_irq(i32* %79)
  %81 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %82 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @pm_runtime_put_sync(i32 %83)
  ret void
}

declare dso_local %struct.tegra_dc* @to_tegra_dc(%struct.drm_crtc*) #1

declare dso_local i32 @tegra_dc_idle(%struct.tegra_dc*) #1

declare dso_local i32 @tegra_dc_stop(%struct.tegra_dc*) #1

declare dso_local i32 @tegra_dc_wait_idle(%struct.tegra_dc*, i32) #1

declare dso_local i32 @tegra_dc_readl(%struct.tegra_dc*, i32) #1

declare dso_local i32 @tegra_dc_writel(%struct.tegra_dc*, i32, i32) #1

declare dso_local i32 @tegra_dc_stats_reset(i32*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
