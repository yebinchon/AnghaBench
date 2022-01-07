; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_atomic_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_atomic_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.armada_crtc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"[CRTC:%d:%s]\0A\00", align 1
@DUMB_FRAMEDONE_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @armada_drm_crtc_atomic_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_drm_crtc_atomic_flush(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.armada_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = call %struct.armada_crtc* @drm_to_armada_crtc(%struct.drm_crtc* %6)
  store %struct.armada_crtc* %7, %struct.armada_crtc** %5, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %20 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @armada_reg_queue_end(i32 %18, i32 %21)
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %24 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @drm_atomic_crtc_needs_modeset(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %2
  %29 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %30 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %32 = call i32 @armada_drm_crtc_queue_state_event(%struct.drm_crtc* %31)
  %33 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %34 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %33, i32 0, i32 1
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %37 = load i32, i32* @DUMB_FRAMEDONE_ENA, align 4
  %38 = call i32 @armada_drm_crtc_enable_irq(%struct.armada_crtc* %36, i32 %37)
  %39 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %40 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock_irq(i32* %40)
  br label %54

42:                                               ; preds = %2
  %43 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %44 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %43, i32 0, i32 1
  %45 = call i32 @spin_lock_irq(i32* %44)
  %46 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %47 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %48 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @armada_drm_crtc_update_regs(%struct.armada_crtc* %46, i32 %49)
  %51 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %52 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock_irq(i32* %52)
  br label %54

54:                                               ; preds = %42, %28
  ret void
}

declare dso_local %struct.armada_crtc* @drm_to_armada_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @armada_reg_queue_end(i32, i32) #1

declare dso_local i32 @drm_atomic_crtc_needs_modeset(i32) #1

declare dso_local i32 @armada_drm_crtc_queue_state_event(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @armada_drm_crtc_enable_irq(%struct.armada_crtc*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @armada_drm_crtc_update_regs(%struct.armada_crtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
