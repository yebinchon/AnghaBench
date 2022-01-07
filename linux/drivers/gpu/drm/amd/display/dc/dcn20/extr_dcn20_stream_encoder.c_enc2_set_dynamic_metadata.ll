; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_stream_encoder.c_enc2_set_dynamic_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_stream_encoder.c_enc2_set_dynamic_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dcn10_stream_encoder = type { i32 }

@DME_CONTROL = common dso_local global i32 0, align 4
@METADATA_HUBP_REQUESTOR_ID = common dso_local global i32 0, align 4
@METADATA_STREAM_TYPE = common dso_local global i32 0, align 4
@dmdata_dolby_vision = common dso_local global i32 0, align 4
@dmdata_dp = common dso_local global i32 0, align 4
@DP_SEC_METADATA_TRANSMISSION = common dso_local global i32 0, align 4
@DP_SEC_METADATA_PACKET_ENABLE = common dso_local global i32 0, align 4
@DP_SEC_METADATA_PACKET_LINE_REFERENCE = common dso_local global i32 0, align 4
@DP_SEC_METADATA_PACKET_LINE = common dso_local global i32 0, align 4
@HDMI_METADATA_PACKET_CONTROL = common dso_local global i32 0, align 4
@HDMI_METADATA_PACKET_ENABLE = common dso_local global i32 0, align 4
@HDMI_METADATA_PACKET_LINE_REFERENCE = common dso_local global i32 0, align 4
@HDMI_METADATA_PACKET_LINE = common dso_local global i32 0, align 4
@DIG_FE_CNTL = common dso_local global i32 0, align 4
@DOLBY_VISION_EN = common dso_local global i32 0, align 4
@METADATA_ENGINE_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enc2_set_dynamic_metadata(%struct.stream_encoder* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stream_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcn10_stream_encoder*, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.stream_encoder*, %struct.stream_encoder** %5, align 8
  %11 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %10)
  store %struct.dcn10_stream_encoder* %11, %struct.dcn10_stream_encoder** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %4
  %15 = load i32, i32* @DME_CONTROL, align 4
  %16 = load i32, i32* @METADATA_HUBP_REQUESTOR_ID, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @METADATA_STREAM_TYPE, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @dmdata_dolby_vision, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = call i32 @REG_UPDATE_2(i32 %15, i32 %16, i32 %17, i32 %18, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @dmdata_dp, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %14
  %29 = load i32, i32* @DP_SEC_METADATA_TRANSMISSION, align 4
  %30 = load i32, i32* @DP_SEC_METADATA_PACKET_ENABLE, align 4
  %31 = load i32, i32* @DP_SEC_METADATA_PACKET_LINE_REFERENCE, align 4
  %32 = load i32, i32* @DP_SEC_METADATA_PACKET_LINE, align 4
  %33 = call i32 @REG_UPDATE_3(i32 %29, i32 %30, i32 1, i32 %31, i32 0, i32 %32, i32 20)
  br label %48

34:                                               ; preds = %14
  %35 = load i32, i32* @HDMI_METADATA_PACKET_CONTROL, align 4
  %36 = load i32, i32* @HDMI_METADATA_PACKET_ENABLE, align 4
  %37 = load i32, i32* @HDMI_METADATA_PACKET_LINE_REFERENCE, align 4
  %38 = load i32, i32* @HDMI_METADATA_PACKET_LINE, align 4
  %39 = call i32 @REG_UPDATE_3(i32 %35, i32 %36, i32 1, i32 %37, i32 0, i32 %38, i32 2)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @dmdata_dolby_vision, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @DIG_FE_CNTL, align 4
  %45 = load i32, i32* @DOLBY_VISION_EN, align 4
  %46 = call i32 @REG_UPDATE(i32 %44, i32 %45, i32 1)
  br label %47

47:                                               ; preds = %43, %34
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32, i32* @DME_CONTROL, align 4
  %50 = load i32, i32* @METADATA_ENGINE_EN, align 4
  %51 = call i32 @REG_UPDATE(i32 %49, i32 %50, i32 1)
  br label %71

52:                                               ; preds = %4
  %53 = load i32, i32* @DME_CONTROL, align 4
  %54 = load i32, i32* @METADATA_ENGINE_EN, align 4
  %55 = call i32 @REG_UPDATE(i32 %53, i32 %54, i32 0)
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @dmdata_dp, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* @DP_SEC_METADATA_TRANSMISSION, align 4
  %61 = load i32, i32* @DP_SEC_METADATA_PACKET_ENABLE, align 4
  %62 = call i32 @REG_UPDATE(i32 %60, i32 %61, i32 0)
  br label %70

63:                                               ; preds = %52
  %64 = load i32, i32* @HDMI_METADATA_PACKET_CONTROL, align 4
  %65 = load i32, i32* @HDMI_METADATA_PACKET_ENABLE, align 4
  %66 = call i32 @REG_UPDATE(i32 %64, i32 %65, i32 0)
  %67 = load i32, i32* @DIG_FE_CNTL, align 4
  %68 = load i32, i32* @DOLBY_VISION_EN, align 4
  %69 = call i32 @REG_UPDATE(i32 %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %63, %59
  br label %71

71:                                               ; preds = %70, %48
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
