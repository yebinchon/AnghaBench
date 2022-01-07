; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_vblank_disable_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_vblank_disable_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_vblank_crtc = type { i32, i64, i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.timer_list = type { i32 }

@disable_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"disabling vblank on crtc %u\0A\00", align 1
@vblank = common dso_local global %struct.drm_vblank_crtc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @vblank_disable_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vblank_disable_fn(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.drm_vblank_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %3, align 8
  %8 = ptrtoint %struct.drm_vblank_crtc* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @disable_timer, align 4
  %11 = call %struct.drm_vblank_crtc* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.drm_vblank_crtc* %11, %struct.drm_vblank_crtc** %3, align 8
  %12 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %12, i32 0, i32 3
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %4, align 8
  %15 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %22, i32 0, i32 2
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %3, align 8
  %28 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @drm_vblank_disable_and_save(%struct.drm_device* %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %26, %1
  %38 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local %struct.drm_vblank_crtc* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @drm_vblank_disable_and_save(%struct.drm_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
