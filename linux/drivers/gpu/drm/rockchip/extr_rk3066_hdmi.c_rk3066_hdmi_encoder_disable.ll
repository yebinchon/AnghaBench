; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.rk3066_hdmi = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"hdmi encoder disable\0A\00", align 1
@HDMI_SYS_POWER_MODE_E = common dso_local global i64 0, align 8
@HDMI_VIDEO_CTRL2 = common dso_local global i32 0, align 4
@HDMI_VIDEO_AUDIO_DISABLE_MASK = common dso_local global i32 0, align 4
@HDMI_AUDIO_CP_LOGIC_RESET_MASK = common dso_local global i32 0, align 4
@HDMI_AUDIO_CP_LOGIC_RESET = common dso_local global i32 0, align 4
@HDMI_SYS_POWER_MODE_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @rk3066_hdmi_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3066_hdmi_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.rk3066_hdmi*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = call %struct.rk3066_hdmi* @to_rk3066_hdmi(%struct.drm_encoder* %4)
  store %struct.rk3066_hdmi* %5, %struct.rk3066_hdmi** %3, align 8
  %6 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %7 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @DRM_DEV_DEBUG(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %11 = call i64 @rk3066_hdmi_get_power_mode(%struct.rk3066_hdmi* %10)
  %12 = load i64, i64* @HDMI_SYS_POWER_MODE_E, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %16 = load i32, i32* @HDMI_VIDEO_CTRL2, align 4
  %17 = load i32, i32* @HDMI_VIDEO_AUDIO_DISABLE_MASK, align 4
  %18 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %15, i32 %16, i32 %17)
  %19 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %20 = load i32, i32* @HDMI_VIDEO_CTRL2, align 4
  %21 = load i32, i32* @HDMI_AUDIO_CP_LOGIC_RESET_MASK, align 4
  %22 = load i32, i32* @HDMI_AUDIO_CP_LOGIC_RESET, align 4
  %23 = call i32 @hdmi_modb(%struct.rk3066_hdmi* %19, i32 %20, i32 %21, i32 %22)
  %24 = call i32 @usleep_range(i32 500, i32 510)
  br label %25

25:                                               ; preds = %14, %1
  %26 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %27 = load i32, i32* @HDMI_SYS_POWER_MODE_A, align 4
  %28 = call i32 @rk3066_hdmi_set_power_mode(%struct.rk3066_hdmi* %26, i32 %27)
  ret void
}

declare dso_local %struct.rk3066_hdmi* @to_rk3066_hdmi(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEV_DEBUG(i32, i8*) #1

declare dso_local i64 @rk3066_hdmi_get_power_mode(%struct.rk3066_hdmi*) #1

declare dso_local i32 @hdmi_writeb(%struct.rk3066_hdmi*, i32, i32) #1

declare dso_local i32 @hdmi_modb(%struct.rk3066_hdmi*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rk3066_hdmi_set_power_mode(%struct.rk3066_hdmi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
