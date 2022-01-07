; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_crtc_atomic_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_crtc_atomic_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_12__*, %struct.TYPE_8__*, %struct.drm_crtc_state* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.drm_crtc_state = type { %struct.drm_pending_vblank_event*, %struct.TYPE_10__, i32 }
%struct.drm_pending_vblank_event = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ingenic_drm = type { %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.drm_format_info = type { i32 }

@JZ_REG_LCD_DA0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @ingenic_drm_crtc_atomic_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ingenic_drm_crtc_atomic_flush(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.ingenic_drm*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.drm_pending_vblank_event*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_format_info*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = call %struct.ingenic_drm* @drm_crtc_get_priv(%struct.drm_crtc* %10)
  store %struct.ingenic_drm* %11, %struct.ingenic_drm** %5, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 2
  %14 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %13, align 8
  store %struct.drm_crtc_state* %14, %struct.drm_crtc_state** %6, align 8
  %15 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %16 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %15, i32 0, i32 0
  %17 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %16, align 8
  store %struct.drm_pending_vblank_event* %17, %struct.drm_pending_vblank_event** %7, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %8, align 8
  %25 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %26 = call i64 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %2
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %30 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.drm_format_info* @drm_format_info(i32 %33)
  store %struct.drm_format_info* %34, %struct.drm_format_info** %9, align 8
  %35 = load %struct.ingenic_drm*, %struct.ingenic_drm** %5, align 8
  %36 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %37 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %36, i32 0, i32 2
  %38 = call i32 @ingenic_drm_crtc_update_timings(%struct.ingenic_drm* %35, i32* %37)
  %39 = load %struct.ingenic_drm*, %struct.ingenic_drm** %5, align 8
  %40 = load %struct.drm_format_info*, %struct.drm_format_info** %9, align 8
  %41 = call i32 @ingenic_drm_crtc_update_ctrl(%struct.ingenic_drm* %39, %struct.drm_format_info* %40)
  %42 = load %struct.ingenic_drm*, %struct.ingenic_drm** %5, align 8
  %43 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %46 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %48, 1000
  %50 = call i32 @clk_set_rate(i32 %44, i32 %49)
  %51 = load %struct.ingenic_drm*, %struct.ingenic_drm** %5, align 8
  %52 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @JZ_REG_LCD_DA0, align 4
  %55 = load %struct.ingenic_drm*, %struct.ingenic_drm** %5, align 8
  %56 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @regmap_write(i32 %53, i32 %54, i32 %59)
  br label %61

61:                                               ; preds = %28, %2
  %62 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %63 = icmp ne %struct.drm_pending_vblank_event* %62, null
  br i1 %63, label %64, label %89

64:                                               ; preds = %61
  %65 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %66 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %65, i32 0, i32 0
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %66, align 8
  %67 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %68 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = call i32 @spin_lock_irq(i32* %70)
  %72 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %73 = call i64 @drm_crtc_vblank_get(%struct.drm_crtc* %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  %76 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %77 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %78 = call i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc* %76, %struct.drm_pending_vblank_event* %77)
  br label %83

79:                                               ; preds = %64
  %80 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %81 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %82 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %80, %struct.drm_pending_vblank_event* %81)
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %85 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock_irq(i32* %87)
  br label %89

89:                                               ; preds = %83, %61
  ret void
}

declare dso_local %struct.ingenic_drm* @drm_crtc_get_priv(%struct.drm_crtc*) #1

declare dso_local i64 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state*) #1

declare dso_local %struct.drm_format_info* @drm_format_info(i32) #1

declare dso_local i32 @ingenic_drm_crtc_update_timings(%struct.ingenic_drm*, i32*) #1

declare dso_local i32 @ingenic_drm_crtc_update_ctrl(%struct.ingenic_drm*, %struct.drm_format_info*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
