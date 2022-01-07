; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_gen11_dsi_get_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_gen11_dsi_get_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.intel_dsi = type { i64, i64, i64 }

@DSI_DUAL_LINK_FRONT_BACK = common dso_local global i64 0, align 8
@INTEL_DSI_VIDEO_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @gen11_dsi_get_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen11_dsi_get_timings(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_dsi*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %7 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %7, i32 0, i32 0
  %9 = call %struct.intel_dsi* @enc_to_intel_dsi(i32* %8)
  store %struct.intel_dsi* %9, %struct.intel_dsi** %5, align 8
  %10 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %11 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.drm_display_mode* %12, %struct.drm_display_mode** %6, align 8
  %13 = load %struct.intel_dsi*, %struct.intel_dsi** %5, align 8
  %14 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  store i32 %21, i32* %19, align 4
  %22 = load %struct.intel_dsi*, %struct.intel_dsi** %5, align 8
  %23 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DSI_DUAL_LINK_FRONT_BACK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load %struct.intel_dsi*, %struct.intel_dsi** %5, align 8
  %29 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  br label %37

37:                                               ; preds = %27, %17
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 2
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %2
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.intel_dsi*, %struct.intel_dsi** %5, align 8
  %54 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @INTEL_DSI_VIDEO_MODE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %42
  %59 = load %struct.intel_dsi*, %struct.intel_dsi** %5, align 8
  %60 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %65 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 2
  store i32 %67, i32* %65, align 4
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %70, 2
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %63, %58
  br label %73

73:                                               ; preds = %72, %42
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 9
  store i32 %76, i32* %78, align 4
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %83 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  ret void
}

declare dso_local %struct.intel_dsi* @enc_to_intel_dsi(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
