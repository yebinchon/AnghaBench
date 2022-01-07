; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_update_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_update_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_pending_vblank_event = type { i32 }
%struct.tilcdc_crtc = type { i32, i32, %struct.drm_framebuffer*, i32, i32, i64, %struct.drm_pending_vblank_event* }

@.str = private unnamed_addr constant [28 x i8] c"already pending page flip!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TILCDC_VBLANK_SAFETY_THRESHOLD_US = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tilcdc_crtc_update_fb(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, %struct.drm_pending_vblank_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_pending_vblank_event*, align 8
  %8 = alloca %struct.tilcdc_crtc*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %5, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %6, align 8
  store %struct.drm_pending_vblank_event* %2, %struct.drm_pending_vblank_event** %7, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %14 = call %struct.tilcdc_crtc* @to_tilcdc_crtc(%struct.drm_crtc* %13)
  store %struct.tilcdc_crtc* %14, %struct.tilcdc_crtc** %8, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %9, align 8
  %18 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %8, align 8
  %19 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %18, i32 0, i32 6
  %20 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %19, align 8
  %21 = icmp ne %struct.drm_pending_vblank_event* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %76

29:                                               ; preds = %3
  %30 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %31 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %8, align 8
  %32 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %31, i32 0, i32 6
  store %struct.drm_pending_vblank_event* %30, %struct.drm_pending_vblank_event** %32, align 8
  %33 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %8, align 8
  %34 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %8, align 8
  %37 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %29
  %41 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %8, align 8
  %42 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %41, i32 0, i32 1
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %8, align 8
  %46 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %8, align 8
  %49 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ktime_add_us(i32 %47, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (...) @ktime_get()
  %54 = call i32 @ktime_sub(i32 %52, i32 %53)
  %55 = call i64 @ktime_to_us(i32 %54)
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* @TILCDC_VBLANK_SAFETY_THRESHOLD_US, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %40
  %60 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %61 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %8, align 8
  %62 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %61, i32 0, i32 2
  store %struct.drm_framebuffer* %60, %struct.drm_framebuffer** %62, align 8
  br label %67

63:                                               ; preds = %40
  %64 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %66 = call i32 @set_scanout(%struct.drm_crtc* %64, %struct.drm_framebuffer* %65)
  br label %67

67:                                               ; preds = %63, %59
  %68 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %8, align 8
  %69 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %68, i32 0, i32 1
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %67, %29
  %73 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %8, align 8
  %74 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %22
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.tilcdc_crtc* @to_tilcdc_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i64 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @set_scanout(%struct.drm_crtc*, %struct.drm_framebuffer*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
