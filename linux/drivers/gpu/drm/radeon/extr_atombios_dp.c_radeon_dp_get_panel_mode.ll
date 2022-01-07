; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_get_panel_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_get_panel_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_connector = type { i64 }
%struct.radeon_connector = type { %struct.TYPE_2__*, %struct.radeon_connector_atom_dig* }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_connector_atom_dig = type { i32 }

@DP_PANEL_MODE_EXTERNAL_DP_MODE = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@DP_EDP_CONFIGURATION_CAP = common dso_local global i32 0, align 4
@DP_PANEL_MODE_INTERNAL_DP2_MODE = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NUTMEG = common dso_local global i64 0, align 8
@ENCODER_OBJECT_ID_TRAVIS = common dso_local global i64 0, align 8
@DP_PANEL_MODE_INTERNAL_DP1_MODE = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_dp_get_panel_mode(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_connector*, align 8
  %9 = alloca %struct.radeon_connector_atom_dig*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %6, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %7, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %20 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %19)
  store %struct.radeon_connector* %20, %struct.radeon_connector** %8, align 8
  %21 = load i32, i32* @DP_PANEL_MODE_EXTERNAL_DP_MODE, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %23 = call i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector* %22)
  store i64 %23, i64* %11, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %25 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %3, align 4
  br label %97

29:                                               ; preds = %2
  %30 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %31 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %30, i32 0, i32 1
  %32 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %31, align 8
  %33 = icmp ne %struct.radeon_connector_atom_dig* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %3, align 4
  br label %97

36:                                               ; preds = %29
  %37 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %38 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %37, i32 0, i32 1
  %39 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %38, align 8
  store %struct.radeon_connector_atom_dig* %39, %struct.radeon_connector_atom_dig** %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %36
  %44 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %45 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* @DP_EDP_CONFIGURATION_CAP, align 4
  %49 = call i32 @drm_dp_dpcd_readb(i32* %47, i32 %48, i32* %12)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %71

51:                                               ; preds = %43
  %52 = load i32, i32* %12, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @DP_PANEL_MODE_INTERNAL_DP2_MODE, align 4
  store i32 %56, i32* %10, align 4
  br label %70

57:                                               ; preds = %51
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @ENCODER_OBJECT_ID_NUTMEG, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @ENCODER_OBJECT_ID_TRAVIS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %57
  %66 = load i32, i32* @DP_PANEL_MODE_INTERNAL_DP1_MODE, align 4
  store i32 %66, i32* %10, align 4
  br label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @DP_PANEL_MODE_EXTERNAL_DP_MODE, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %67, %65
  br label %70

70:                                               ; preds = %69, %55
  br label %71

71:                                               ; preds = %70, %43
  br label %95

72:                                               ; preds = %36
  %73 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %74 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %80 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* @DP_EDP_CONFIGURATION_CAP, align 4
  %84 = call i32 @drm_dp_dpcd_readb(i32* %82, i32 %83, i32* %12)
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = load i32, i32* %12, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @DP_PANEL_MODE_INTERNAL_DP2_MODE, align 4
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %90, %86
  br label %93

93:                                               ; preds = %92, %78
  br label %94

94:                                               ; preds = %93, %72
  br label %95

95:                                               ; preds = %94, %71
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %34, %27
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector*) #1

declare dso_local i32 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
