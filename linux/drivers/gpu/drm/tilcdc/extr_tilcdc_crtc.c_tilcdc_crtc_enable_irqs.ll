; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_enable_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_enable_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.tilcdc_drm_private* }
%struct.tilcdc_drm_private = type { i32 }

@LCDC_RASTER_CTRL_REG = common dso_local global i32 0, align 4
@LCDC_V1_SYNC_LOST_INT_ENA = common dso_local global i32 0, align 4
@LCDC_V1_FRAME_DONE_INT_ENA = common dso_local global i32 0, align 4
@LCDC_V1_UNDERFLOW_INT_ENA = common dso_local global i32 0, align 4
@LCDC_DMA_CTRL_REG = common dso_local global i32 0, align 4
@LCDC_V1_END_OF_FRAME_INT_ENA = common dso_local global i32 0, align 4
@LCDC_INT_ENABLE_SET_REG = common dso_local global i32 0, align 4
@LCDC_V2_UNDERFLOW_INT_ENA = common dso_local global i32 0, align 4
@LCDC_V2_END_OF_FRAME0_INT_ENA = common dso_local global i32 0, align 4
@LCDC_FRAME_DONE = common dso_local global i32 0, align 4
@LCDC_SYNC_LOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @tilcdc_crtc_enable_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tilcdc_crtc_enable_irqs(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.tilcdc_drm_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %5, align 8
  store %struct.tilcdc_drm_private* %6, %struct.tilcdc_drm_private** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = call i32 @tilcdc_clear_irqstatus(%struct.drm_device* %7, i32 -1)
  %9 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %3, align 8
  %10 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = load i32, i32* @LCDC_RASTER_CTRL_REG, align 4
  %16 = load i32, i32* @LCDC_V1_SYNC_LOST_INT_ENA, align 4
  %17 = load i32, i32* @LCDC_V1_FRAME_DONE_INT_ENA, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @LCDC_V1_UNDERFLOW_INT_ENA, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @tilcdc_set(%struct.drm_device* %14, i32 %15, i32 %20)
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = load i32, i32* @LCDC_DMA_CTRL_REG, align 4
  %24 = load i32, i32* @LCDC_V1_END_OF_FRAME_INT_ENA, align 4
  %25 = call i32 @tilcdc_set(%struct.drm_device* %22, i32 %23, i32 %24)
  br label %37

26:                                               ; preds = %1
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = load i32, i32* @LCDC_INT_ENABLE_SET_REG, align 4
  %29 = load i32, i32* @LCDC_V2_UNDERFLOW_INT_ENA, align 4
  %30 = load i32, i32* @LCDC_V2_END_OF_FRAME0_INT_ENA, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @LCDC_FRAME_DONE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @LCDC_SYNC_LOST, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @tilcdc_write(%struct.drm_device* %27, i32 %28, i32 %35)
  br label %37

37:                                               ; preds = %26, %13
  ret void
}

declare dso_local i32 @tilcdc_clear_irqstatus(%struct.drm_device*, i32) #1

declare dso_local i32 @tilcdc_set(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @tilcdc_write(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
