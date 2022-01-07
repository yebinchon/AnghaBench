; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_program_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_program_fmt.c"
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
@FMT_BIT_DEPTH_CONTROL = common dso_local global i32 0, align 4
@FMT_FRAME_RANDOM_ENABLE = common dso_local global i32 0, align 4
@FMT_HIGHPASS_RANDOM_ENABLE = common dso_local global i32 0, align 4
@FMT_SPATIAL_DITHER_EN = common dso_local global i32 0, align 4
@FMT_SPATIAL_DITHER_DEPTH = common dso_local global i32 0, align 4
@FMT_TRUNCATE_EN = common dso_local global i32 0, align 4
@FMT_TRUNCATE_DEPTH = common dso_local global i32 0, align 4
@FMT_RGB_RANDOM_ENABLE = common dso_local global i32 0, align 4
@mmFMT_BIT_DEPTH_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @dce_v10_0_program_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v10_0_program_fmt(%struct.drm_encoder* %0) #0 {
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
  br label %174

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
  br label %174

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %174

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  switch i32 %63, label %165 [
    i32 6, label %64
    i32 8, label %95
    i32 10, label %130
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @AMDGPU_FMT_DITHER_ENABLE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %71 = load i32, i32* @FMT_FRAME_RANDOM_ENABLE, align 4
  %72 = call i32 @REG_SET_FIELD(i32 %69, i32 %70, i32 %71, i32 1)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %75 = load i32, i32* @FMT_HIGHPASS_RANDOM_ENABLE, align 4
  %76 = call i32 @REG_SET_FIELD(i32 %73, i32 %74, i32 %75, i32 1)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %79 = load i32, i32* @FMT_SPATIAL_DITHER_EN, align 4
  %80 = call i32 @REG_SET_FIELD(i32 %77, i32 %78, i32 %79, i32 1)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %83 = load i32, i32* @FMT_SPATIAL_DITHER_DEPTH, align 4
  %84 = call i32 @REG_SET_FIELD(i32 %81, i32 %82, i32 %83, i32 0)
  store i32 %84, i32* %9, align 4
  br label %94

85:                                               ; preds = %64
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %88 = load i32, i32* @FMT_TRUNCATE_EN, align 4
  %89 = call i32 @REG_SET_FIELD(i32 %86, i32 %87, i32 %88, i32 1)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %92 = load i32, i32* @FMT_TRUNCATE_DEPTH, align 4
  %93 = call i32 @REG_SET_FIELD(i32 %90, i32 %91, i32 %92, i32 0)
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %85, %68
  br label %166

95:                                               ; preds = %62
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @AMDGPU_FMT_DITHER_ENABLE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %95
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %102 = load i32, i32* @FMT_FRAME_RANDOM_ENABLE, align 4
  %103 = call i32 @REG_SET_FIELD(i32 %100, i32 %101, i32 %102, i32 1)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %106 = load i32, i32* @FMT_HIGHPASS_RANDOM_ENABLE, align 4
  %107 = call i32 @REG_SET_FIELD(i32 %104, i32 %105, i32 %106, i32 1)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %110 = load i32, i32* @FMT_RGB_RANDOM_ENABLE, align 4
  %111 = call i32 @REG_SET_FIELD(i32 %108, i32 %109, i32 %110, i32 1)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %114 = load i32, i32* @FMT_SPATIAL_DITHER_EN, align 4
  %115 = call i32 @REG_SET_FIELD(i32 %112, i32 %113, i32 %114, i32 1)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %118 = load i32, i32* @FMT_SPATIAL_DITHER_DEPTH, align 4
  %119 = call i32 @REG_SET_FIELD(i32 %116, i32 %117, i32 %118, i32 1)
  store i32 %119, i32* %9, align 4
  br label %129

120:                                              ; preds = %95
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %123 = load i32, i32* @FMT_TRUNCATE_EN, align 4
  %124 = call i32 @REG_SET_FIELD(i32 %121, i32 %122, i32 %123, i32 1)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %127 = load i32, i32* @FMT_TRUNCATE_DEPTH, align 4
  %128 = call i32 @REG_SET_FIELD(i32 %125, i32 %126, i32 %127, i32 1)
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %120, %99
  br label %166

130:                                              ; preds = %62
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @AMDGPU_FMT_DITHER_ENABLE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %155

134:                                              ; preds = %130
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %137 = load i32, i32* @FMT_FRAME_RANDOM_ENABLE, align 4
  %138 = call i32 @REG_SET_FIELD(i32 %135, i32 %136, i32 %137, i32 1)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %141 = load i32, i32* @FMT_HIGHPASS_RANDOM_ENABLE, align 4
  %142 = call i32 @REG_SET_FIELD(i32 %139, i32 %140, i32 %141, i32 1)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %145 = load i32, i32* @FMT_RGB_RANDOM_ENABLE, align 4
  %146 = call i32 @REG_SET_FIELD(i32 %143, i32 %144, i32 %145, i32 1)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %149 = load i32, i32* @FMT_SPATIAL_DITHER_EN, align 4
  %150 = call i32 @REG_SET_FIELD(i32 %147, i32 %148, i32 %149, i32 1)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %153 = load i32, i32* @FMT_SPATIAL_DITHER_DEPTH, align 4
  %154 = call i32 @REG_SET_FIELD(i32 %151, i32 %152, i32 %153, i32 2)
  store i32 %154, i32* %9, align 4
  br label %164

155:                                              ; preds = %130
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %158 = load i32, i32* @FMT_TRUNCATE_EN, align 4
  %159 = call i32 @REG_SET_FIELD(i32 %156, i32 %157, i32 %158, i32 1)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %162 = load i32, i32* @FMT_TRUNCATE_DEPTH, align 4
  %163 = call i32 @REG_SET_FIELD(i32 %160, i32 %161, i32 %162, i32 2)
  store i32 %163, i32* %9, align 4
  br label %164

164:                                              ; preds = %155, %134
  br label %166

165:                                              ; preds = %62
  br label %166

166:                                              ; preds = %165, %164, %129, %94
  %167 = load i64, i64* @mmFMT_BIT_DEPTH_CONTROL, align 8
  %168 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %169 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %167, %170
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @WREG32(i64 %171, i32 %172)
  br label %174

174:                                              ; preds = %166, %61, %57, %44
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(i32) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_connector_get_monitor_bpc(%struct.drm_connector*) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
