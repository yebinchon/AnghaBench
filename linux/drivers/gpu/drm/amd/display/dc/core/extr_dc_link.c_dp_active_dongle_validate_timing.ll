; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dp_active_dongle_validate_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dp_active_dongle_validate_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_crtc_timing = type { i32, i32 }
%struct.dpcd_caps = type { i32, %struct.dc_dongle_caps }
%struct.dc_dongle_caps = type { i64, i32, i32, i32, i32, i32 }

@DISPLAY_DONGLE_DP_HDMI_CONVERTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_crtc_timing*, %struct.dpcd_caps*)* @dp_active_dongle_validate_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_active_dongle_validate_timing(%struct.dc_crtc_timing* %0, %struct.dpcd_caps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_crtc_timing*, align 8
  %5 = alloca %struct.dpcd_caps*, align 8
  %6 = alloca %struct.dc_dongle_caps*, align 8
  store %struct.dc_crtc_timing* %0, %struct.dc_crtc_timing** %4, align 8
  store %struct.dpcd_caps* %1, %struct.dpcd_caps** %5, align 8
  %7 = load %struct.dpcd_caps*, %struct.dpcd_caps** %5, align 8
  %8 = getelementptr inbounds %struct.dpcd_caps, %struct.dpcd_caps* %7, i32 0, i32 1
  store %struct.dc_dongle_caps* %8, %struct.dc_dongle_caps** %6, align 8
  %9 = load %struct.dpcd_caps*, %struct.dpcd_caps** %5, align 8
  %10 = getelementptr inbounds %struct.dpcd_caps, %struct.dpcd_caps* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %19 [
    i32 132, label %12
    i32 134, label %12
    i32 133, label %12
  ]

12:                                               ; preds = %2, %2, %2
  %13 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %14 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 131
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %83

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %83

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.dc_dongle_caps*, %struct.dc_dongle_caps** %6, align 8
  %22 = getelementptr inbounds %struct.dc_dongle_caps, %struct.dc_dongle_caps* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DISPLAY_DONGLE_DP_HDMI_CONVERTER, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.dc_dongle_caps*, %struct.dc_dongle_caps** %6, align 8
  %28 = getelementptr inbounds %struct.dc_dongle_caps, %struct.dc_dongle_caps* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %20
  store i32 1, i32* %3, align 4
  br label %83

32:                                               ; preds = %26
  %33 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %34 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %51 [
    i32 131, label %36
    i32 128, label %36
    i32 129, label %37
    i32 130, label %44
  ]

36:                                               ; preds = %32, %32
  br label %52

37:                                               ; preds = %32
  %38 = load %struct.dc_dongle_caps*, %struct.dc_dongle_caps** %6, align 8
  %39 = getelementptr inbounds %struct.dc_dongle_caps, %struct.dc_dongle_caps* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %83

43:                                               ; preds = %37
  br label %52

44:                                               ; preds = %32
  %45 = load %struct.dc_dongle_caps*, %struct.dc_dongle_caps** %6, align 8
  %46 = getelementptr inbounds %struct.dc_dongle_caps, %struct.dc_dongle_caps* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %83

50:                                               ; preds = %44
  br label %52

51:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %83

52:                                               ; preds = %50, %43, %36
  %53 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %54 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %72 [
    i32 136, label %56
    i32 135, label %56
    i32 140, label %57
    i32 139, label %64
    i32 138, label %71
    i32 137, label %71
  ]

56:                                               ; preds = %52, %52
  br label %73

57:                                               ; preds = %52
  %58 = load %struct.dc_dongle_caps*, %struct.dc_dongle_caps** %6, align 8
  %59 = getelementptr inbounds %struct.dc_dongle_caps, %struct.dc_dongle_caps* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 10
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %83

63:                                               ; preds = %57
  br label %73

64:                                               ; preds = %52
  %65 = load %struct.dc_dongle_caps*, %struct.dc_dongle_caps** %6, align 8
  %66 = getelementptr inbounds %struct.dc_dongle_caps, %struct.dc_dongle_caps* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 12
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %83

70:                                               ; preds = %64
  br label %73

71:                                               ; preds = %52, %52
  br label %72

72:                                               ; preds = %52, %71
  store i32 0, i32* %3, align 4
  br label %83

73:                                               ; preds = %70, %63, %56
  %74 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %75 = call i32 @get_timing_pixel_clock_100hz(%struct.dc_crtc_timing* %74)
  %76 = load %struct.dc_dongle_caps*, %struct.dc_dongle_caps** %6, align 8
  %77 = getelementptr inbounds %struct.dc_dongle_caps, %struct.dc_dongle_caps* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %78, 10
  %80 = icmp sgt i32 %75, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %83

82:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %81, %72, %69, %62, %51, %49, %42, %31, %18, %17
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @get_timing_pixel_clock_100hz(%struct.dc_crtc_timing*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
