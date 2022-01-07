; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_apply_encoder_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_apply_encoder_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__*, %struct.radeon_device* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_encoder = type { i32, i32 }
%struct.radeon_crtc = type { i64 }

@ATOM_DEVICE_LCD1_SUPPORT = common dso_local global i32 0, align 4
@AVIVO_LVTMA_BIT_DEPTH_CONTROL = common dso_local global i64 0, align 8
@AVIVO_LVTMA_BIT_DEPTH_CONTROL_TRUNCATE_EN = common dso_local global i32 0, align 4
@AVIVO_LVTMA_BIT_DEPTH_CONTROL_SPATIAL_DITHER_EN = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@CIK_LB_DATA_FORMAT = common dso_local global i64 0, align 8
@CIK_INTERLEAVE_EN = common dso_local global i32 0, align 4
@EVERGREEN_DATA_FORMAT = common dso_local global i64 0, align 8
@EVERGREEN_INTERLEAVE_EN = common dso_local global i32 0, align 4
@AVIVO_D1MODE_DATA_FORMAT = common dso_local global i64 0, align 8
@AVIVO_D1MODE_INTERLEAVE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*)* @atombios_apply_encoder_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_apply_encoder_quirks(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.radeon_crtc*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %6, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %17 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %16)
  store %struct.radeon_encoder* %17, %struct.radeon_encoder** %7, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.radeon_crtc* @to_radeon_crtc(i32 %20)
  store %struct.radeon_crtc* %21, %struct.radeon_crtc** %8, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 29125
  br i1 %27, label %28, label %64

28:                                               ; preds = %2
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 4203
  br i1 %34, label %35, label %64

35:                                               ; preds = %28
  %36 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %42, label %64

42:                                               ; preds = %35
  %43 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %44 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %42
  %50 = load i64, i64* @AVIVO_LVTMA_BIT_DEPTH_CONTROL, align 8
  %51 = call i32 @RREG32(i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @AVIVO_LVTMA_BIT_DEPTH_CONTROL_TRUNCATE_EN, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @AVIVO_LVTMA_BIT_DEPTH_CONTROL_SPATIAL_DITHER_EN, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i64, i64* @AVIVO_LVTMA_BIT_DEPTH_CONTROL, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @WREG32(i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %49, %42
  br label %64

64:                                               ; preds = %63, %35, %28, %2
  %65 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %66 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %154

68:                                               ; preds = %64
  %69 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %70 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %154, label %75

75:                                               ; preds = %68
  %76 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %77 = call i64 @ASIC_IS_DCE8(%struct.radeon_device* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %75
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load i64, i64* @CIK_LB_DATA_FORMAT, align 8
  %88 = load %struct.radeon_crtc*, %struct.radeon_crtc** %8, align 8
  %89 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = load i32, i32* @CIK_INTERLEAVE_EN, align 4
  %93 = call i32 @WREG32(i64 %91, i32 %92)
  br label %101

94:                                               ; preds = %79
  %95 = load i64, i64* @CIK_LB_DATA_FORMAT, align 8
  %96 = load %struct.radeon_crtc*, %struct.radeon_crtc** %8, align 8
  %97 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = call i32 @WREG32(i64 %99, i32 0)
  br label %101

101:                                              ; preds = %94, %86
  br label %153

102:                                              ; preds = %75
  %103 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %104 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %102
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load i64, i64* @EVERGREEN_DATA_FORMAT, align 8
  %115 = load %struct.radeon_crtc*, %struct.radeon_crtc** %8, align 8
  %116 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  %119 = load i32, i32* @EVERGREEN_INTERLEAVE_EN, align 4
  %120 = call i32 @WREG32(i64 %118, i32 %119)
  br label %128

121:                                              ; preds = %106
  %122 = load i64, i64* @EVERGREEN_DATA_FORMAT, align 8
  %123 = load %struct.radeon_crtc*, %struct.radeon_crtc** %8, align 8
  %124 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = call i32 @WREG32(i64 %126, i32 0)
  br label %128

128:                                              ; preds = %121, %113
  br label %152

129:                                              ; preds = %102
  %130 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %131 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %129
  %137 = load i64, i64* @AVIVO_D1MODE_DATA_FORMAT, align 8
  %138 = load %struct.radeon_crtc*, %struct.radeon_crtc** %8, align 8
  %139 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = load i32, i32* @AVIVO_D1MODE_INTERLEAVE_EN, align 4
  %143 = call i32 @WREG32(i64 %141, i32 %142)
  br label %151

144:                                              ; preds = %129
  %145 = load i64, i64* @AVIVO_D1MODE_DATA_FORMAT, align 8
  %146 = load %struct.radeon_crtc*, %struct.radeon_crtc** %8, align 8
  %147 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %145, %148
  %150 = call i32 @WREG32(i64 %149, i32 0)
  br label %151

151:                                              ; preds = %144, %136
  br label %152

152:                                              ; preds = %151, %128
  br label %153

153:                                              ; preds = %152, %101
  br label %154

154:                                              ; preds = %153, %68, %64
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE8(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
