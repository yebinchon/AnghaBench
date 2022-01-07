; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_sti_hdmi_register_audio_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_sti_hdmi_register_audio_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_codec_pdata = type { i32, i32, i32* }
%struct.device = type { i32 }
%struct.sti_hdmi = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@audio_codec_ops = common dso_local global i32 0, align 4
@__const.sti_hdmi_register_audio_driver.codec_data = private unnamed_addr constant %struct.hdmi_codec_pdata { i32 8, i32 1, i32* @audio_codec_ops }, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HDMI_CODEC_DRV_NAME = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s Driver bound %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.sti_hdmi*)* @sti_hdmi_register_audio_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_hdmi_register_audio_driver(%struct.device* %0, %struct.sti_hdmi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sti_hdmi*, align 8
  %6 = alloca %struct.hdmi_codec_pdata, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sti_hdmi* %1, %struct.sti_hdmi** %5, align 8
  %7 = bitcast %struct.hdmi_codec_pdata* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.hdmi_codec_pdata* @__const.sti_hdmi_register_audio_driver.codec_data to i8*), i64 16, i1 false)
  %8 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %10 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @HDMI_CODEC_DRV_NAME, align 4
  %14 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %15 = call i32 @platform_device_register_data(%struct.device* %12, i32 %13, i32 %14, %struct.hdmi_codec_pdata* %6, i32 16)
  %16 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %17 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %19 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IS_ERR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %25 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PTR_ERR(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @HDMI_CODEC_DRV_NAME, align 4
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_name(%struct.device* %30)
  %32 = call i32 @DRM_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #2

declare dso_local i32 @platform_device_register_data(%struct.device*, i32, i32, %struct.hdmi_codec_pdata*, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #2

declare dso_local i32 @dev_name(%struct.device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
