; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.tilcdc_crtc = type { i32, i32, i32, i32, i64 }

@LCDC_DMA_CTRL_REG = common dso_local global i32 0, align 4
@LCDC_DUAL_FRAME_BUFFER_ENABLE = common dso_local global i32 0, align 4
@LCDC_RASTER_CTRL_REG = common dso_local global i32 0, align 4
@DATA_ONLY = common dso_local global i32 0, align 4
@LCDC_PALETTE_LOAD_MODE_MASK = common dso_local global i32 0, align 4
@LCDC_RASTER_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @tilcdc_crtc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tilcdc_crtc_enable(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.tilcdc_crtc*, align 8
  %5 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 0
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = call %struct.tilcdc_crtc* @to_tilcdc_crtc(%struct.drm_crtc* %9)
  store %struct.tilcdc_crtc* %10, %struct.tilcdc_crtc** %4, align 8
  %11 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %4, align 8
  %12 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %4, align 8
  %15 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %4, align 8
  %20 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18, %1
  %24 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %4, align 8
  %25 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  br label %70

27:                                               ; preds = %18
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pm_runtime_get_sync(i32 %30)
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %33 = call i32 @reset(%struct.drm_crtc* %32)
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %35 = call i32 @tilcdc_crtc_set_mode(%struct.drm_crtc* %34)
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = call i32 @tilcdc_crtc_enable_irqs(%struct.drm_device* %36)
  %38 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %39 = load i32, i32* @LCDC_DMA_CTRL_REG, align 4
  %40 = load i32, i32* @LCDC_DUAL_FRAME_BUFFER_ENABLE, align 4
  %41 = call i32 @tilcdc_clear(%struct.drm_device* %38, i32 %39, i32 %40)
  %42 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %43 = load i32, i32* @LCDC_RASTER_CTRL_REG, align 4
  %44 = load i32, i32* @DATA_ONLY, align 4
  %45 = call i32 @LCDC_PALETTE_LOAD_MODE(i32 %44)
  %46 = load i32, i32* @LCDC_PALETTE_LOAD_MODE_MASK, align 4
  %47 = call i32 @tilcdc_write_mask(%struct.drm_device* %42, i32 %43, i32 %45, i32 %46)
  %48 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %4, align 8
  %49 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %48, i32 0, i32 2
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = call i32 (...) @ktime_get()
  %53 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %4, align 8
  %54 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %56 = load i32, i32* @LCDC_RASTER_CTRL_REG, align 4
  %57 = load i32, i32* @LCDC_RASTER_ENABLE, align 4
  %58 = call i32 @tilcdc_set(%struct.drm_device* %55, i32 %56, i32 %57)
  %59 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %4, align 8
  %60 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %59, i32 0, i32 2
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %64 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %63)
  %65 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %4, align 8
  %66 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %4, align 8
  %68 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  br label %70

70:                                               ; preds = %27, %23
  ret void
}

declare dso_local %struct.tilcdc_crtc* @to_tilcdc_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @reset(%struct.drm_crtc*) #1

declare dso_local i32 @tilcdc_crtc_set_mode(%struct.drm_crtc*) #1

declare dso_local i32 @tilcdc_crtc_enable_irqs(%struct.drm_device*) #1

declare dso_local i32 @tilcdc_clear(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @tilcdc_write_mask(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @LCDC_PALETTE_LOAD_MODE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @tilcdc_set(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
