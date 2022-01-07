; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_crtc.c_hdlcd_crtc_disable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_crtc.c_hdlcd_crtc_disable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.hdlcd_drm_private = type { i32 }

@HDLCD_REG_INT_MASK = common dso_local global i32 0, align 4
@HDLCD_INTERRUPT_VSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @hdlcd_crtc_disable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlcd_crtc_disable_vblank(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.hdlcd_drm_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %6 = call %struct.hdlcd_drm_private* @crtc_to_hdlcd_priv(%struct.drm_crtc* %5)
  store %struct.hdlcd_drm_private* %6, %struct.hdlcd_drm_private** %3, align 8
  %7 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %3, align 8
  %8 = load i32, i32* @HDLCD_REG_INT_MASK, align 4
  %9 = call i32 @hdlcd_read(%struct.hdlcd_drm_private* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %3, align 8
  %11 = load i32, i32* @HDLCD_REG_INT_MASK, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @HDLCD_INTERRUPT_VSYNC, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %10, i32 %11, i32 %15)
  ret void
}

declare dso_local %struct.hdlcd_drm_private* @crtc_to_hdlcd_priv(%struct.drm_crtc*) #1

declare dso_local i32 @hdlcd_read(%struct.hdlcd_drm_private*, i32) #1

declare dso_local i32 @hdlcd_write(%struct.hdlcd_drm_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
