; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_vblank_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_vblank_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_vblank_crtc* }
%struct.drm_vblank_crtc = type { i32, i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_vblank_cleanup(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_vblank_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %51

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %41, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  %20 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %20, i64 %22
  store %struct.drm_vblank_crtc* %23, %struct.drm_vblank_crtc** %4, align 8
  %24 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %4, align 8
  %25 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @READ_ONCE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %31 = load i32, i32* @DRIVER_MODESET, align 4
  %32 = call i64 @drm_core_check_feature(%struct.drm_device* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi i1 [ false, %17 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %4, align 8
  %39 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %38, i32 0, i32 0
  %40 = call i32 @del_timer_sync(i32* %39)
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %11

44:                                               ; preds = %11
  %45 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 1
  %47 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %46, align 8
  %48 = call i32 @kfree(%struct.drm_vblank_crtc* %47)
  %49 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %44, %9
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @kfree(%struct.drm_vblank_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
