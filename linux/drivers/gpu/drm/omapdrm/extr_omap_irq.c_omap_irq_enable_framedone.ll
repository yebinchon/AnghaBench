; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_irq.c_omap_irq_enable_framedone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_irq.c_omap_irq_enable_framedone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@.str = private unnamed_addr constant [27 x i8] c"dev=%p, crtc=%u, enable=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_irq_enable_framedone(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.omap_drm_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.omap_drm_private*, %struct.omap_drm_private** %14, align 8
  store %struct.omap_drm_private* %15, %struct.omap_drm_private** %6, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = call i32 @omap_crtc_channel(%struct.drm_crtc* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.omap_drm_private*, %struct.omap_drm_private** %6, align 8
  %19 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load %struct.omap_drm_private*, %struct.omap_drm_private** %6, align 8
  %24 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 %22(i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.drm_device* %28, i32 %29, i32 %30)
  %32 = load %struct.omap_drm_private*, %struct.omap_drm_private** %6, align 8
  %33 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %32, i32 0, i32 1
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.omap_drm_private*, %struct.omap_drm_private** %6, align 8
  %41 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %51

44:                                               ; preds = %2
  %45 = load i32, i32* %9, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.omap_drm_private*, %struct.omap_drm_private** %6, align 8
  %48 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %44, %38
  %52 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %53 = call i32 @omap_irq_update(%struct.drm_device* %52)
  %54 = load %struct.omap_drm_private*, %struct.omap_drm_private** %6, align 8
  %55 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %54, i32 0, i32 1
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  ret i32 0
}

declare dso_local i32 @omap_crtc_channel(%struct.drm_crtc*) #1

declare dso_local i32 @DBG(i8*, %struct.drm_device*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @omap_irq_update(%struct.drm_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
