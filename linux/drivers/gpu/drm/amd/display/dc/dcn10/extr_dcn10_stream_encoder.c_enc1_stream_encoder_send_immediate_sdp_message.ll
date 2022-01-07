; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_send_immediate_sdp_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_send_immediate_sdp_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dcn10_stream_encoder = type { i32 }

@DP_SEC_CNTL2 = common dso_local global i32 0, align 4
@DP_SEC_GSP4_SEND_PENDING = common dso_local global i32 0, align 4
@DP_SEC_GSP4_SEND = common dso_local global i32 0, align 4
@DP_SEC_GSP4_SEND_ANY_LINE = common dso_local global i32 0, align 4
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
@AFMT_GENERIC4_IMMEDIATE_UPDATE_PENDING = common dso_local global i32 0, align 4
@AFMT_GENERIC4_IMMEDIATE_UPDATE = common dso_local global i32 0, align 4
@DP_SEC_CNTL = common dso_local global i32 0, align 4
@DP_SEC_STREAM_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enc1_stream_encoder_send_immediate_sdp_message(%struct.stream_encoder* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.stream_encoder*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn10_stream_encoder*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.stream_encoder*, %struct.stream_encoder** %4, align 8
  %12 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %11)
  store %struct.dcn10_stream_encoder* %12, %struct.dcn10_stream_encoder** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 50, i32* %9, align 4
  %13 = load i32, i32* @DP_SEC_CNTL2, align 4
  %14 = load i32, i32* @DP_SEC_GSP4_SEND_PENDING, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @REG_WAIT(i32 %13, i32 %14, i32 0, i32 10, i32 %15)
  %17 = load i32, i32* @DP_SEC_CNTL2, align 4
  %18 = load i32, i32* @DP_SEC_GSP4_SEND, align 4
  %19 = call i32 @REG_UPDATE(i32 %17, i32 %18, i32 0)
  %20 = load i32, i32* @DP_SEC_CNTL2, align 4
  %21 = load i32, i32* @DP_SEC_GSP4_SEND_ANY_LINE, align 4
  %22 = call i32 @REG_UPDATE(i32 %20, i32 %21, i32 1)
  %23 = load i32, i32* @AFMT_CNTL, align 4
  %24 = load i32, i32* @AFMT_AUDIO_CLOCK_EN, align 4
  %25 = call i32 @REG_UPDATE(i32 %23, i32 %24, i32 1)
  %26 = load i32, i32* @AFMT_VBI_PACKET_CONTROL, align 4
  %27 = load i32, i32* @AFMT_GENERIC_CONFLICT, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @REG_WAIT(i32 %26, i32 %27, i32 0, i32 10, i32 %28)
  %30 = load i32, i32* @AFMT_VBI_PACKET_CONTROL, align 4
  %31 = load i32, i32* @AFMT_GENERIC_CONFLICT_CLR, align 4
  %32 = call i32 @REG_UPDATE(i32 %30, i32 %31, i32 1)
  %33 = load i32, i32* @AFMT_VBI_PACKET_CONTROL, align 4
  %34 = load i32, i32* @AFMT_GENERIC_INDEX, align 4
  %35 = call i32 @REG_UPDATE(i32 %33, i32 %34, i32 4)
  %36 = load i32, i32* @AFMT_GENERIC_HDR, align 4
  %37 = load i32, i32* @AFMT_GENERIC_HB0, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AFMT_GENERIC_HB1, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AFMT_GENERIC_HB2, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AFMT_GENERIC_HB3, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @REG_SET_4(i32 %36, i32 0, i32 %37, i32 %40, i32 %41, i32 %44, i32 %45, i32 %48, i32 %49, i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32* %55, i32** %10, align 8
  %56 = load i32, i32* @AFMT_GENERIC_0, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %10, align 8
  %59 = load i32, i32* %57, align 4
  %60 = call i32 @REG_WRITE(i32 %56, i32 %59)
  %61 = load i32, i32* @AFMT_GENERIC_1, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %10, align 8
  %64 = load i32, i32* %62, align 4
  %65 = call i32 @REG_WRITE(i32 %61, i32 %64)
  %66 = load i32, i32* @AFMT_GENERIC_2, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %10, align 8
  %69 = load i32, i32* %67, align 4
  %70 = call i32 @REG_WRITE(i32 %66, i32 %69)
  %71 = load i32, i32* @AFMT_GENERIC_3, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %10, align 8
  %74 = load i32, i32* %72, align 4
  %75 = call i32 @REG_WRITE(i32 %71, i32 %74)
  %76 = load i32, i32* @AFMT_GENERIC_4, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %10, align 8
  %79 = load i32, i32* %77, align 4
  %80 = call i32 @REG_WRITE(i32 %76, i32 %79)
  %81 = load i32, i32* @AFMT_GENERIC_5, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %10, align 8
  %84 = load i32, i32* %82, align 4
  %85 = call i32 @REG_WRITE(i32 %81, i32 %84)
  %86 = load i32, i32* @AFMT_GENERIC_6, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %10, align 8
  %89 = load i32, i32* %87, align 4
  %90 = call i32 @REG_WRITE(i32 %86, i32 %89)
  %91 = load i32, i32* @AFMT_GENERIC_7, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @REG_WRITE(i32 %91, i32 %93)
  %95 = load i32, i32* @AFMT_VBI_PACKET_CONTROL1, align 4
  %96 = load i32, i32* @AFMT_GENERIC4_IMMEDIATE_UPDATE_PENDING, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @REG_WAIT(i32 %95, i32 %96, i32 0, i32 10, i32 %97)
  %99 = load i32, i32* @AFMT_VBI_PACKET_CONTROL1, align 4
  %100 = load i32, i32* @AFMT_GENERIC4_IMMEDIATE_UPDATE, align 4
  %101 = call i32 @REG_UPDATE(i32 %99, i32 %100, i32 1)
  %102 = load i32, i32* @DP_SEC_CNTL2, align 4
  %103 = load i32, i32* @DP_SEC_GSP4_SEND, align 4
  %104 = call i32 @REG_UPDATE(i32 %102, i32 %103, i32 1)
  %105 = load i32, i32* @DP_SEC_CNTL, align 4
  %106 = call i32 @REG_READ(i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %3
  %110 = load i32, i32* @DP_SEC_CNTL, align 4
  %111 = load i32, i32* @DP_SEC_STREAM_ENABLE, align 4
  %112 = call i32 @REG_UPDATE(i32 %110, i32 %111, i32 1)
  br label %113

113:                                              ; preds = %109, %3
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_SET_4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
