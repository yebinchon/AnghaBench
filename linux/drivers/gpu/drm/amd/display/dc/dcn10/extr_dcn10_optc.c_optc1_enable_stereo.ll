; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_enable_stereo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_enable_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_crtc_timing = type { i32 }
%struct.crtc_stereo_flags = type { i64, i64, i64, i64, i64 }
%struct.optc = type { i32 }

@OTG_STEREO_CONTROL = common dso_local global i32 0, align 4
@OTG_STEREO_EN = common dso_local global i32 0, align 4
@OTG_STEREO_SYNC_OUTPUT_LINE_NUM = common dso_local global i32 0, align 4
@OTG_STEREO_SYNC_OUTPUT_POLARITY = common dso_local global i32 0, align 4
@OTG_STEREO_EYE_FLAG_POLARITY = common dso_local global i32 0, align 4
@OTG_DISABLE_STEREOSYNC_OUTPUT_FOR_DP = common dso_local global i32 0, align 4
@OTG_3D_STRUCTURE_CONTROL = common dso_local global i32 0, align 4
@OTG_3D_STRUCTURE_EN = common dso_local global i32 0, align 4
@OTG_3D_STRUCTURE_STEREO_SEL_OVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timing_generator*, %struct.dc_crtc_timing*, %struct.crtc_stereo_flags*)* @optc1_enable_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optc1_enable_stereo(%struct.timing_generator* %0, %struct.dc_crtc_timing* %1, %struct.crtc_stereo_flags* %2) #0 {
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca %struct.dc_crtc_timing*, align 8
  %6 = alloca %struct.crtc_stereo_flags*, align 8
  %7 = alloca %struct.optc*, align 8
  %8 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %5, align 8
  store %struct.crtc_stereo_flags* %2, %struct.crtc_stereo_flags** %6, align 8
  %9 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %10 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %9)
  store %struct.optc* %10, %struct.optc** %7, align 8
  %11 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %6, align 8
  %12 = icmp ne %struct.crtc_stereo_flags* %11, null
  br i1 %12, label %13, label %72

13:                                               ; preds = %3
  %14 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %6, align 8
  %15 = getelementptr inbounds %struct.crtc_stereo_flags, %struct.crtc_stereo_flags* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* %8, align 4
  %20 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %6, align 8
  %21 = getelementptr inbounds %struct.crtc_stereo_flags, %struct.crtc_stereo_flags* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load i32, i32* @OTG_STEREO_CONTROL, align 4
  %26 = load i32, i32* @OTG_STEREO_EN, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @OTG_STEREO_SYNC_OUTPUT_LINE_NUM, align 4
  %29 = load i32, i32* @OTG_STEREO_SYNC_OUTPUT_POLARITY, align 4
  %30 = call i32 @REG_UPDATE_3(i32 %25, i32 %26, i32 %27, i32 %28, i32 0, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %24, %13
  %32 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %6, align 8
  %33 = getelementptr inbounds %struct.crtc_stereo_flags, %struct.crtc_stereo_flags* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i32, i32* @OTG_STEREO_CONTROL, align 4
  %38 = load i32, i32* @OTG_STEREO_EYE_FLAG_POLARITY, align 4
  %39 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %6, align 8
  %40 = getelementptr inbounds %struct.crtc_stereo_flags, %struct.crtc_stereo_flags* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 1
  %45 = call i32 @REG_UPDATE(i32 %37, i32 %38, i32 %44)
  br label %46

46:                                               ; preds = %36, %31
  %47 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %6, align 8
  %48 = getelementptr inbounds %struct.crtc_stereo_flags, %struct.crtc_stereo_flags* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @OTG_STEREO_CONTROL, align 4
  %53 = load i32, i32* @OTG_DISABLE_STEREOSYNC_OUTPUT_FOR_DP, align 4
  %54 = call i32 @REG_UPDATE(i32 %52, i32 %53, i32 1)
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %6, align 8
  %57 = getelementptr inbounds %struct.crtc_stereo_flags, %struct.crtc_stereo_flags* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load i32, i32* @OTG_3D_STRUCTURE_CONTROL, align 4
  %62 = load i32, i32* @OTG_3D_STRUCTURE_EN, align 4
  %63 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %6, align 8
  %64 = getelementptr inbounds %struct.crtc_stereo_flags, %struct.crtc_stereo_flags* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @OTG_3D_STRUCTURE_STEREO_SEL_OVR, align 4
  %67 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %6, align 8
  %68 = getelementptr inbounds %struct.crtc_stereo_flags, %struct.crtc_stereo_flags* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @REG_UPDATE_2(i32 %61, i32 %62, i64 %65, i32 %66, i64 %69)
  br label %71

71:                                               ; preds = %60, %55
  br label %72

72:                                               ; preds = %71, %3
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
