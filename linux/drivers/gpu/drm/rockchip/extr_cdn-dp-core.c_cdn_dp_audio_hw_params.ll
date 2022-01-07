; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_audio_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_audio_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdmi_codec_daifmt = type { i32 }
%struct.hdmi_codec_params = type { i32, i32, i32 }
%struct.cdn_dp_device = type { i32, %struct.audio_info, i32 }
%struct.audio_info = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@AFMT_I2S = common dso_local global i32 0, align 4
@AFMT_SPDIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid format %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_params*)* @cdn_dp_audio_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_audio_hw_params(%struct.device* %0, i8* %1, %struct.hdmi_codec_daifmt* %2, %struct.hdmi_codec_params* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hdmi_codec_daifmt*, align 8
  %8 = alloca %struct.hdmi_codec_params*, align 8
  %9 = alloca %struct.cdn_dp_device*, align 8
  %10 = alloca %struct.audio_info, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.hdmi_codec_daifmt* %2, %struct.hdmi_codec_daifmt** %7, align 8
  store %struct.hdmi_codec_params* %3, %struct.hdmi_codec_params** %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.cdn_dp_device* @dev_get_drvdata(%struct.device* %12)
  store %struct.cdn_dp_device* %13, %struct.cdn_dp_device** %9, align 8
  %14 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %10, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %10, i32 0, i32 1
  %16 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %8, align 8
  %17 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %10, i32 0, i32 2
  %20 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %8, align 8
  %21 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %10, i32 0, i32 3
  %24 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %8, align 8
  %25 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %9, align 8
  %28 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %9, align 8
  %31 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %66

37:                                               ; preds = %4
  %38 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %7, align 8
  %39 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %47 [
    i32 129, label %41
    i32 128, label %44
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* @AFMT_I2S, align 4
  %43 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %10, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  br label %55

44:                                               ; preds = %37
  %45 = load i32, i32* @AFMT_SPDIF, align 4
  %46 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %10, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  br label %55

47:                                               ; preds = %37
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %7, align 8
  %50 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @DRM_DEV_ERROR(%struct.device* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  br label %66

55:                                               ; preds = %44, %41
  %56 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %9, align 8
  %57 = call i32 @cdn_dp_audio_config(%struct.cdn_dp_device* %56, %struct.audio_info* %10)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %9, align 8
  %62 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %61, i32 0, i32 1
  %63 = bitcast %struct.audio_info* %62 to i8*
  %64 = bitcast %struct.audio_info* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 16, i1 false)
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65, %47, %34
  %67 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %9, align 8
  %68 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %11, align 4
  ret i32 %70
}

declare dso_local %struct.cdn_dp_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @cdn_dp_audio_config(%struct.cdn_dp_device*, %struct.audio_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
