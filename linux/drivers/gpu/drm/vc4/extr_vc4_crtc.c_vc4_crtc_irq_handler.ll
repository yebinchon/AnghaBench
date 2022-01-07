; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_crtc = type { i32 }

@PV_INTSTAT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@PV_INT_VFP_START = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vc4_crtc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_crtc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vc4_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vc4_crtc*
  store %struct.vc4_crtc* %9, %struct.vc4_crtc** %5, align 8
  %10 = load i32, i32* @PV_INTSTAT, align 4
  %11 = call i32 @CRTC_READ(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PV_INT_VFP_START, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @PV_INTSTAT, align 4
  %19 = load i32, i32* @PV_INT_VFP_START, align 4
  %20 = call i32 @CRTC_WRITE(i32 %18, i32 %19)
  %21 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %22 = call i32 @vc4_crtc_handle_vblank(%struct.vc4_crtc* %21)
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %17, %2
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @CRTC_READ(i32) #1

declare dso_local i32 @CRTC_WRITE(i32, i32) #1

declare dso_local i32 @vc4_crtc_handle_vblank(%struct.vc4_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
