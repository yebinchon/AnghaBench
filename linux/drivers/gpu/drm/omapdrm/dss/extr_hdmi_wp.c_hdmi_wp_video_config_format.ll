; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_video_config_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_video_config_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_wp_data = type { i32 }
%struct.hdmi_video_format = type { i32, i32, i32 }

@HDMI_WP_VIDEO_CFG = common dso_local global i32 0, align 4
@HDMI_WP_VIDEO_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi_wp_video_config_format(%struct.hdmi_wp_data* %0, %struct.hdmi_video_format* %1) #0 {
  %3 = alloca %struct.hdmi_wp_data*, align 8
  %4 = alloca %struct.hdmi_video_format*, align 8
  %5 = alloca i32, align 4
  store %struct.hdmi_wp_data* %0, %struct.hdmi_wp_data** %3, align 8
  store %struct.hdmi_video_format* %1, %struct.hdmi_video_format** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %7 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @HDMI_WP_VIDEO_CFG, align 4
  %10 = load %struct.hdmi_video_format*, %struct.hdmi_video_format** %4, align 8
  %11 = getelementptr inbounds %struct.hdmi_video_format, %struct.hdmi_video_format* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @REG_FLD_MOD(i32 %8, i32 %9, i32 %12, i32 10, i32 8)
  %14 = load %struct.hdmi_video_format*, %struct.hdmi_video_format** %4, align 8
  %15 = getelementptr inbounds %struct.hdmi_video_format, %struct.hdmi_video_format* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @FLD_VAL(i32 %16, i32 31, i32 16)
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.hdmi_video_format*, %struct.hdmi_video_format** %4, align 8
  %21 = getelementptr inbounds %struct.hdmi_video_format, %struct.hdmi_video_format* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @FLD_VAL(i32 %22, i32 15, i32 0)
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %27 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HDMI_WP_VIDEO_SIZE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @hdmi_write_reg(i32 %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
