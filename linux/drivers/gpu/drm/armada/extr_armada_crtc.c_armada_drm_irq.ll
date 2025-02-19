; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_crtc = type { i32, i32, i64 }

@LCD_SPU_IRQ_ISR = common dso_local global i64 0, align 8
@VSYNC_IRQ = common dso_local global i32 0, align 4
@GRA_FRAME_IRQ = common dso_local global i32 0, align 4
@DUMB_FRAMEDONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @armada_drm_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_drm_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.armada_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.armada_crtc*
  store %struct.armada_crtc* %10, %struct.armada_crtc** %6, align 8
  %11 = load %struct.armada_crtc*, %struct.armada_crtc** %6, align 8
  %12 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LCD_SPU_IRQ_ISR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.armada_crtc*, %struct.armada_crtc** %6, align 8
  %18 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LCD_SPU_IRQ_ISR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 0, i64 %21)
  %23 = load %struct.armada_crtc*, %struct.armada_crtc** %6, align 8
  %24 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %23, i32 0, i32 1
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @trace_armada_drm_irq(i32* %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.armada_crtc*, %struct.armada_crtc** %6, align 8
  %29 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %27, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @VSYNC_IRQ, align 4
  %34 = load i32, i32* @GRA_FRAME_IRQ, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @DUMB_FRAMEDONE, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %32, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load %struct.armada_crtc*, %struct.armada_crtc** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @armada_drm_crtc_irq(%struct.armada_crtc* %41, i32 %42)
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %2
  %46 = load i32, i32* @IRQ_NONE, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @trace_armada_drm_irq(i32*, i32) #1

declare dso_local i32 @armada_drm_crtc_irq(%struct.armada_crtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
