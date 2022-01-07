; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_update_scaler_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_update_scaler_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }

@INTEL_OUTPUT_FORMAT_YCBCR420 = common dso_local global i64 0, align 8
@SKL_CRTC_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_update_scaler_crtc(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %5 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %6 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store %struct.drm_display_mode* %7, %struct.drm_display_mode** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @INTEL_OUTPUT_FORMAT_YCBCR420, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* @SKL_CRTC_INDEX, align 4
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %28 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %31 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @skl_update_scaler(%struct.intel_crtc_state* %15, i32 %22, i32 %23, i32* %26, i32 %29, i32 %32, i32 %35, i32 %38, i32* null, i32 %39)
  ret i32 %40
}

declare dso_local i32 @skl_update_scaler(%struct.intel_crtc_state*, i32, i32, i32*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
