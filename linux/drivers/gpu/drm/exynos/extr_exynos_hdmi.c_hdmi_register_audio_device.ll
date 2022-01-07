; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_register_audio_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_register_audio_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_codec_pdata = type { i32, i32, i32* }
%struct.hdmi_context = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@audio_codec_ops = common dso_local global i32 0, align 4
@__const.hdmi_register_audio_device.codec_data = private unnamed_addr constant %struct.hdmi_codec_pdata { i32 6, i32 1, i32* @audio_codec_ops }, align 8
@HDMI_CODEC_DRV_NAME = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_context*)* @hdmi_register_audio_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_register_audio_device(%struct.hdmi_context* %0) #0 {
  %2 = alloca %struct.hdmi_context*, align 8
  %3 = alloca %struct.hdmi_codec_pdata, align 8
  store %struct.hdmi_context* %0, %struct.hdmi_context** %2, align 8
  %4 = bitcast %struct.hdmi_codec_pdata* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.hdmi_codec_pdata* @__const.hdmi_register_audio_device.codec_data to i8*), i64 16, i1 false)
  %5 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %6 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @HDMI_CODEC_DRV_NAME, align 4
  %9 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %10 = call i32 @platform_device_register_data(i32 %7, i32 %8, i32 %9, %struct.hdmi_codec_pdata* %3, i32 16)
  %11 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %12 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %15 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PTR_ERR_OR_ZERO(i32 %17)
  ret i32 %18
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @platform_device_register_data(i32, i32, i32, %struct.hdmi_codec_pdata*, i32) #2

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
