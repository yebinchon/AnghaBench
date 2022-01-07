; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_drv.c_hdlcd_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_drv.c_hdlcd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.hdlcd_drm_private* }
%struct.hdlcd_drm_private = type { i32, i32, i32, i32, i32 }

@HDLCD_REG_INT_STATUS = common dso_local global i32 0, align 4
@HDLCD_INTERRUPT_VSYNC = common dso_local global i64 0, align 8
@HDLCD_REG_INT_CLEAR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@HDLCD_INTERRUPT_BUS_ERROR = common dso_local global i64 0, align 8
@HDLCD_INTERRUPT_DMA_END = common dso_local global i64 0, align 8
@HDLCD_INTERRUPT_UNDERRUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hdlcd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdlcd_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.hdlcd_drm_private*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.drm_device*
  store %struct.drm_device* %9, %struct.drm_device** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %11, align 8
  store %struct.hdlcd_drm_private* %12, %struct.hdlcd_drm_private** %6, align 8
  %13 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %14 = load i32, i32* @HDLCD_REG_INT_STATUS, align 4
  %15 = call i64 @hdlcd_read(%struct.hdlcd_drm_private* %13, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @HDLCD_INTERRUPT_VSYNC, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %22 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %21, i32 0, i32 0
  %23 = call i32 @drm_crtc_handle_vblank(i32* %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %26 = load i32, i32* @HDLCD_REG_INT_CLEAR, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %25, i32 %26, i64 %27)
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %29
}

declare dso_local i64 @hdlcd_read(%struct.hdlcd_drm_private*, i32) #1

declare dso_local i32 @drm_crtc_handle_vblank(i32*) #1

declare dso_local i32 @hdlcd_write(%struct.hdlcd_drm_private*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
