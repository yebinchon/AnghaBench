; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_register_audio_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_register_audio_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_codec_pdata = type { i32, i32, i32* }
%struct.device = type { i32 }
%struct.platform_device = type { i32 }

@mtk_hdmi_audio_codec_ops = common dso_local global i32 0, align 4
@__const.mtk_hdmi_register_audio_driver.codec_data = private unnamed_addr constant %struct.hdmi_codec_pdata { i32 2, i32 1, i32* @mtk_hdmi_audio_codec_ops }, align 8
@HDMI_CODEC_DRV_NAME = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s driver bound to HDMI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @mtk_hdmi_register_audio_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_register_audio_driver(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.hdmi_codec_pdata, align 8
  %4 = alloca %struct.platform_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = bitcast %struct.hdmi_codec_pdata* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.hdmi_codec_pdata* @__const.mtk_hdmi_register_audio_driver.codec_data to i8*), i64 16, i1 false)
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = load i32, i32* @HDMI_CODEC_DRV_NAME, align 4
  %8 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %9 = call %struct.platform_device* @platform_device_register_data(%struct.device* %6, i32 %7, i32 %8, %struct.hdmi_codec_pdata* %3, i32 16)
  store %struct.platform_device* %9, %struct.platform_device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = call i64 @IS_ERR(%struct.platform_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @HDMI_CODEC_DRV_NAME, align 4
  %16 = call i32 @DRM_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.platform_device* @platform_device_register_data(%struct.device*, i32, i32, %struct.hdmi_codec_pdata*, i32) #2

declare dso_local i64 @IS_ERR(%struct.platform_device*) #2

declare dso_local i32 @DRM_INFO(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
