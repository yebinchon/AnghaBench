; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_validate_output_with_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_validate_output_with_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_encoder = type { i32 }
%struct.dc_stream_state = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dce110_link_encoder = type { i32 }

@PIXEL_ENCODING_RGB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce110_link_encoder_validate_output_with_stream(%struct.link_encoder* %0, %struct.dc_stream_state* %1) #0 {
  %3 = alloca %struct.link_encoder*, align 8
  %4 = alloca %struct.dc_stream_state*, align 8
  %5 = alloca %struct.dce110_link_encoder*, align 8
  %6 = alloca i32, align 4
  store %struct.link_encoder* %0, %struct.link_encoder** %3, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %4, align 8
  %7 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %8 = call %struct.dce110_link_encoder* @TO_DCE110_LINK_ENC(%struct.link_encoder* %7)
  store %struct.dce110_link_encoder* %8, %struct.dce110_link_encoder** %5, align 8
  %9 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %10 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %48 [
    i32 132, label %12
    i32 133, label %12
    i32 130, label %25
    i32 135, label %33
    i32 134, label %33
    i32 131, label %38
    i32 129, label %38
    i32 128, label %47
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %14 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %15 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %20 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %23 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %22, i32 0, i32 1
  %24 = call i32 @dce110_link_encoder_validate_dvi_output(%struct.dce110_link_encoder* %13, i32 %18, i32 %21, %struct.TYPE_6__* %23)
  store i32 %24, i32* %6, align 4
  br label %49

25:                                               ; preds = %2
  %26 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %27 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %28 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %27, i32 0, i32 1
  %29 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %30 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dce110_link_encoder_validate_hdmi_output(%struct.dce110_link_encoder* %26, %struct.TYPE_6__* %28, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %49

33:                                               ; preds = %2, %2
  %34 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %35 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %36 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %35, i32 0, i32 1
  %37 = call i32 @dce110_link_encoder_validate_dp_output(%struct.dce110_link_encoder* %34, %struct.TYPE_6__* %36)
  store i32 %37, i32* %6, align 4
  br label %49

38:                                               ; preds = %2, %2
  %39 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %40 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PIXEL_ENCODING_RGB, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %6, align 4
  br label %49

47:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %49

48:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %47, %38, %33, %25, %12
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.dce110_link_encoder* @TO_DCE110_LINK_ENC(%struct.link_encoder*) #1

declare dso_local i32 @dce110_link_encoder_validate_dvi_output(%struct.dce110_link_encoder*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dce110_link_encoder_validate_hdmi_output(%struct.dce110_link_encoder*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @dce110_link_encoder_validate_dp_output(%struct.dce110_link_encoder*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
