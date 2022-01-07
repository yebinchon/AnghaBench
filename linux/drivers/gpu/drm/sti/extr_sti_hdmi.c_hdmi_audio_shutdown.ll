; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_audio_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_audio_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sti_hdmi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HDMI_AUD_CFG_SPDIF_DIV_2 = common dso_local global i32 0, align 4
@HDMI_AUD_CFG_DTS_INVALID = common dso_local global i32 0, align 4
@HDMI_AUD_CFG_ONE_BIT_INVALID = common dso_local global i32 0, align 4
@HDMI_AUDIO_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*)* @hdmi_audio_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_audio_shutdown(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sti_hdmi*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.sti_hdmi* @dev_get_drvdata(%struct.device* %7)
  store %struct.sti_hdmi* %8, %struct.sti_hdmi** %5, align 8
  %9 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @HDMI_AUD_CFG_SPDIF_DIV_2, align 4
  %11 = load i32, i32* @HDMI_AUD_CFG_DTS_INVALID, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @HDMI_AUD_CFG_ONE_BIT_INVALID, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @HDMI_AUDIO_CFG, align 4
  %18 = call i32 @hdmi_write(%struct.sti_hdmi* %15, i32 %16, i32 %17)
  %19 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %20 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %23 = call i32 @hdmi_audio_infoframe_config(%struct.sti_hdmi* %22)
  ret void
}

declare dso_local %struct.sti_hdmi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @hdmi_write(%struct.sti_hdmi*, i32, i32) #1

declare dso_local i32 @hdmi_audio_infoframe_config(%struct.sti_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
