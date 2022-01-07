; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_irq.c_omap_irq_enable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_irq.c_omap_irq_enable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@.str = private unnamed_addr constant [16 x i8] c"dev=%p, crtc=%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_irq_enable_vblank(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.omap_drm_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.omap_drm_private*, %struct.omap_drm_private** %11, align 8
  store %struct.omap_drm_private* %12, %struct.omap_drm_private** %4, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = call i32 @omap_crtc_channel(%struct.drm_crtc* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.drm_device* %15, i32 %16)
  %18 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %19 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %23 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32, i32)*, i32 (i32, i32)** %25, align 8
  %27 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %28 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 %26(i32 %29, i32 %30)
  %32 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %33 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = call i32 @omap_irq_update(%struct.drm_device* %36)
  %38 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %39 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret i32 0
}

declare dso_local i32 @omap_crtc_channel(%struct.drm_crtc*) #1

declare dso_local i32 @DBG(i8*, %struct.drm_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @omap_irq_update(%struct.drm_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
