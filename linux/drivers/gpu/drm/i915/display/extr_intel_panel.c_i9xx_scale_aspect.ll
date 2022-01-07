; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_i9xx_scale_aspect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_i9xx_scale_aspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }

@LVDS_BORDER_ENABLE = common dso_local global i32 0, align 4
@PFIT_HORIZ_SCALE_SHIFT = common dso_local global i32 0, align 4
@PFIT_VERT_SCALE_SHIFT = common dso_local global i32 0, align 4
@PFIT_ENABLE = common dso_local global i32 0, align 4
@VERT_INTERP_BILINEAR = common dso_local global i32 0, align 4
@HORIZ_INTERP_BILINEAR = common dso_local global i32 0, align 4
@VERT_AUTO_SCALE = common dso_local global i32 0, align 4
@HORIZ_AUTO_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, i32*, i32*, i32*)* @i9xx_scale_aspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_scale_aspect(%struct.intel_crtc_state* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %14 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.drm_display_mode* %15, %struct.drm_display_mode** %9, align 8
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %24 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %37 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %35, %38
  %40 = call i32 @centre_horizontally(%struct.drm_display_mode* %34, i32 %39)
  %41 = load i32, i32* @LVDS_BORDER_ENABLE, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %44 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %33
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %52 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @panel_fitter_scaling(i32 %53, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @PFIT_HORIZ_SCALE_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @PFIT_VERT_SCALE_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %60, %63
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @PFIT_ENABLE, align 4
  %69 = load i32, i32* @VERT_INTERP_BILINEAR, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @HORIZ_INTERP_BILINEAR, align 4
  %72 = or i32 %70, %71
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %50, %33
  br label %139

77:                                               ; preds = %4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %125

81:                                               ; preds = %77
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %85 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %83, %86
  %88 = call i32 @centre_vertically(%struct.drm_display_mode* %82, i32 %87)
  %89 = load i32, i32* @LVDS_BORDER_ENABLE, align 4
  %90 = load i32*, i32** %8, align 8
  store i32 %89, i32* %90, align 4
  %91 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %92 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %95 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %81
  %99 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %100 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %103 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @panel_fitter_scaling(i32 %101, i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @PFIT_HORIZ_SCALE_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @PFIT_VERT_SCALE_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = or i32 %108, %111
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* @PFIT_ENABLE, align 4
  %117 = load i32, i32* @VERT_INTERP_BILINEAR, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @HORIZ_INTERP_BILINEAR, align 4
  %120 = or i32 %118, %119
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %120
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %98, %81
  br label %138

125:                                              ; preds = %77
  %126 = load i32, i32* @PFIT_ENABLE, align 4
  %127 = load i32, i32* @VERT_AUTO_SCALE, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @HORIZ_AUTO_SCALE, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @VERT_INTERP_BILINEAR, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @HORIZ_INTERP_BILINEAR, align 4
  %134 = or i32 %132, %133
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %134
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %125, %124
  br label %139

139:                                              ; preds = %138, %76
  ret void
}

declare dso_local i32 @centre_horizontally(%struct.drm_display_mode*, i32) #1

declare dso_local i32 @panel_fitter_scaling(i32, i32) #1

declare dso_local i32 @centre_vertically(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
