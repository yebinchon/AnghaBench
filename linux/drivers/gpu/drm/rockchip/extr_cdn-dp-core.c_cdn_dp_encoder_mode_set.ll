; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_encoder_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_encoder_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.cdn_dp_device = type { i32, %struct.video_info, %struct.TYPE_2__ }
%struct.video_info = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32 }

@PXL_RGB = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @cdn_dp_encoder_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdn_dp_encoder_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.cdn_dp_device*, align 8
  %8 = alloca %struct.drm_display_info*, align 8
  %9 = alloca %struct.video_info*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %11 = call %struct.cdn_dp_device* @encoder_to_dp(%struct.drm_encoder* %10)
  store %struct.cdn_dp_device* %11, %struct.cdn_dp_device** %7, align 8
  %12 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %13 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.drm_display_info* %14, %struct.drm_display_info** %8, align 8
  %15 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %16 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %15, i32 0, i32 1
  store %struct.video_info* %16, %struct.video_info** %9, align 8
  %17 = load %struct.drm_display_info*, %struct.drm_display_info** %8, align 8
  %18 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %26 [
    i32 10, label %20
    i32 6, label %23
  ]

20:                                               ; preds = %3
  %21 = load %struct.video_info*, %struct.video_info** %9, align 8
  %22 = getelementptr inbounds %struct.video_info, %struct.video_info* %21, i32 0, i32 0
  store i32 10, i32* %22, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load %struct.video_info*, %struct.video_info** %9, align 8
  %25 = getelementptr inbounds %struct.video_info, %struct.video_info* %24, i32 0, i32 0
  store i32 6, i32* %25, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load %struct.video_info*, %struct.video_info** %9, align 8
  %28 = getelementptr inbounds %struct.video_info, %struct.video_info* %27, i32 0, i32 0
  store i32 8, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %23, %20
  %30 = load i32, i32* @PXL_RGB, align 4
  %31 = load %struct.video_info*, %struct.video_info** %9, align 8
  %32 = getelementptr inbounds %struct.video_info, %struct.video_info* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.video_info*, %struct.video_info** %9, align 8
  %43 = getelementptr inbounds %struct.video_info, %struct.video_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.video_info*, %struct.video_info** %9, align 8
  %54 = getelementptr inbounds %struct.video_info, %struct.video_info* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %56 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %55, i32 0, i32 0
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %58 = call i32 @memcpy(i32* %56, %struct.drm_display_mode* %57, i32 4)
  ret void
}

declare dso_local %struct.cdn_dp_device* @encoder_to_dp(%struct.drm_encoder*) #1

declare dso_local i32 @memcpy(i32*, %struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
