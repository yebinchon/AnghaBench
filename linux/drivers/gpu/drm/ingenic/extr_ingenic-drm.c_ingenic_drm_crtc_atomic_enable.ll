; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.ingenic_drm = type { i32 }

@JZ_REG_LCD_STATE = common dso_local global i32 0, align 4
@JZ_REG_LCD_CTRL = common dso_local global i32 0, align 4
@JZ_LCD_CTRL_ENABLE = common dso_local global i32 0, align 4
@JZ_LCD_CTRL_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @ingenic_drm_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ingenic_drm_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.ingenic_drm*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = call %struct.ingenic_drm* @drm_crtc_get_priv(%struct.drm_crtc* %6)
  store %struct.ingenic_drm* %7, %struct.ingenic_drm** %5, align 8
  %8 = load %struct.ingenic_drm*, %struct.ingenic_drm** %5, align 8
  %9 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @JZ_REG_LCD_STATE, align 4
  %12 = call i32 @regmap_write(i32 %10, i32 %11, i32 0)
  %13 = load %struct.ingenic_drm*, %struct.ingenic_drm** %5, align 8
  %14 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @JZ_REG_LCD_CTRL, align 4
  %17 = load i32, i32* @JZ_LCD_CTRL_ENABLE, align 4
  %18 = load i32, i32* @JZ_LCD_CTRL_DISABLE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @JZ_LCD_CTRL_ENABLE, align 4
  %21 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %19, i32 %20)
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %23 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %22)
  ret void
}

declare dso_local %struct.ingenic_drm* @drm_crtc_get_priv(%struct.drm_crtc*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
