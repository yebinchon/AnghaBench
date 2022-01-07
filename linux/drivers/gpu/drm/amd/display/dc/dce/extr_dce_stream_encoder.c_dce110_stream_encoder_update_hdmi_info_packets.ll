; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_update_hdmi_info_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_update_hdmi_info_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.encoder_info_frame = type { %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i64 }
%struct.dce110_stream_encoder = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64 }

@AFMT_CNTL = common dso_local global i32 0, align 4
@AFMT_AUDIO_CLOCK_EN = common dso_local global i32 0, align 4
@AFMT_AVI_INFO0 = common dso_local global i32 0, align 4
@AFMT_AVI_INFO1 = common dso_local global i32 0, align 4
@AFMT_AVI_INFO2 = common dso_local global i32 0, align 4
@AFMT_AVI_INFO3 = common dso_local global i32 0, align 4
@AFMT_AVI_INFO_VERSION = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CONTROL0 = common dso_local global i32 0, align 4
@HDMI_AVI_INFO_SEND = common dso_local global i32 0, align 4
@HDMI_AVI_INFO_CONT = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CONTROL1 = common dso_local global i32 0, align 4
@HDMI_AVI_INFO_LINE = common dso_local global i32 0, align 4
@VBI_LINE_0 = common dso_local global i32 0, align 4
@HDMI_DB_CONTROL = common dso_local global i32 0, align 4
@HDMI_DB_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_encoder*, %struct.encoder_info_frame*)* @dce110_stream_encoder_update_hdmi_info_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_stream_encoder_update_hdmi_info_packets(%struct.stream_encoder* %0, %struct.encoder_info_frame* %1) #0 {
  %3 = alloca %struct.stream_encoder*, align 8
  %4 = alloca %struct.encoder_info_frame*, align 8
  %5 = alloca %struct.dce110_stream_encoder*, align 8
  %6 = alloca i32*, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %3, align 8
  store %struct.encoder_info_frame* %1, %struct.encoder_info_frame** %4, align 8
  %7 = load %struct.stream_encoder*, %struct.stream_encoder** %3, align 8
  %8 = call %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder* %7)
  store %struct.dce110_stream_encoder* %8, %struct.dce110_stream_encoder** %5, align 8
  %9 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %5, align 8
  %10 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %84

15:                                               ; preds = %2
  %16 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %5, align 8
  %17 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %84

22:                                               ; preds = %15
  %23 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %24 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %78

28:                                               ; preds = %22
  %29 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %30 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32* %33, i32** %6, align 8
  %34 = load i32, i32* @AFMT_CNTL, align 4
  %35 = call i64 @REG(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32, i32* @AFMT_CNTL, align 4
  %39 = load i32, i32* @AFMT_AUDIO_CLOCK_EN, align 4
  %40 = call i32 @REG_UPDATE(i32 %38, i32 %39, i32 1)
  br label %41

41:                                               ; preds = %37, %28
  %42 = load i32, i32* @AFMT_AVI_INFO0, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @REG_WRITE(i32 %42, i32 %45)
  %47 = load i32, i32* @AFMT_AVI_INFO1, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @REG_WRITE(i32 %47, i32 %50)
  %52 = load i32, i32* @AFMT_AVI_INFO2, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @REG_WRITE(i32 %52, i32 %55)
  %57 = load i32, i32* @AFMT_AVI_INFO3, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @REG_WRITE(i32 %57, i32 %60)
  %62 = load i32, i32* @AFMT_AVI_INFO3, align 4
  %63 = load i32, i32* @AFMT_AVI_INFO_VERSION, align 4
  %64 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %65 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @REG_UPDATE(i32 %62, i32 %63, i32 %67)
  %69 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %70 = load i32, i32* @HDMI_AVI_INFO_SEND, align 4
  %71 = load i32, i32* @HDMI_AVI_INFO_CONT, align 4
  %72 = call i32 @REG_UPDATE_2(i32 %69, i32 %70, i32 1, i32 %71, i32 1)
  %73 = load i32, i32* @HDMI_INFOFRAME_CONTROL1, align 4
  %74 = load i32, i32* @HDMI_AVI_INFO_LINE, align 4
  %75 = load i32, i32* @VBI_LINE_0, align 4
  %76 = add nsw i32 %75, 2
  %77 = call i32 @REG_UPDATE(i32 %73, i32 %74, i32 %76)
  br label %83

78:                                               ; preds = %22
  %79 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %80 = load i32, i32* @HDMI_AVI_INFO_SEND, align 4
  %81 = load i32, i32* @HDMI_AVI_INFO_CONT, align 4
  %82 = call i32 @REG_UPDATE_2(i32 %79, i32 %80, i32 0, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %78, %41
  br label %84

84:                                               ; preds = %83, %15, %2
  %85 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %5, align 8
  %86 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %115

91:                                               ; preds = %84
  %92 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %5, align 8
  %93 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %91
  %99 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %5, align 8
  %100 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %101 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %100, i32 0, i32 3
  %102 = call i32 @dce110_update_hdmi_info_packet(%struct.dce110_stream_encoder* %99, i32 0, %struct.TYPE_4__* %101)
  %103 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %5, align 8
  %104 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %105 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %104, i32 0, i32 2
  %106 = call i32 @dce110_update_hdmi_info_packet(%struct.dce110_stream_encoder* %103, i32 1, %struct.TYPE_4__* %105)
  %107 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %5, align 8
  %108 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %109 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %108, i32 0, i32 1
  %110 = call i32 @dce110_update_hdmi_info_packet(%struct.dce110_stream_encoder* %107, i32 2, %struct.TYPE_4__* %109)
  %111 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %5, align 8
  %112 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %113 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %112, i32 0, i32 0
  %114 = call i32 @dce110_update_hdmi_info_packet(%struct.dce110_stream_encoder* %111, i32 3, %struct.TYPE_4__* %113)
  br label %115

115:                                              ; preds = %98, %91, %84
  ret void
}

declare dso_local %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dce110_update_hdmi_info_packet(%struct.dce110_stream_encoder*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
