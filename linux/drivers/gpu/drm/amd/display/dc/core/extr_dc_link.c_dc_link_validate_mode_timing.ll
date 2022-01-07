; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_validate_mode_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_validate_mode_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dc_link = type { i64*, %struct.dpcd_caps }
%struct.dpcd_caps = type { i32 }
%struct.dc_crtc_timing = type { i32 }

@DC_OK = common dso_local global i32 0, align 4
@DC_EXCEED_DONGLE_CAP = common dso_local global i32 0, align 4
@DC_NO_DP_LINK_BANDWIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_link_validate_mode_timing(%struct.dc_stream_state* %0, %struct.dc_link* %1, %struct.dc_crtc_timing* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_stream_state*, align 8
  %6 = alloca %struct.dc_link*, align 8
  %7 = alloca %struct.dc_crtc_timing*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dpcd_caps*, align 8
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %5, align 8
  store %struct.dc_link* %1, %struct.dc_link** %6, align 8
  store %struct.dc_crtc_timing* %2, %struct.dc_crtc_timing** %7, align 8
  %10 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %11 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 10
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %18 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %17, i32 0, i32 1
  store %struct.dpcd_caps* %18, %struct.dpcd_caps** %9, align 8
  %19 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %20 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @DC_OK, align 4
  store i32 %26, i32* %4, align 4
  br label %59

27:                                               ; preds = %3
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %7, align 8
  %32 = call i64 @get_timing_pixel_clock_100hz(%struct.dc_crtc_timing* %31)
  %33 = load i64, i64* %8, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @DC_EXCEED_DONGLE_CAP, align 4
  store i32 %36, i32* %4, align 4
  br label %59

37:                                               ; preds = %30, %27
  %38 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %7, align 8
  %39 = load %struct.dpcd_caps*, %struct.dpcd_caps** %9, align 8
  %40 = call i32 @dp_active_dongle_validate_timing(%struct.dc_crtc_timing* %38, %struct.dpcd_caps* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @DC_EXCEED_DONGLE_CAP, align 4
  store i32 %43, i32* %4, align 4
  br label %59

44:                                               ; preds = %37
  %45 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %46 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %56 [
    i32 128, label %48
    i32 129, label %48
  ]

48:                                               ; preds = %44, %44
  %49 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %50 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %7, align 8
  %51 = call i32 @dp_validate_mode_timing(%struct.dc_link* %49, %struct.dc_crtc_timing* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @DC_NO_DP_LINK_BANDWIDTH, align 4
  store i32 %54, i32* %4, align 4
  br label %59

55:                                               ; preds = %48
  br label %57

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* @DC_OK, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %53, %42, %35, %25
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @get_timing_pixel_clock_100hz(%struct.dc_crtc_timing*) #1

declare dso_local i32 @dp_active_dongle_validate_timing(%struct.dc_crtc_timing*, %struct.dpcd_caps*) #1

declare dso_local i32 @dp_validate_mode_timing(%struct.dc_link*, %struct.dc_crtc_timing*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
