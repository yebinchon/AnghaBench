; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_update_generic_info_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_update_generic_info_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_stream_encoder = type { i32 }
%struct.dc_info_packet = type { i32*, i32, i32, i32, i32 }

@AFMT_CNTL = common dso_local global i32 0, align 4
@AFMT_AUDIO_CLOCK_EN = common dso_local global i32 0, align 4
@AFMT_VBI_PACKET_CONTROL1 = common dso_local global i32 0, align 4
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
@AFMT_GENERIC0_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC2_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC0_FRAME_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC1_FRAME_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC2_FRAME_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC3_FRAME_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC4_FRAME_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC5_FRAME_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC6_FRAME_UPDATE = common dso_local global i32 0, align 4
@AFMT_GENERIC7_FRAME_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce110_stream_encoder*, i32, %struct.dc_info_packet*)* @dce110_update_generic_info_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_update_generic_info_packet(%struct.dce110_stream_encoder* %0, i32 %1, %struct.dc_info_packet* %2) #0 {
  %4 = alloca %struct.dce110_stream_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_info_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.dce110_stream_encoder* %0, %struct.dce110_stream_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dc_info_packet* %2, %struct.dc_info_packet** %6, align 8
  store i32 50, i32* %8, align 4
  %10 = load i32, i32* @AFMT_CNTL, align 4
  %11 = call i64 @REG(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @AFMT_CNTL, align 4
  %15 = load i32, i32* @AFMT_AUDIO_CLOCK_EN, align 4
  %16 = call i32 @REG_UPDATE(i32 %14, i32 %15, i32 1)
  br label %17

17:                                               ; preds = %13, %3
  %18 = load i32, i32* @AFMT_VBI_PACKET_CONTROL1, align 4
  %19 = call i64 @REG(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 8
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @ASSERT(i32 0)
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* @AFMT_VBI_PACKET_CONTROL, align 4
  %28 = load i32, i32* @AFMT_GENERIC_CONFLICT, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @REG_WAIT(i32 %27, i32 %28, i32 0, i32 10, i32 %29)
  %31 = load i32, i32* @AFMT_VBI_PACKET_CONTROL, align 4
  %32 = load i32, i32* @AFMT_GENERIC_CONFLICT_CLR, align 4
  %33 = call i32 @REG_UPDATE(i32 %31, i32 %32, i32 1)
  br label %34

34:                                               ; preds = %26, %17
  %35 = load i32, i32* @AFMT_VBI_PACKET_CONTROL, align 4
  %36 = call i32 @REG_READ(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @AFMT_VBI_PACKET_CONTROL, align 4
  %38 = load i32, i32* @AFMT_GENERIC_INDEX, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @REG_UPDATE(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @AFMT_GENERIC_HDR, align 4
  %42 = load i32, i32* @AFMT_GENERIC_HB0, align 4
  %43 = load %struct.dc_info_packet*, %struct.dc_info_packet** %6, align 8
  %44 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AFMT_GENERIC_HB1, align 4
  %47 = load %struct.dc_info_packet*, %struct.dc_info_packet** %6, align 8
  %48 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @AFMT_GENERIC_HB2, align 4
  %51 = load %struct.dc_info_packet*, %struct.dc_info_packet** %6, align 8
  %52 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AFMT_GENERIC_HB3, align 4
  %55 = load %struct.dc_info_packet*, %struct.dc_info_packet** %6, align 8
  %56 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @REG_SET_4(i32 %41, i32 0, i32 %42, i32 %45, i32 %46, i32 %49, i32 %50, i32 %53, i32 %54, i32 %57)
  %59 = load %struct.dc_info_packet*, %struct.dc_info_packet** %6, align 8
  %60 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32* %62, i32** %9, align 8
  %63 = load i32, i32* @AFMT_GENERIC_0, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %9, align 8
  %66 = load i32, i32* %64, align 4
  %67 = call i32 @REG_WRITE(i32 %63, i32 %66)
  %68 = load i32, i32* @AFMT_GENERIC_1, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %9, align 8
  %71 = load i32, i32* %69, align 4
  %72 = call i32 @REG_WRITE(i32 %68, i32 %71)
  %73 = load i32, i32* @AFMT_GENERIC_2, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %9, align 8
  %76 = load i32, i32* %74, align 4
  %77 = call i32 @REG_WRITE(i32 %73, i32 %76)
  %78 = load i32, i32* @AFMT_GENERIC_3, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %9, align 8
  %81 = load i32, i32* %79, align 4
  %82 = call i32 @REG_WRITE(i32 %78, i32 %81)
  %83 = load i32, i32* @AFMT_GENERIC_4, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %9, align 8
  %86 = load i32, i32* %84, align 4
  %87 = call i32 @REG_WRITE(i32 %83, i32 %86)
  %88 = load i32, i32* @AFMT_GENERIC_5, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %9, align 8
  %91 = load i32, i32* %89, align 4
  %92 = call i32 @REG_WRITE(i32 %88, i32 %91)
  %93 = load i32, i32* @AFMT_GENERIC_6, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %9, align 8
  %96 = load i32, i32* %94, align 4
  %97 = call i32 @REG_WRITE(i32 %93, i32 %96)
  %98 = load i32, i32* @AFMT_GENERIC_7, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @REG_WRITE(i32 %98, i32 %100)
  %102 = load i32, i32* @AFMT_VBI_PACKET_CONTROL1, align 4
  %103 = call i64 @REG(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %34
  %106 = load i32, i32* @AFMT_VBI_PACKET_CONTROL, align 4
  %107 = load i32, i32* @AFMT_GENERIC0_UPDATE, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* @AFMT_GENERIC2_UPDATE, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %112, 2
  %114 = zext i1 %113 to i32
  %115 = call i32 @REG_UPDATE_2(i32 %106, i32 %107, i32 %110, i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %105, %34
  ret void
}

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_SET_4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
