; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_get_scanoutpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_get_scanoutpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32 }
%struct.vc4_dev = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.vc4_crtc = type { i32, i32, i32 }

@SCALER_DISPSTATX_LINE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@SCALER_DISPSTATX_FRAME_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_crtc_get_scanoutpos(%struct.drm_device* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, %struct.drm_display_mode* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.drm_display_mode*, align 8
  %18 = alloca %struct.vc4_dev*, align 8
  %19 = alloca %struct.drm_crtc*, align 8
  %20 = alloca %struct.vc4_crtc*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.drm_display_mode* %7, %struct.drm_display_mode** %17, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %26 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %25)
  store %struct.vc4_dev* %26, %struct.vc4_dev** %18, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.drm_crtc* @drm_crtc_from_index(%struct.drm_device* %27, i32 %28)
  store %struct.drm_crtc* %29, %struct.drm_crtc** %19, align 8
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %19, align 8
  %31 = call %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc* %30)
  store %struct.vc4_crtc* %31, %struct.vc4_crtc** %20, align 8
  store i32 0, i32* %24, align 4
  %32 = load i32*, i32** %15, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %8
  %35 = call i32 (...) @ktime_get()
  %36 = load i32*, i32** %15, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %8
  %38 = load %struct.vc4_crtc*, %struct.vc4_crtc** %20, align 8
  %39 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SCALER_DISPSTATX(i32 %40)
  %42 = call i32 @HVS_READ(i32 %41)
  store i32 %42, i32* %21, align 4
  %43 = load i32*, i32** %16, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = call i32 (...) @ktime_get()
  %47 = load i32*, i32** %16, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %37
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* @SCALER_DISPSTATX_LINE, align 4
  %51 = call i32 @VC4_GET_FIELD(i32 %49, i32 %50)
  %52 = load i32*, i32** %13, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %14, align 8
  store i32 0, i32* %53, align 4
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %48
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 2
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %21, align 4
  %65 = load i32, i32* @SCALER_DISPSTATX_FRAME_COUNT, align 4
  %66 = call i32 @VC4_GET_FIELD(i32 %64, i32 %65)
  %67 = srem i32 %66, 2
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %60
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 2
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %73
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %69, %60
  br label %78

78:                                               ; preds = %77, %48
  %79 = load %struct.vc4_crtc*, %struct.vc4_crtc** %20, align 8
  %80 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %83 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %81, %84
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %22, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store i32 1, i32* %24, align 4
  br label %89

89:                                               ; preds = %88, %78
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %22, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i32, i32* %22, align 4
  %96 = add nsw i32 %95, 1
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, %96
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %24, align 4
  store i32 %100, i32* %9, align 4
  br label %135

101:                                              ; preds = %89
  %102 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %103 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %106 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %104, %107
  store i32 %108, i32* %23, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %101
  %112 = load i32, i32* %23, align 4
  %113 = sub nsw i32 0, %112
  %114 = load i32*, i32** %13, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32*, i32** %15, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.vc4_crtc*, %struct.vc4_crtc** %20, align 8
  %119 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %15, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %111
  %123 = load i32*, i32** %16, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load %struct.vc4_crtc*, %struct.vc4_crtc** %20, align 8
  %127 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %16, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %122
  br label %133

131:                                              ; preds = %101
  %132 = load i32*, i32** %13, align 8
  store i32 0, i32* %132, align 4
  br label %133

133:                                              ; preds = %131, %130
  %134 = load i32, i32* %24, align 4
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %133, %94
  %136 = load i32, i32* %9, align 4
  ret i32 %136
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.drm_crtc* @drm_crtc_from_index(%struct.drm_device*, i32) #1

declare dso_local %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @HVS_READ(i32) #1

declare dso_local i32 @SCALER_DISPSTATX(i32) #1

declare dso_local i32 @VC4_GET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
