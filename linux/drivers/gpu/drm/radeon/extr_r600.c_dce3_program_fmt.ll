; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_dce3_program_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_dce3_program_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { i32, i64 }
%struct.radeon_crtc = type { i64 }
%struct.drm_connector = type { i32 }
%struct.radeon_connector = type { i32 }

@RADEON_FMT_DITHER_DISABLE = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1 = common dso_local global i64 0, align 8
@ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2 = common dso_local global i64 0, align 8
@RADEON_FMT_DITHER_ENABLE = common dso_local global i32 0, align 4
@FMT_SPATIAL_DITHER_EN = common dso_local global i32 0, align 4
@FMT_TRUNCATE_EN = common dso_local global i32 0, align 4
@FMT_SPATIAL_DITHER_DEPTH = common dso_local global i32 0, align 4
@FMT_TRUNCATE_DEPTH = common dso_local global i32 0, align 4
@FMT_BIT_DEPTH_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce3_program_fmt(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_encoder*, align 8
  %6 = alloca %struct.radeon_crtc*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_connector*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %3, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %4, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %19 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %18)
  store %struct.radeon_encoder* %19, %struct.radeon_encoder** %5, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %21 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.radeon_crtc* @to_radeon_crtc(i32 %22)
  store %struct.radeon_crtc* %23, %struct.radeon_crtc** %6, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %25 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %24)
  store %struct.drm_connector* %25, %struct.drm_connector** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* @RADEON_FMT_DITHER_DISABLE, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %28 = icmp ne %struct.drm_connector* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %31 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %30)
  store %struct.radeon_connector* %31, %struct.radeon_connector** %11, align 8
  %32 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %33 = call i32 @radeon_get_monitor_bpc(%struct.drm_connector* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.radeon_connector*, %struct.radeon_connector** %11, align 8
  %35 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %29, %1
  %38 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %39 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %104

45:                                               ; preds = %37
  %46 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %47 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %53 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %45
  br label %104

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %104

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  switch i32 %63, label %95 [
    i32 6, label %64
    i32 8, label %77
    i32 10, label %94
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @RADEON_FMT_DITHER_ENABLE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @FMT_SPATIAL_DITHER_EN, align 4
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %76

72:                                               ; preds = %64
  %73 = load i32, i32* @FMT_TRUNCATE_EN, align 4
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %72, %68
  br label %96

77:                                               ; preds = %62
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @RADEON_FMT_DITHER_ENABLE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32, i32* @FMT_SPATIAL_DITHER_EN, align 4
  %83 = load i32, i32* @FMT_SPATIAL_DITHER_DEPTH, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  br label %93

87:                                               ; preds = %77
  %88 = load i32, i32* @FMT_TRUNCATE_EN, align 4
  %89 = load i32, i32* @FMT_TRUNCATE_DEPTH, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %87, %81
  br label %96

94:                                               ; preds = %62
  br label %95

95:                                               ; preds = %62, %94
  br label %96

96:                                               ; preds = %95, %93, %76
  %97 = load i64, i64* @FMT_BIT_DEPTH_CONTROL, align 8
  %98 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %99 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @WREG32(i64 %101, i32 %102)
  br label %104

104:                                              ; preds = %96, %61, %57, %44
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i32) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @radeon_get_monitor_bpc(%struct.drm_connector*) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
