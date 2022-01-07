; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_update_generic_info_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_update_generic_info_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_stream_encoder = type { i32 }
%struct.dc_info_packet = type { i32*, i32, i32, i32, i32 }

@AFMT_CNTL = common dso_local global i32 0, align 4
@AFMT_AUDIO_CLOCK_EN = common dso_local global i32 0, align 4
@AFMT_VBI_PACKET_CONTROL = common dso_local global i32 0, align 4
@AFMT_GENERIC_CONFLICT = common dso_local global i32 0, align 4
@AFMT_GENERIC_CONFLICT_CLR = common dso_local global i32 0, align 4
@AFMT_GENERIC_INDEX = common dso_local global i32 0, align 4
@AFMT_GENERIC_HDR = common dso_local global i32 0, align 4
@AFMT_GENERIC_HB0 = common dso_local global i32 0, align 4
@AFMT_GENERIC_HB1 = common dso_local global i32 0, align 4
@AFMT_GENERIC_HB2 = common dso_local global i32 0, align 4
@AFMT_GENERIC_HB3 = common dso_local global i32 0, align 4
@AFMT_GENERIC_0 = common dso_local global i32 0, align 4
@AFMT_GENERIC_1 = common dso_local global i32 0, align 4
@AFMT_GENERIC_2 = common dso_local global i32 0, align 4
@AFMT_GENERIC_3 = common dso_local global i32 0, align 4
@AFMT_GENERIC_4 = common dso_local global i32 0, align 4
@AFMT_GENERIC_5 = common dso_local global i32 0, align 4
@AFMT_GENERIC_6 = common dso_local global i32 0, align 4
@AFMT_GENERIC_7 = common dso_local global i32 0, align 4
@AFMT_VBI_PACKET_CONTROL1 = common dso_local global i32 0, align 4
@AFMT_GENERIC0_FRAME_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC1_FRAME_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC2_FRAME_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC3_FRAME_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC4_FRAME_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC5_FRAME_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC6_FRAME_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC7_FRAME_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enc1_update_generic_info_packet(%struct.dcn10_stream_encoder* %0, i32 %1, %struct.dc_info_packet* %2) #0 {
  %4 = alloca %struct.dcn10_stream_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_info_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.dcn10_stream_encoder* %0, %struct.dcn10_stream_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dc_info_packet* %2, %struct.dc_info_packet** %6, align 8
  store i32 50, i32* %8, align 4
  %10 = load i32, i32* @AFMT_CNTL, align 4
  %11 = load i32, i32* @AFMT_AUDIO_CLOCK_EN, align 4
  %12 = call i32 @REG_UPDATE(i32 %10, i32 %11, i32 1)
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @ASSERT(i32 0)
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i32, i32* @AFMT_VBI_PACKET_CONTROL, align 4
  %19 = load i32, i32* @AFMT_GENERIC_CONFLICT, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @REG_WAIT(i32 %18, i32 %19, i32 0, i32 10, i32 %20)
  %22 = load i32, i32* @AFMT_VBI_PACKET_CONTROL, align 4
  %23 = load i32, i32* @AFMT_GENERIC_CONFLICT_CLR, align 4
  %24 = call i32 @REG_UPDATE(i32 %22, i32 %23, i32 1)
  %25 = load i32, i32* @AFMT_VBI_PACKET_CONTROL, align 4
  %26 = call i32 @REG_READ(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @AFMT_VBI_PACKET_CONTROL, align 4
  %28 = load i32, i32* @AFMT_GENERIC_INDEX, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @REG_UPDATE(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @AFMT_GENERIC_HDR, align 4
  %32 = load i32, i32* @AFMT_GENERIC_HB0, align 4
  %33 = load %struct.dc_info_packet*, %struct.dc_info_packet** %6, align 8
  %34 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AFMT_GENERIC_HB1, align 4
  %37 = load %struct.dc_info_packet*, %struct.dc_info_packet** %6, align 8
  %38 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AFMT_GENERIC_HB2, align 4
  %41 = load %struct.dc_info_packet*, %struct.dc_info_packet** %6, align 8
  %42 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AFMT_GENERIC_HB3, align 4
  %45 = load %struct.dc_info_packet*, %struct.dc_info_packet** %6, align 8
  %46 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @REG_SET_4(i32 %31, i32 0, i32 %32, i32 %35, i32 %36, i32 %39, i32 %40, i32 %43, i32 %44, i32 %47)
  %49 = load %struct.dc_info_packet*, %struct.dc_info_packet** %6, align 8
  %50 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32* %52, i32** %9, align 8
  %53 = load i32, i32* @AFMT_GENERIC_0, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %9, align 8
  %56 = load i32, i32* %54, align 4
  %57 = call i32 @REG_WRITE(i32 %53, i32 %56)
  %58 = load i32, i32* @AFMT_GENERIC_1, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %9, align 8
  %61 = load i32, i32* %59, align 4
  %62 = call i32 @REG_WRITE(i32 %58, i32 %61)
  %63 = load i32, i32* @AFMT_GENERIC_2, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %9, align 8
  %66 = load i32, i32* %64, align 4
  %67 = call i32 @REG_WRITE(i32 %63, i32 %66)
  %68 = load i32, i32* @AFMT_GENERIC_3, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %9, align 8
  %71 = load i32, i32* %69, align 4
  %72 = call i32 @REG_WRITE(i32 %68, i32 %71)
  %73 = load i32, i32* @AFMT_GENERIC_4, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %9, align 8
  %76 = load i32, i32* %74, align 4
  %77 = call i32 @REG_WRITE(i32 %73, i32 %76)
  %78 = load i32, i32* @AFMT_GENERIC_5, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %9, align 8
  %81 = load i32, i32* %79, align 4
  %82 = call i32 @REG_WRITE(i32 %78, i32 %81)
  %83 = load i32, i32* @AFMT_GENERIC_6, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %9, align 8
  %86 = load i32, i32* %84, align 4
  %87 = call i32 @REG_WRITE(i32 %83, i32 %86)
  %88 = load i32, i32* @AFMT_GENERIC_7, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @REG_WRITE(i32 %88, i32 %90)
  %92 = load i32, i32* %5, align 4
  switch i32 %92, label %125 [
    i32 0, label %93
    i32 1, label %97
    i32 2, label %101
    i32 3, label %105
    i32 4, label %109
    i32 5, label %113
    i32 6, label %117
    i32 7, label %121
  ]

93:                                               ; preds = %17
  %94 = load i32, i32* @AFMT_VBI_PACKET_CONTROL1, align 4
  %95 = load i32, i32* @AFMT_GENERIC0_FRAME_UPDATE, align 4
  %96 = call i32 @REG_UPDATE(i32 %94, i32 %95, i32 1)
  br label %126

97:                                               ; preds = %17
  %98 = load i32, i32* @AFMT_VBI_PACKET_CONTROL1, align 4
  %99 = load i32, i32* @AFMT_GENERIC1_FRAME_UPDATE, align 4
  %100 = call i32 @REG_UPDATE(i32 %98, i32 %99, i32 1)
  br label %126

101:                                              ; preds = %17
  %102 = load i32, i32* @AFMT_VBI_PACKET_CONTROL1, align 4
  %103 = load i32, i32* @AFMT_GENERIC2_FRAME_UPDATE, align 4
  %104 = call i32 @REG_UPDATE(i32 %102, i32 %103, i32 1)
  br label %126

105:                                              ; preds = %17
  %106 = load i32, i32* @AFMT_VBI_PACKET_CONTROL1, align 4
  %107 = load i32, i32* @AFMT_GENERIC3_FRAME_UPDATE, align 4
  %108 = call i32 @REG_UPDATE(i32 %106, i32 %107, i32 1)
  br label %126

109:                                              ; preds = %17
  %110 = load i32, i32* @AFMT_VBI_PACKET_CONTROL1, align 4
  %111 = load i32, i32* @AFMT_GENERIC4_FRAME_UPDATE, align 4
  %112 = call i32 @REG_UPDATE(i32 %110, i32 %111, i32 1)
  br label %126

113:                                              ; preds = %17
  %114 = load i32, i32* @AFMT_VBI_PACKET_CONTROL1, align 4
  %115 = load i32, i32* @AFMT_GENERIC5_FRAME_UPDATE, align 4
  %116 = call i32 @REG_UPDATE(i32 %114, i32 %115, i32 1)
  br label %126

117:                                              ; preds = %17
  %118 = load i32, i32* @AFMT_VBI_PACKET_CONTROL1, align 4
  %119 = load i32, i32* @AFMT_GENERIC6_FRAME_UPDATE, align 4
  %120 = call i32 @REG_UPDATE(i32 %118, i32 %119, i32 1)
  br label %126

121:                                              ; preds = %17
  %122 = load i32, i32* @AFMT_VBI_PACKET_CONTROL1, align 4
  %123 = load i32, i32* @AFMT_GENERIC7_FRAME_UPDATE, align 4
  %124 = call i32 @REG_UPDATE(i32 %122, i32 %123, i32 1)
  br label %126

125:                                              ; preds = %17
  br label %126

126:                                              ; preds = %125, %121, %117, %113, %109, %105, %101, %97, %93
  ret void
}

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_SET_4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
