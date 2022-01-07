; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_update_dp_info_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_update_dp_info_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.encoder_info_frame = type { %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dcn10_stream_encoder = type { i32 }

@DP_SEC_CNTL = common dso_local global i32 0, align 4
@DP_SEC_GSP0_ENABLE = common dso_local global i32 0, align 4
@DP_SEC_GSP2_ENABLE = common dso_local global i32 0, align 4
@DP_SEC_GSP3_ENABLE = common dso_local global i32 0, align 4
@DP_SEC_STREAM_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enc1_stream_encoder_update_dp_info_packets(%struct.stream_encoder* %0, %struct.encoder_info_frame* %1) #0 {
  %3 = alloca %struct.stream_encoder*, align 8
  %4 = alloca %struct.encoder_info_frame*, align 8
  %5 = alloca %struct.dcn10_stream_encoder*, align 8
  %6 = alloca i64, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %3, align 8
  store %struct.encoder_info_frame* %1, %struct.encoder_info_frame** %4, align 8
  %7 = load %struct.stream_encoder*, %struct.stream_encoder** %3, align 8
  %8 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %7)
  store %struct.dcn10_stream_encoder* %8, %struct.dcn10_stream_encoder** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %10 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %5, align 8
  %16 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %17 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %16, i32 0, i32 2
  %18 = call i32 @enc1_update_generic_info_packet(%struct.dcn10_stream_encoder* %15, i32 0, %struct.TYPE_2__* %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %21 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %5, align 8
  %27 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %28 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %27, i32 0, i32 1
  %29 = call i32 @enc1_update_generic_info_packet(%struct.dcn10_stream_encoder* %26, i32 2, %struct.TYPE_2__* %28)
  br label %30

30:                                               ; preds = %25, %19
  %31 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %32 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %5, align 8
  %38 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %39 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %38, i32 0, i32 0
  %40 = call i32 @enc1_update_generic_info_packet(%struct.dcn10_stream_encoder* %37, i32 3, %struct.TYPE_2__* %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load i32, i32* @DP_SEC_CNTL, align 4
  %43 = load i32, i32* @DP_SEC_GSP0_ENABLE, align 4
  %44 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %45 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @REG_UPDATE(i32 %42, i32 %43, i32 %47)
  %49 = load i32, i32* @DP_SEC_CNTL, align 4
  %50 = load i32, i32* @DP_SEC_GSP2_ENABLE, align 4
  %51 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %52 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @REG_UPDATE(i32 %49, i32 %50, i32 %54)
  %56 = load i32, i32* @DP_SEC_CNTL, align 4
  %57 = load i32, i32* @DP_SEC_GSP3_ENABLE, align 4
  %58 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %59 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @REG_UPDATE(i32 %56, i32 %57, i32 %61)
  %63 = load i32, i32* @DP_SEC_CNTL, align 4
  %64 = call i64 @REG_READ(i32 %63)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %41
  %68 = load i32, i32* @DP_SEC_CNTL, align 4
  %69 = load i32, i32* @DP_SEC_STREAM_ENABLE, align 4
  %70 = call i32 @REG_UPDATE(i32 %68, i32 %69, i32 1)
  br label %71

71:                                               ; preds = %67, %41
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @enc1_update_generic_info_packet(%struct.dcn10_stream_encoder*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i64 @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
