; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_dp_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_dp_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.amdgpu_connector = type { %struct.amdgpu_connector_atom_dig* }
%struct.amdgpu_connector_atom_dig = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i32 }

@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i64 0, align 8
@ATOM_TRANSMITTER_ACTION_POWER_ON = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_POWER_OFF = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @amdgpu_connector_dp_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_connector_dp_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.amdgpu_connector*, align 8
  %5 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %9)
  store %struct.amdgpu_connector* %10, %struct.amdgpu_connector** %4, align 8
  %11 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %12, align 8
  store %struct.amdgpu_connector_atom_dig* %13, %struct.amdgpu_connector_atom_dig** %5, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %15 = call %struct.drm_encoder* @amdgpu_connector_best_single_encoder(%struct.drm_connector* %14)
  store %struct.drm_encoder* %15, %struct.drm_encoder** %6, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DRM_MODE_CONNECTOR_LVDS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %117

27:                                               ; preds = %21, %1
  %28 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %29 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %27
  %34 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %5, align 8
  %35 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %40 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_ON, align 4
  %41 = call i32 @amdgpu_atombios_encoder_set_edp_panel_power(%struct.drm_connector* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %44 = call i32 @amdgpu_connector_get_edid(%struct.drm_connector* %43)
  %45 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %46 = call i32 @amdgpu_connector_ddc_get_modes(%struct.drm_connector* %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %5, align 8
  %48 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %42
  %52 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %53 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_OFF, align 4
  %54 = call i32 @amdgpu_atombios_encoder_set_edp_panel_power(%struct.drm_connector* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %42
  br label %73

56:                                               ; preds = %27
  %57 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %58 = call i64 @amdgpu_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector* %57)
  %59 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %63 = icmp ne %struct.drm_encoder* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %66 = call i32 @amdgpu_atombios_encoder_setup_ext_encoder_ddc(%struct.drm_encoder* %65)
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %56
  %69 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %70 = call i32 @amdgpu_connector_get_edid(%struct.drm_connector* %69)
  %71 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %72 = call i32 @amdgpu_connector_ddc_get_modes(%struct.drm_connector* %71)
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %68, %55
  %74 = load i32, i32* %7, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %78 = icmp ne %struct.drm_encoder* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %81 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %82 = call i32 @amdgpu_connector_fixup_lcd_native_mode(%struct.drm_encoder* %80, %struct.drm_connector* %81)
  %83 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %84 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %85 = call i32 @amdgpu_connector_add_common_modes(%struct.drm_encoder* %83, %struct.drm_connector* %84)
  br label %86

86:                                               ; preds = %79, %76
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %138

88:                                               ; preds = %73
  %89 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %90 = icmp ne %struct.drm_encoder* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %138

92:                                               ; preds = %88
  %93 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %94 = call %struct.drm_display_mode* @amdgpu_connector_lcd_native_mode(%struct.drm_encoder* %93)
  store %struct.drm_display_mode* %94, %struct.drm_display_mode** %8, align 8
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %96 = icmp ne %struct.drm_display_mode* %95, null
  br i1 %96, label %97, label %116

97:                                               ; preds = %92
  store i32 1, i32* %7, align 4
  %98 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %99 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %100 = call i32 @drm_mode_probed_add(%struct.drm_connector* %98, %struct.drm_display_mode* %99)
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %102 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %105 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %111 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %114 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %115 = call i32 @amdgpu_connector_add_common_modes(%struct.drm_encoder* %113, %struct.drm_connector* %114)
  br label %116

116:                                              ; preds = %97, %92
  br label %136

117:                                              ; preds = %21
  %118 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %119 = call i64 @amdgpu_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector* %118)
  %120 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %124 = icmp ne %struct.drm_encoder* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %127 = call i32 @amdgpu_atombios_encoder_setup_ext_encoder_ddc(%struct.drm_encoder* %126)
  br label %128

128:                                              ; preds = %125, %122
  br label %129

129:                                              ; preds = %128, %117
  %130 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %131 = call i32 @amdgpu_connector_get_edid(%struct.drm_connector* %130)
  %132 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %133 = call i32 @amdgpu_connector_ddc_get_modes(%struct.drm_connector* %132)
  store i32 %133, i32* %7, align 4
  %134 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %135 = call i32 @amdgpu_get_native_mode(%struct.drm_connector* %134)
  br label %136

136:                                              ; preds = %129, %116
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %136, %91, %86
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @amdgpu_connector_best_single_encoder(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_atombios_encoder_set_edp_panel_power(%struct.drm_connector*, i32) #1

declare dso_local i32 @amdgpu_connector_get_edid(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_connector_ddc_get_modes(%struct.drm_connector*) #1

declare dso_local i64 @amdgpu_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_atombios_encoder_setup_ext_encoder_ddc(%struct.drm_encoder*) #1

declare dso_local i32 @amdgpu_connector_fixup_lcd_native_mode(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local i32 @amdgpu_connector_add_common_modes(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local %struct.drm_display_mode* @amdgpu_connector_lcd_native_mode(%struct.drm_encoder*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @amdgpu_get_native_mode(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
