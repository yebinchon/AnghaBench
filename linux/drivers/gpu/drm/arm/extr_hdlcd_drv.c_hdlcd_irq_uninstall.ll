; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_drv.c_hdlcd_irq_uninstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_drv.c_hdlcd_irq_uninstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.hdlcd_drm_private* }
%struct.hdlcd_drm_private = type { i32 }

@HDLCD_REG_INT_MASK = common dso_local global i32 0, align 4
@HDLCD_INTERRUPT_VSYNC = common dso_local global i64 0, align 8
@HDLCD_DEBUG_INT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @hdlcd_irq_uninstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlcd_irq_uninstall(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.hdlcd_drm_private*, align 8
  %4 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  store %struct.hdlcd_drm_private* %7, %struct.hdlcd_drm_private** %3, align 8
  %8 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %3, align 8
  %9 = load i32, i32* @HDLCD_REG_INT_MASK, align 4
  %10 = call i64 @hdlcd_read(%struct.hdlcd_drm_private* %8, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* @HDLCD_INTERRUPT_VSYNC, align 8
  %12 = xor i64 %11, -1
  %13 = load i64, i64* %4, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %4, align 8
  %15 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %3, align 8
  %16 = load i32, i32* @HDLCD_REG_INT_MASK, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %15, i32 %16, i64 %17)
  ret void
}

declare dso_local i64 @hdlcd_read(%struct.hdlcd_drm_private*, i32) #1

declare dso_local i32 @hdlcd_write(%struct.hdlcd_drm_private*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
