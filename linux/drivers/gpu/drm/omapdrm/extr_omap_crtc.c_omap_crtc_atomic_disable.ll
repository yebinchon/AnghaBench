; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device*, %struct.TYPE_3__* }
%struct.drm_device = type { i32, i32, %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.TYPE_3__ = type { i32* }
%struct.drm_crtc_state = type { i32 }
%struct.omap_crtc = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"manual display update did not finish!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @omap_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.omap_drm_private*, align 8
  %6 = alloca %struct.omap_crtc*, align 8
  %7 = alloca %struct.drm_device*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 2
  %12 = load %struct.omap_drm_private*, %struct.omap_drm_private** %11, align 8
  store %struct.omap_drm_private* %12, %struct.omap_drm_private** %5, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = call %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc* %13)
  store %struct.omap_crtc* %14, %struct.omap_crtc** %6, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %7, align 8
  %18 = load %struct.omap_crtc*, %struct.omap_crtc** %6, align 8
  %19 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 0
  %24 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %28 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %2
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %36 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %34, i32* %39)
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %42 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %33, %2
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %47 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %46, i32 0, i32 0
  %48 = load %struct.drm_device*, %struct.drm_device** %47, align 8
  %49 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock_irq(i32* %49)
  %51 = load %struct.omap_crtc*, %struct.omap_crtc** %6, align 8
  %52 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %51, i32 0, i32 0
  %53 = call i32 @cancel_delayed_work(i32* %52)
  %54 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %55 = call i32 @omap_crtc_wait_pending(%struct.drm_crtc* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %45
  %58 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_warn(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %45
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %64 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %63)
  %65 = load %struct.omap_drm_private*, %struct.omap_drm_private** %5, align 8
  %66 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32 (i32)*, i32 (i32)** %68, align 8
  %70 = load %struct.omap_drm_private*, %struct.omap_drm_private** %5, align 8
  %71 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %69(i32 %72)
  ret void
}

declare dso_local %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @omap_crtc_wait_pending(%struct.drm_crtc*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
