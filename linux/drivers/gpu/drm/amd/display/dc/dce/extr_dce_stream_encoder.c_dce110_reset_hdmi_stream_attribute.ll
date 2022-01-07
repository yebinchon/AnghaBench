; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_reset_hdmi_stream_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_reset_hdmi_stream_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dce110_stream_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HDMI_CONTROL = common dso_local global i32 0, align 4
@HDMI_PACKET_GEN_VERSION = common dso_local global i32 0, align 4
@HDMI_KEEPOUT_MODE = common dso_local global i32 0, align 4
@HDMI_DEEP_COLOR_ENABLE = common dso_local global i32 0, align 4
@HDMI_DATA_SCRAMBLE_EN = common dso_local global i32 0, align 4
@HDMI_CLOCK_CHANNEL_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_encoder*)* @dce110_reset_hdmi_stream_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_reset_hdmi_stream_attribute(%struct.stream_encoder* %0) #0 {
  %2 = alloca %struct.stream_encoder*, align 8
  %3 = alloca %struct.dce110_stream_encoder*, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %2, align 8
  %4 = load %struct.stream_encoder*, %struct.stream_encoder** %2, align 8
  %5 = call %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder* %4)
  store %struct.dce110_stream_encoder* %5, %struct.dce110_stream_encoder** %3, align 8
  %6 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %3, align 8
  %7 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i32, i32* @HDMI_CONTROL, align 4
  %14 = load i32, i32* @HDMI_PACKET_GEN_VERSION, align 4
  %15 = load i32, i32* @HDMI_KEEPOUT_MODE, align 4
  %16 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %17 = load i32, i32* @HDMI_DATA_SCRAMBLE_EN, align 4
  %18 = load i32, i32* @HDMI_CLOCK_CHANNEL_RATE, align 4
  %19 = call i32 @REG_UPDATE_5(i32 %13, i32 %14, i32 1, i32 %15, i32 1, i32 %16, i32 0, i32 %17, i32 0, i32 %18, i32 0)
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @HDMI_CONTROL, align 4
  %22 = load i32, i32* @HDMI_PACKET_GEN_VERSION, align 4
  %23 = load i32, i32* @HDMI_KEEPOUT_MODE, align 4
  %24 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %25 = call i32 @REG_UPDATE_3(i32 %21, i32 %22, i32 1, i32 %23, i32 1, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %20, %12
  ret void
}

declare dso_local %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @REG_UPDATE_5(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
