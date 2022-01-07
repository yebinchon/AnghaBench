; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32)* }
%struct.drm_crtc_state = type { i32 }
%struct.omap_crtc = type { i32 }
%struct.omap_crtc_state = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @omap_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.omap_drm_private*, align 8
  %6 = alloca %struct.omap_crtc*, align 8
  %7 = alloca %struct.omap_crtc_state*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.omap_drm_private*, %struct.omap_drm_private** %12, align 8
  store %struct.omap_drm_private* %13, %struct.omap_drm_private** %5, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %15 = call %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc* %14)
  store %struct.omap_crtc* %15, %struct.omap_crtc** %6, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.omap_crtc_state* @to_omap_crtc_state(i32 %18)
  store %struct.omap_crtc_state* %19, %struct.omap_crtc_state** %7, align 8
  %20 = load %struct.omap_crtc*, %struct.omap_crtc** %6, align 8
  %21 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.omap_drm_private*, %struct.omap_drm_private** %5, align 8
  %25 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load %struct.omap_drm_private*, %struct.omap_drm_private** %5, align 8
  %30 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %28(i32 %31)
  %33 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %7, align 8
  %34 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %59

38:                                               ; preds = %2
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %40 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_irq(i32* %42)
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %45 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %44)
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %47 = call i32 @drm_crtc_vblank_get(%struct.drm_crtc* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %53 = call i32 @omap_crtc_arm_event(%struct.drm_crtc* %52)
  %54 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %55 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_irq(i32* %57)
  br label %59

59:                                               ; preds = %38, %37
  ret void
}

declare dso_local %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.omap_crtc_state* @to_omap_crtc_state(i32) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @omap_crtc_arm_event(%struct.drm_crtc*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
