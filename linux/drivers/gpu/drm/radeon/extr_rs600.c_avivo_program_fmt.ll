; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_avivo_program_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_avivo_program_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { i32, i32 }
%struct.drm_connector = type { i32 }
%struct.radeon_connector = type { i32 }

@RADEON_FMT_DITHER_DISABLE = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@RADEON_FMT_DITHER_ENABLE = common dso_local global i32 0, align 4
@AVIVO_TMDS_BIT_DEPTH_CONTROL_SPATIAL_DITHER_EN = common dso_local global i32 0, align 4
@AVIVO_TMDS_BIT_DEPTH_CONTROL_TRUNCATE_EN = common dso_local global i32 0, align 4
@AVIVO_TMDS_BIT_DEPTH_CONTROL_SPATIAL_DITHER_DEPTH = common dso_local global i32 0, align 4
@AVIVO_TMDS_BIT_DEPTH_CONTROL_TRUNCATE_DEPTH = common dso_local global i32 0, align 4
@AVIVO_TMDSA_BIT_DEPTH_CONTROL = common dso_local global i32 0, align 4
@AVIVO_LVTMA_BIT_DEPTH_CONTROL = common dso_local global i32 0, align 4
@AVIVO_DVOA_BIT_DEPTH_CONTROL = common dso_local global i32 0, align 4
@AVIVO_DDIA_BIT_DEPTH_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avivo_program_fmt(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_encoder*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_connector*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %3, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %4, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %18 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %17)
  store %struct.radeon_encoder* %18, %struct.radeon_encoder** %5, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %20 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %19)
  store %struct.drm_connector* %20, %struct.drm_connector** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load i32, i32* @RADEON_FMT_DITHER_DISABLE, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %23 = icmp ne %struct.drm_connector* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %26 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %25)
  store %struct.radeon_connector* %26, %struct.radeon_connector** %10, align 8
  %27 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %28 = call i32 @radeon_get_monitor_bpc(%struct.drm_connector* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.radeon_connector*, %struct.radeon_connector** %10, align 8
  %30 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %24, %1
  %33 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %99

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %99

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %77 [
    i32 6, label %46
    i32 8, label %59
    i32 10, label %76
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @RADEON_FMT_DITHER_ENABLE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @AVIVO_TMDS_BIT_DEPTH_CONTROL_SPATIAL_DITHER_EN, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %58

54:                                               ; preds = %46
  %55 = load i32, i32* @AVIVO_TMDS_BIT_DEPTH_CONTROL_TRUNCATE_EN, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %50
  br label %78

59:                                               ; preds = %44
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @RADEON_FMT_DITHER_ENABLE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @AVIVO_TMDS_BIT_DEPTH_CONTROL_SPATIAL_DITHER_EN, align 4
  %65 = load i32, i32* @AVIVO_TMDS_BIT_DEPTH_CONTROL_SPATIAL_DITHER_DEPTH, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %75

69:                                               ; preds = %59
  %70 = load i32, i32* @AVIVO_TMDS_BIT_DEPTH_CONTROL_TRUNCATE_EN, align 4
  %71 = load i32, i32* @AVIVO_TMDS_BIT_DEPTH_CONTROL_TRUNCATE_DEPTH, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %69, %63
  br label %78

76:                                               ; preds = %44
  br label %77

77:                                               ; preds = %44, %76
  br label %78

78:                                               ; preds = %77, %75, %58
  %79 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %80 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %98 [
    i32 129, label %82
    i32 128, label %86
    i32 130, label %90
    i32 131, label %94
  ]

82:                                               ; preds = %78
  %83 = load i32, i32* @AVIVO_TMDSA_BIT_DEPTH_CONTROL, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @WREG32(i32 %83, i32 %84)
  br label %99

86:                                               ; preds = %78
  %87 = load i32, i32* @AVIVO_LVTMA_BIT_DEPTH_CONTROL, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @WREG32(i32 %87, i32 %88)
  br label %99

90:                                               ; preds = %78
  %91 = load i32, i32* @AVIVO_DVOA_BIT_DEPTH_CONTROL, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @WREG32(i32 %91, i32 %92)
  br label %99

94:                                               ; preds = %78
  %95 = load i32, i32* @AVIVO_DDIA_BIT_DEPTH_CONTROL, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @WREG32(i32 %95, i32 %96)
  br label %99

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %39, %43, %98, %94, %90, %86, %82
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @radeon_get_monitor_bpc(%struct.drm_connector*) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
