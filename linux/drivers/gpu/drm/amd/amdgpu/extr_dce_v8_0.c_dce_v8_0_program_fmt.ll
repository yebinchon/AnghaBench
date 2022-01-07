; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_program_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_program_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_encoder = type { i32, i64 }
%struct.amdgpu_crtc = type { i64 }
%struct.drm_connector = type { i32 }
%struct.amdgpu_connector = type { i32 }

@AMDGPU_FMT_DITHER_DISABLE = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1 = common dso_local global i64 0, align 8
@ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2 = common dso_local global i64 0, align 8
@AMDGPU_FMT_DITHER_ENABLE = common dso_local global i32 0, align 4
@FMT_BIT_DEPTH_CONTROL__FMT_FRAME_RANDOM_ENABLE_MASK = common dso_local global i32 0, align 4
@FMT_BIT_DEPTH_CONTROL__FMT_HIGHPASS_RANDOM_ENABLE_MASK = common dso_local global i32 0, align 4
@FMT_BIT_DEPTH_CONTROL__FMT_SPATIAL_DITHER_EN_MASK = common dso_local global i32 0, align 4
@FMT_BIT_DEPTH_CONTROL__FMT_SPATIAL_DITHER_DEPTH__SHIFT = common dso_local global i32 0, align 4
@FMT_BIT_DEPTH_CONTROL__FMT_TRUNCATE_EN_MASK = common dso_local global i32 0, align 4
@FMT_BIT_DEPTH_CONTROL__FMT_TRUNCATE_DEPTH__SHIFT = common dso_local global i32 0, align 4
@FMT_BIT_DEPTH_CONTROL__FMT_RGB_RANDOM_ENABLE_MASK = common dso_local global i32 0, align 4
@mmFMT_BIT_DEPTH_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @dce_v8_0_program_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v8_0_program_fmt(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_encoder*, align 8
  %6 = alloca %struct.amdgpu_crtc*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_connector*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %3, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %4, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %19 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %18)
  store %struct.amdgpu_encoder* %19, %struct.amdgpu_encoder** %5, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %21 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(i32 %22)
  store %struct.amdgpu_crtc* %23, %struct.amdgpu_crtc** %6, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %25 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder* %24)
  store %struct.drm_connector* %25, %struct.drm_connector** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* @AMDGPU_FMT_DITHER_DISABLE, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %28 = icmp ne %struct.drm_connector* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %31 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %30)
  store %struct.amdgpu_connector* %31, %struct.amdgpu_connector** %11, align 8
  %32 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %33 = call i32 @amdgpu_connector_get_monitor_bpc(%struct.drm_connector* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %11, align 8
  %35 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %29, %1
  %38 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %39 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %146

45:                                               ; preds = %37
  %46 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %47 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %53 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %45
  br label %146

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %146

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  switch i32 %63, label %137 [
    i32 6, label %64
    i32 8, label %87
    i32 10, label %112
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @AMDGPU_FMT_DITHER_ENABLE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_FRAME_RANDOM_ENABLE_MASK, align 4
  %70 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_HIGHPASS_RANDOM_ENABLE_MASK, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_SPATIAL_DITHER_EN_MASK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_SPATIAL_DITHER_DEPTH__SHIFT, align 4
  %75 = shl i32 0, %74
  %76 = or i32 %73, %75
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %86

79:                                               ; preds = %64
  %80 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_TRUNCATE_EN_MASK, align 4
  %81 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_TRUNCATE_DEPTH__SHIFT, align 4
  %82 = shl i32 0, %81
  %83 = or i32 %80, %82
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %79, %68
  br label %138

87:                                               ; preds = %62
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @AMDGPU_FMT_DITHER_ENABLE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_FRAME_RANDOM_ENABLE_MASK, align 4
  %93 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_HIGHPASS_RANDOM_ENABLE_MASK, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_RGB_RANDOM_ENABLE_MASK, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_SPATIAL_DITHER_EN_MASK, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_SPATIAL_DITHER_DEPTH__SHIFT, align 4
  %100 = shl i32 1, %99
  %101 = or i32 %98, %100
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %111

104:                                              ; preds = %87
  %105 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_TRUNCATE_EN_MASK, align 4
  %106 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_TRUNCATE_DEPTH__SHIFT, align 4
  %107 = shl i32 1, %106
  %108 = or i32 %105, %107
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %104, %91
  br label %138

112:                                              ; preds = %62
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @AMDGPU_FMT_DITHER_ENABLE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_FRAME_RANDOM_ENABLE_MASK, align 4
  %118 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_HIGHPASS_RANDOM_ENABLE_MASK, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_RGB_RANDOM_ENABLE_MASK, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_SPATIAL_DITHER_EN_MASK, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_SPATIAL_DITHER_DEPTH__SHIFT, align 4
  %125 = shl i32 2, %124
  %126 = or i32 %123, %125
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %9, align 4
  br label %136

129:                                              ; preds = %112
  %130 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_TRUNCATE_EN_MASK, align 4
  %131 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_TRUNCATE_DEPTH__SHIFT, align 4
  %132 = shl i32 2, %131
  %133 = or i32 %130, %132
  %134 = load i32, i32* %9, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %129, %116
  br label %138

137:                                              ; preds = %62
  br label %138

138:                                              ; preds = %137, %136, %111, %86
  %139 = load i64, i64* @mmFMT_BIT_DEPTH_CONTROL, align 8
  %140 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %141 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %139, %142
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @WREG32(i64 %143, i32 %144)
  br label %146

146:                                              ; preds = %138, %61, %57, %44
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(i32) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_connector_get_monitor_bpc(%struct.drm_connector*) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
