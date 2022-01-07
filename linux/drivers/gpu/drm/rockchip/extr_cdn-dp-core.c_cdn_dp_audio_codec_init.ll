; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_audio_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_audio_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_codec_pdata = type { i32, i32, i32, i32* }
%struct.cdn_dp_device = type { i32 }
%struct.device = type { i32 }

@audio_codec_ops = common dso_local global i32 0, align 4
@__const.cdn_dp_audio_codec_init.codec_data = private unnamed_addr constant %struct.hdmi_codec_pdata { i32 1, i32 1, i32 8, i32* @audio_codec_ops }, align 8
@HDMI_CODEC_DRV_NAME = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_device*, %struct.device*)* @cdn_dp_audio_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_audio_codec_init(%struct.cdn_dp_device* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hdmi_codec_pdata, align 8
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = bitcast %struct.hdmi_codec_pdata* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.hdmi_codec_pdata* @__const.cdn_dp_audio_codec_init.codec_data to i8*), i64 24, i1 false)
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i32, i32* @HDMI_CODEC_DRV_NAME, align 4
  %9 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %10 = call i32 @platform_device_register_data(%struct.device* %7, i32 %8, i32 %9, %struct.hdmi_codec_pdata* %5, i32 24)
  %11 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %12 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %14 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PTR_ERR_OR_ZERO(i32 %15)
  ret i32 %16
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @platform_device_register_data(%struct.device*, i32, i32, %struct.hdmi_codec_pdata*, i32) #2

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
