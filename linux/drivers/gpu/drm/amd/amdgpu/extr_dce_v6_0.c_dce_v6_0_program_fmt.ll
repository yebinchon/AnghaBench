; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_program_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_program_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.amdgpu_crtc = type { i64 }
%struct.amdgpu_connector = type { i32 }

@AMDGPU_FMT_DITHER_DISABLE = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@AMDGPU_FMT_DITHER_ENABLE = common dso_local global i32 0, align 4
@FMT_BIT_DEPTH_CONTROL__FMT_FRAME_RANDOM_ENABLE_MASK = common dso_local global i32 0, align 4
@FMT_BIT_DEPTH_CONTROL__FMT_HIGHPASS_RANDOM_ENABLE_MASK = common dso_local global i32 0, align 4
@FMT_BIT_DEPTH_CONTROL__FMT_SPATIAL_DITHER_EN_MASK = common dso_local global i32 0, align 4
@FMT_BIT_DEPTH_CONTROL__FMT_TRUNCATE_EN_MASK = common dso_local global i32 0, align 4
@FMT_BIT_DEPTH_CONTROL__FMT_RGB_RANDOM_ENABLE_MASK = common dso_local global i32 0, align 4
@FMT_BIT_DEPTH_CONTROL__FMT_SPATIAL_DITHER_DEPTH_MASK = common dso_local global i32 0, align 4
@FMT_BIT_DEPTH_CONTROL__FMT_TRUNCATE_DEPTH_MASK = common dso_local global i32 0, align 4
@mmFMT_BIT_DEPTH_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @dce_v6_0_program_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v6_0_program_fmt(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_encoder*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.amdgpu_crtc*, align 8
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
  %21 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder* %20)
  store %struct.drm_connector* %21, %struct.drm_connector** %6, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %23 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(i32 %24)
  store %struct.amdgpu_crtc* %25, %struct.amdgpu_crtc** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* @AMDGPU_FMT_DITHER_DISABLE, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %28 = icmp ne %struct.drm_connector* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %31 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %30)
  store %struct.amdgpu_connector* %31, %struct.amdgpu_connector** %11, align 8
  %32 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
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
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %101

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %101

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %92 [
    i32 6, label %51
    i32 8, label %68
    i32 10, label %91
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @AMDGPU_FMT_DITHER_ENABLE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_FRAME_RANDOM_ENABLE_MASK, align 4
  %57 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_HIGHPASS_RANDOM_ENABLE_MASK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_SPATIAL_DITHER_EN_MASK, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %67

63:                                               ; preds = %51
  %64 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_TRUNCATE_EN_MASK, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %55
  br label %93

68:                                               ; preds = %49
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @AMDGPU_FMT_DITHER_ENABLE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_FRAME_RANDOM_ENABLE_MASK, align 4
  %74 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_HIGHPASS_RANDOM_ENABLE_MASK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_RGB_RANDOM_ENABLE_MASK, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_SPATIAL_DITHER_EN_MASK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_SPATIAL_DITHER_DEPTH_MASK, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %90

84:                                               ; preds = %68
  %85 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_TRUNCATE_EN_MASK, align 4
  %86 = load i32, i32* @FMT_BIT_DEPTH_CONTROL__FMT_TRUNCATE_DEPTH_MASK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %84, %72
  br label %93

91:                                               ; preds = %49
  br label %92

92:                                               ; preds = %49, %91
  br label %93

93:                                               ; preds = %92, %90, %67
  %94 = load i64, i64* @mmFMT_BIT_DEPTH_CONTROL, align 8
  %95 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %96 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @WREG32(i64 %98, i32 %99)
  br label %101

101:                                              ; preds = %93, %48, %44
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(i32) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_connector_get_monitor_bpc(%struct.drm_connector*) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
