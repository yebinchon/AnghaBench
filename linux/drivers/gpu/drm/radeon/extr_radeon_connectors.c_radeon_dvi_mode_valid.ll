; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dvi_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dvi_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_connector = type { i64, i64 }

@CHIP_RV100 = common dso_local global i64 0, align 8
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_HDMI_TYPE_B = common dso_local global i64 0, align 8
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @radeon_dvi_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dvi_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %7, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %16 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %15)
  store %struct.radeon_connector* %16, %struct.radeon_connector** %8, align 8
  %17 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %18 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHIP_RV100, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 135000
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %33, i32* %3, align 4
  br label %98

34:                                               ; preds = %27, %21, %2
  %35 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %36 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %84

39:                                               ; preds = %34
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 165000
  br i1 %43, label %44, label %84

44:                                               ; preds = %39
  %45 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %46 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %52 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %58 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CONNECTOR_OBJECT_ID_HDMI_TYPE_B, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %50, %44
  %63 = load i32, i32* @MODE_OK, align 4
  store i32 %63, i32* %3, align 4
  br label %98

64:                                               ; preds = %56
  %65 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %66 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %70 = call i32 @radeon_connector_edid(%struct.drm_connector* %69)
  %71 = call i64 @drm_detect_hdmi_monitor(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 340000
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %79, i32* %3, align 4
  br label %98

80:                                               ; preds = %73
  %81 = load i32, i32* @MODE_OK, align 4
  store i32 %81, i32* %3, align 4
  br label %98

82:                                               ; preds = %68, %64
  %83 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %83, i32* %3, align 4
  br label %98

84:                                               ; preds = %39, %34
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %86 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %87, 10
  %89 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %88, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %95, i32* %3, align 4
  br label %98

96:                                               ; preds = %84
  %97 = load i32, i32* @MODE_OK, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %94, %82, %80, %78, %62, %32
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i64 @drm_detect_hdmi_monitor(i32) #1

declare dso_local i32 @radeon_connector_edid(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
