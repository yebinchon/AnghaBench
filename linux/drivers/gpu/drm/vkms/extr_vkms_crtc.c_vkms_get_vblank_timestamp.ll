; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_crtc.c_vkms_get_vblank_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_crtc.c_vkms_get_vblank_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_vblank_crtc* }
%struct.drm_vblank_crtc = type { i64 }
%struct.vkms_device = type { %struct.vkms_output }
%struct.vkms_output = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vkms_get_vblank_timestamp(%struct.drm_device* %0, i32 %1, i32* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vkms_device*, align 8
  %13 = alloca %struct.vkms_output*, align 8
  %14 = alloca %struct.drm_vblank_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %16 = call %struct.vkms_device* @drm_device_to_vkms_device(%struct.drm_device* %15)
  store %struct.vkms_device* %16, %struct.vkms_device** %12, align 8
  %17 = load %struct.vkms_device*, %struct.vkms_device** %12, align 8
  %18 = getelementptr inbounds %struct.vkms_device, %struct.vkms_device* %17, i32 0, i32 0
  store %struct.vkms_output* %18, %struct.vkms_output** %13, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %21, i64 %23
  store %struct.drm_vblank_crtc* %24, %struct.drm_vblank_crtc** %14, align 8
  %25 = load %struct.vkms_output*, %struct.vkms_output** %13, align 8
  %26 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %10, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i64*, i64** %10, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %14, align 8
  %34 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %48

41:                                               ; preds = %5
  %42 = load %struct.vkms_output*, %struct.vkms_output** %13, align 8
  %43 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %10, align 8
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, %44
  store i64 %47, i64* %45, align 8
  store i32 1, i32* %6, align 4
  br label %48

48:                                               ; preds = %41, %40
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.vkms_device* @drm_device_to_vkms_device(%struct.drm_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
