; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_display_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_display_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.drm_plane, %struct.drm_crtc }
%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_crtc = type { %struct.drm_device*, %struct.TYPE_2__* }
%struct.drm_device = type { i32, %struct.mcde* }
%struct.mcde = type { i32 }
%struct.TYPE_2__ = type { i64, %struct.drm_pending_vblank_event* }
%struct.drm_pending_vblank_event = type { i32 }
%struct.drm_plane_state = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"arm vblank event\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"insert fake vblank event\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"sent first display update\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ignored a display update\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_plane_state*)* @mcde_display_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_display_update(%struct.drm_simple_display_pipe* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_simple_display_pipe*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.mcde*, align 8
  %8 = alloca %struct.drm_pending_vblank_event*, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca %struct.drm_plane_state*, align 8
  %11 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %12 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %13 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %12, i32 0, i32 1
  store %struct.drm_crtc* %13, %struct.drm_crtc** %5, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = load %struct.mcde*, %struct.mcde** %18, align 8
  store %struct.mcde* %19, %struct.mcde** %7, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %23, align 8
  store %struct.drm_pending_vblank_event* %24, %struct.drm_pending_vblank_event** %8, align 8
  %25 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %26 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %25, i32 0, i32 0
  store %struct.drm_plane* %26, %struct.drm_plane** %9, align 8
  %27 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %28 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %27, i32 0, i32 0
  %29 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  store %struct.drm_plane_state* %29, %struct.drm_plane_state** %10, align 8
  %30 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  %31 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %30, i32 0, i32 0
  %32 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %31, align 8
  store %struct.drm_framebuffer* %32, %struct.drm_framebuffer** %11, align 8
  %33 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %34 = icmp ne %struct.drm_pending_vblank_event* %33, null
  br i1 %34, label %35, label %77

35:                                               ; preds = %2
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %37 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %39, align 8
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 0
  %42 = load %struct.drm_device*, %struct.drm_device** %41, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %46 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %35
  %52 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %53 = call i64 @drm_crtc_vblank_get(%struct.drm_crtc* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load %struct.mcde*, %struct.mcde** %7, align 8
  %57 = getelementptr inbounds %struct.mcde, %struct.mcde* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %61 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %62 = call i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc* %60, %struct.drm_pending_vblank_event* %61)
  br label %71

63:                                               ; preds = %51, %35
  %64 = load %struct.mcde*, %struct.mcde** %7, align 8
  %65 = getelementptr inbounds %struct.mcde, %struct.mcde* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %69 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %70 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %68, %struct.drm_pending_vblank_event* %69)
  br label %71

71:                                               ; preds = %63, %55
  %72 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %73 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %72, i32 0, i32 0
  %74 = load %struct.drm_device*, %struct.drm_device** %73, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_irq(i32* %75)
  br label %77

77:                                               ; preds = %71, %2
  %78 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %79 = icmp ne %struct.drm_framebuffer* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load %struct.mcde*, %struct.mcde** %7, align 8
  %82 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %83 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  %84 = call i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer* %82, %struct.drm_plane_state* %83, i32 0)
  %85 = call i32 @mcde_set_extsrc(%struct.mcde* %81, i32 %84)
  %86 = load %struct.mcde*, %struct.mcde** %7, align 8
  %87 = call i32 @mcde_display_send_one_frame(%struct.mcde* %86)
  %88 = load %struct.mcde*, %struct.mcde** %7, align 8
  %89 = getelementptr inbounds %struct.mcde, %struct.mcde* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_info_once(i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %97

92:                                               ; preds = %77
  %93 = load %struct.mcde*, %struct.mcde** %7, align 8
  %94 = getelementptr inbounds %struct.mcde, %struct.mcde* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dev_info(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %92, %80
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mcde_set_extsrc(%struct.mcde*, i32) #1

declare dso_local i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer*, %struct.drm_plane_state*, i32) #1

declare dso_local i32 @mcde_display_send_one_frame(%struct.mcde*) #1

declare dso_local i32 @dev_info_once(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
