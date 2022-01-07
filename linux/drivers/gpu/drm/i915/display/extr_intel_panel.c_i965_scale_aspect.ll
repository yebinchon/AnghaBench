; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_i965_scale_aspect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_i965_scale_aspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i64, i64 }

@PFIT_ENABLE = common dso_local global i64 0, align 8
@PFIT_SCALING_PILLAR = common dso_local global i64 0, align 8
@PFIT_SCALING_LETTER = common dso_local global i64 0, align 8
@PFIT_SCALING_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, i64*)* @i965_scale_aspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i965_scale_aspect(%struct.intel_crtc_state* %0, i64* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.drm_display_mode* %10, %struct.drm_display_mode** %5, align 8
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %12 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = mul nsw i64 %13, %16
  store i64 %17, i64* %6, align 8
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %19 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = mul nsw i64 %20, %23
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load i64, i64* @PFIT_ENABLE, align 8
  %30 = load i64, i64* @PFIT_SCALING_PILLAR, align 8
  %31 = or i64 %29, %30
  %32 = load i64*, i64** %4, align 8
  %33 = load i64, i64* %32, align 8
  %34 = or i64 %33, %31
  store i64 %34, i64* %32, align 8
  br label %63

35:                                               ; preds = %2
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i64, i64* @PFIT_ENABLE, align 8
  %41 = load i64, i64* @PFIT_SCALING_LETTER, align 8
  %42 = or i64 %40, %41
  %43 = load i64*, i64** %4, align 8
  %44 = load i64, i64* %43, align 8
  %45 = or i64 %44, %42
  store i64 %45, i64* %43, align 8
  br label %62

46:                                               ; preds = %35
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %51 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load i64, i64* @PFIT_ENABLE, align 8
  %56 = load i64, i64* @PFIT_SCALING_AUTO, align 8
  %57 = or i64 %55, %56
  %58 = load i64*, i64** %4, align 8
  %59 = load i64, i64* %58, align 8
  %60 = or i64 %59, %57
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %54, %46
  br label %62

62:                                               ; preds = %61, %39
  br label %63

63:                                               ; preds = %62, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
