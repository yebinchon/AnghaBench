; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_vblank_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_vblank_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.omap_crtc = type { i32, i32, i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (i32, i32)* }

@.str = private unnamed_addr constant [15 x i8] c"%s: apply done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_crtc_vblank_irq(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.omap_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.omap_drm_private*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = call %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc* %7)
  store %struct.omap_crtc* %8, %struct.omap_crtc** %3, align 8
  %9 = load %struct.omap_crtc*, %struct.omap_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.omap_drm_private*, %struct.omap_drm_private** %14, align 8
  store %struct.omap_drm_private* %15, %struct.omap_drm_private** %5, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.omap_drm_private*, %struct.omap_drm_private** %5, align 8
  %22 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64 (i32, i32)*, i64 (i32, i32)** %24, align 8
  %26 = load %struct.omap_drm_private*, %struct.omap_drm_private** %5, align 8
  %27 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.omap_crtc*, %struct.omap_crtc** %3, align 8
  %30 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i64 %25(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %36 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  br label %77

40:                                               ; preds = %1
  %41 = load %struct.omap_crtc*, %struct.omap_crtc** %3, align 8
  %42 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %47 = load %struct.omap_crtc*, %struct.omap_crtc** %3, align 8
  %48 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %46, i32* %49)
  %51 = load %struct.omap_crtc*, %struct.omap_crtc** %3, align 8
  %52 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %51, i32 0, i32 3
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %45, %40
  %54 = load %struct.omap_crtc*, %struct.omap_crtc** %3, align 8
  %55 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %6, align 4
  %57 = load %struct.omap_crtc*, %struct.omap_crtc** %3, align 8
  %58 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %60 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %68 = call i32 @drm_crtc_vblank_put(%struct.drm_crtc* %67)
  br label %69

69:                                               ; preds = %66, %53
  %70 = load %struct.omap_crtc*, %struct.omap_crtc** %3, align 8
  %71 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %70, i32 0, i32 2
  %72 = call i32 @wake_up(i32* %71)
  %73 = load %struct.omap_crtc*, %struct.omap_crtc** %3, align 8
  %74 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %69, %34
  ret void
}

declare dso_local %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @drm_crtc_vblank_put(%struct.drm_crtc*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @DBG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
