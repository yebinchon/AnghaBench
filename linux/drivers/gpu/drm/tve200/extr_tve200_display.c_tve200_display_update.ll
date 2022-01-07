; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tve200/extr_tve200_display.c_tve200_display_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tve200/extr_tve200_display.c_tve200_display_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.drm_plane, %struct.drm_crtc }
%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_crtc = type { %struct.drm_device*, %struct.TYPE_4__* }
%struct.drm_device = type { i32, %struct.tve200_drm_dev_private* }
%struct.tve200_drm_dev_private = type { i64 }
%struct.TYPE_4__ = type { i64, %struct.drm_pending_vblank_event* }
%struct.drm_pending_vblank_event = type { i32 }
%struct.drm_plane_state = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@TVE200_Y_FRAME_BASE_ADDR = common dso_local global i64 0, align 8
@DRM_FORMAT_YUV420 = common dso_local global i64 0, align 8
@TVE200_U_FRAME_BASE_ADDR = common dso_local global i64 0, align 8
@TVE200_V_FRAME_BASE_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_plane_state*)* @tve200_display_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tve200_display_update(%struct.drm_simple_display_pipe* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_simple_display_pipe*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.tve200_drm_dev_private*, align 8
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
  %19 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %18, align 8
  store %struct.tve200_drm_dev_private* %19, %struct.tve200_drm_dev_private** %7, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
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
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %34 = icmp ne %struct.drm_framebuffer* %33, null
  br i1 %34, label %35, label %72

35:                                               ; preds = %2
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %37 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  %38 = call i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer* %36, %struct.drm_plane_state* %37, i32 0)
  %39 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %7, align 8
  %40 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TVE200_Y_FRAME_BASE_ADDR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %46 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DRM_FORMAT_YUV420, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %35
  %53 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %54 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  %55 = call i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer* %53, %struct.drm_plane_state* %54, i32 1)
  %56 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %7, align 8
  %57 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TVE200_U_FRAME_BASE_ADDR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  %62 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %63 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  %64 = call i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer* %62, %struct.drm_plane_state* %63, i32 2)
  %65 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %7, align 8
  %66 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TVE200_V_FRAME_BASE_ADDR, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 %64, i64 %69)
  br label %71

71:                                               ; preds = %52, %35
  br label %72

72:                                               ; preds = %71, %2
  %73 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %74 = icmp ne %struct.drm_pending_vblank_event* %73, null
  br i1 %74, label %75, label %109

75:                                               ; preds = %72
  %76 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %77 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %79, align 8
  %80 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %81 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %80, i32 0, i32 0
  %82 = load %struct.drm_device*, %struct.drm_device** %81, align 8
  %83 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %82, i32 0, i32 0
  %84 = call i32 @spin_lock_irq(i32* %83)
  %85 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %86 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %75
  %92 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %93 = call i64 @drm_crtc_vblank_get(%struct.drm_crtc* %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %97 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %98 = call i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc* %96, %struct.drm_pending_vblank_event* %97)
  br label %103

99:                                               ; preds = %91, %75
  %100 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %101 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %102 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %100, %struct.drm_pending_vblank_event* %101)
  br label %103

103:                                              ; preds = %99, %95
  %104 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %105 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %104, i32 0, i32 0
  %106 = load %struct.drm_device*, %struct.drm_device** %105, align 8
  %107 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %106, i32 0, i32 0
  %108 = call i32 @spin_unlock_irq(i32* %107)
  br label %109

109:                                              ; preds = %103, %72
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer*, %struct.drm_plane_state*, i32) #1

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
