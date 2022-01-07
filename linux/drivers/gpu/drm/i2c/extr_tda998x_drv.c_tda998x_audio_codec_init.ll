; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_audio_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_audio_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_codec_pdata = type { i32, i32, i32, i32* }
%struct.tda998x_priv = type { i32, i64* }
%struct.device = type { i32 }

@audio_codec_ops = common dso_local global i32 0, align 4
@__const.tda998x_audio_codec_init.codec_data = private unnamed_addr constant %struct.hdmi_codec_pdata { i32 2, i32 0, i32 0, i32* @audio_codec_ops }, align 8
@AUDIO_ROUTE_I2S = common dso_local global i64 0, align 8
@AUDIO_ROUTE_SPDIF = common dso_local global i64 0, align 8
@HDMI_CODEC_DRV_NAME = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda998x_priv*, %struct.device*)* @tda998x_audio_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda998x_audio_codec_init(%struct.tda998x_priv* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.tda998x_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hdmi_codec_pdata, align 8
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = bitcast %struct.hdmi_codec_pdata* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.hdmi_codec_pdata* @__const.tda998x_audio_codec_init.codec_data to i8*), i64 24, i1 false)
  %7 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %8 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* @AUDIO_ROUTE_I2S, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.hdmi_codec_pdata, %struct.hdmi_codec_pdata* %5, i32 0, i32 1
  store i32 1, i32* %15, align 4
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %18 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @AUDIO_ROUTE_SPDIF, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.hdmi_codec_pdata, %struct.hdmi_codec_pdata* %5, i32 0, i32 2
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %24, %16
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* @HDMI_CODEC_DRV_NAME, align 4
  %29 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %30 = call i32 @platform_device_register_data(%struct.device* %27, i32 %28, i32 %29, %struct.hdmi_codec_pdata* %5, i32 24)
  %31 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %32 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %34 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR_OR_ZERO(i32 %35)
  ret i32 %36
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
