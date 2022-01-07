; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_crtc.c_vkms_crtc_atomic_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_crtc.c_vkms_crtc_atomic_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.vkms_output = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @vkms_crtc_atomic_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vkms_crtc_atomic_flush(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.vkms_output*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = call %struct.vkms_output* @drm_crtc_to_vkms_output(%struct.drm_crtc* %6)
  store %struct.vkms_output* %7, %struct.vkms_output** %5, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %49

14:                                               ; preds = %2
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %21 = call i64 @drm_crtc_vblank_get(%struct.drm_crtc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %26 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %24, i32* %29)
  br label %39

31:                                               ; preds = %14
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %34 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc* %32, i32* %37)
  br label %39

39:                                               ; preds = %31, %23
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %46 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %39, %2
  %50 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %51 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = call i32 @to_vkms_crtc_state(%struct.TYPE_4__* %52)
  %54 = load %struct.vkms_output*, %struct.vkms_output** %5, align 8
  %55 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.vkms_output*, %struct.vkms_output** %5, align 8
  %57 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_irq(i32* %57)
  ret void
}

declare dso_local %struct.vkms_output* @drm_crtc_to_vkms_output(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @to_vkms_crtc_state(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
