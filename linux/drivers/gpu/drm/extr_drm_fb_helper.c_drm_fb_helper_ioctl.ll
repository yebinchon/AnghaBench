; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.drm_fb_helper* }
%struct.drm_fb_helper = type { i32, %struct.TYPE_4__, %struct.drm_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_ioctl(%struct.fb_info* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.drm_fb_helper*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %12, align 8
  store %struct.drm_fb_helper* %13, %struct.drm_fb_helper** %7, align 8
  %14 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %7, align 8
  %15 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %14, i32 0, i32 2
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %7, align 8
  %18 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %21 = call i32 @drm_master_internal_acquire(%struct.drm_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  br label %52

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %46 [
    i32 128, label %28
  ]

28:                                               ; preds = %26
  %29 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %7, align 8
  %30 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %34, align 8
  store %struct.drm_crtc* %35, %struct.drm_crtc** %9, align 8
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %37 = call i32 @drm_crtc_vblank_get(%struct.drm_crtc* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %28
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %42 = call i32 @drm_crtc_wait_one_vblank(%struct.drm_crtc* %41)
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %44 = call i32 @drm_crtc_vblank_put(%struct.drm_crtc* %43)
  br label %45

45:                                               ; preds = %40, %28
  store i32 0, i32* %10, align 4
  br label %49

46:                                               ; preds = %26
  %47 = load i32, i32* @ENOTTY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %46, %45
  %50 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %51 = call i32 @drm_master_internal_release(%struct.drm_device* %50)
  br label %52

52:                                               ; preds = %49, %23
  %53 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %7, align 8
  %54 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_master_internal_acquire(%struct.drm_device*) #1

declare dso_local i32 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_wait_one_vblank(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_vblank_put(%struct.drm_crtc*) #1

declare dso_local i32 @drm_master_internal_release(%struct.drm_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
