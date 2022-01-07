; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_intel_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_intel_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_limit_t = type { i32 }
%struct.drm_crtc = type { i32 }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@cdv_intel_limits = common dso_local global %struct.gma_limit_t* null, align 8
@CDV_LIMIT_SINGLE_LVDS_96 = common dso_local global i64 0, align 8
@CDV_LIMIT_SINGLE_LVDS_100 = common dso_local global i64 0, align 8
@INTEL_OUTPUT_DISPLAYPORT = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@CDV_LIMIT_DP_27 = common dso_local global i64 0, align 8
@CDV_LIMIT_DP_100 = common dso_local global i64 0, align 8
@CDV_LIMIT_DAC_HDMI_27 = common dso_local global i64 0, align 8
@CDV_LIMIT_DAC_HDMI_96 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gma_limit_t* (%struct.drm_crtc*, i32)* @cdv_intel_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gma_limit_t* @cdv_intel_limit(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gma_limit_t*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %8 = call i64 @gma_pipe_has_type(%struct.drm_crtc* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 96000
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load %struct.gma_limit_t*, %struct.gma_limit_t** @cdv_intel_limits, align 8
  %15 = load i64, i64* @CDV_LIMIT_SINGLE_LVDS_96, align 8
  %16 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %14, i64 %15
  store %struct.gma_limit_t* %16, %struct.gma_limit_t** %5, align 8
  br label %21

17:                                               ; preds = %10
  %18 = load %struct.gma_limit_t*, %struct.gma_limit_t** @cdv_intel_limits, align 8
  %19 = load i64, i64* @CDV_LIMIT_SINGLE_LVDS_100, align 8
  %20 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %18, i64 %19
  store %struct.gma_limit_t* %20, %struct.gma_limit_t** %5, align 8
  br label %21

21:                                               ; preds = %17, %13
  br label %57

22:                                               ; preds = %2
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %24 = load i32, i32* @INTEL_OUTPUT_DISPLAYPORT, align 4
  %25 = call i64 @gma_pipe_has_type(%struct.drm_crtc* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %29 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %30 = call i64 @gma_pipe_has_type(%struct.drm_crtc* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 27000
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.gma_limit_t*, %struct.gma_limit_t** @cdv_intel_limits, align 8
  %37 = load i64, i64* @CDV_LIMIT_DP_27, align 8
  %38 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %36, i64 %37
  store %struct.gma_limit_t* %38, %struct.gma_limit_t** %5, align 8
  br label %43

39:                                               ; preds = %32
  %40 = load %struct.gma_limit_t*, %struct.gma_limit_t** @cdv_intel_limits, align 8
  %41 = load i64, i64* @CDV_LIMIT_DP_100, align 8
  %42 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %40, i64 %41
  store %struct.gma_limit_t* %42, %struct.gma_limit_t** %5, align 8
  br label %43

43:                                               ; preds = %39, %35
  br label %56

44:                                               ; preds = %27
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 27000
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.gma_limit_t*, %struct.gma_limit_t** @cdv_intel_limits, align 8
  %49 = load i64, i64* @CDV_LIMIT_DAC_HDMI_27, align 8
  %50 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %48, i64 %49
  store %struct.gma_limit_t* %50, %struct.gma_limit_t** %5, align 8
  br label %55

51:                                               ; preds = %44
  %52 = load %struct.gma_limit_t*, %struct.gma_limit_t** @cdv_intel_limits, align 8
  %53 = load i64, i64* @CDV_LIMIT_DAC_HDMI_96, align 8
  %54 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %52, i64 %53
  store %struct.gma_limit_t* %54, %struct.gma_limit_t** %5, align 8
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %43
  br label %57

57:                                               ; preds = %56, %21
  %58 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  ret %struct.gma_limit_t* %58
}

declare dso_local i64 @gma_pipe_has_type(%struct.drm_crtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
