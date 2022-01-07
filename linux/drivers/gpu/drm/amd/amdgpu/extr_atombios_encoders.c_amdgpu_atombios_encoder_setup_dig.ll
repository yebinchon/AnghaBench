; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_setup_dig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_setup_dig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.amdgpu_encoder = type { i32, %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { i32, i32 }
%struct.drm_connector = type { i64 }
%struct.amdgpu_connector = type { %struct.amdgpu_connector_atom_dig* }
%struct.amdgpu_connector_atom_dig = type { i32 }

@ATOM_ENABLE = common dso_local global i32 0, align 4
@DP_PANEL_MODE_EXTERNAL_DP_MODE = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_SETUP = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_SETUP_PANEL_MODE = common dso_local global i32 0, align 4
@EXTERNAL_ENCODER_ACTION_V3_ENCODER_SETUP = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@ATOM_TRANSMITTER_ACTION_POWER_ON = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_ENABLE = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_DP_VIDEO_ON = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_DP_VIDEO_OFF = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_LCD_BLOFF = common dso_local global i32 0, align 4
@DP_SET_POWER_D3 = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_DISABLE = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_POWER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @amdgpu_atombios_encoder_setup_dig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_atombios_encoder_setup_dig(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_encoder*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca %struct.amdgpu_connector*, align 8
  %10 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %11)
  store %struct.amdgpu_encoder* %12, %struct.amdgpu_encoder** %5, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %14 = call %struct.drm_encoder* @amdgpu_get_external_encoder(%struct.drm_encoder* %13)
  store %struct.drm_encoder* %14, %struct.drm_encoder** %6, align 8
  %15 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %15, i32 0, i32 1
  %17 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %16, align 8
  store %struct.amdgpu_encoder_atom_dig* %17, %struct.amdgpu_encoder_atom_dig** %7, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder* %18)
  store %struct.drm_connector* %19, %struct.drm_connector** %8, align 8
  store %struct.amdgpu_connector* null, %struct.amdgpu_connector** %9, align 8
  store %struct.amdgpu_connector_atom_dig* null, %struct.amdgpu_connector_atom_dig** %10, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %21 = icmp ne %struct.drm_connector* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %24 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %23)
  store %struct.amdgpu_connector* %24, %struct.amdgpu_connector** %9, align 8
  %25 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %26 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %25, i32 0, i32 0
  %27 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %26, align 8
  store %struct.amdgpu_connector_atom_dig* %27, %struct.amdgpu_connector_atom_dig** %10, align 8
  br label %28

28:                                               ; preds = %22, %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ATOM_ENABLE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %123

32:                                               ; preds = %28
  %33 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %34 = icmp ne %struct.drm_connector* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @DP_PANEL_MODE_EXTERNAL_DP_MODE, align 4
  %37 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %7, align 8
  %38 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %45

39:                                               ; preds = %32
  %40 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %41 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %42 = call i32 @amdgpu_atombios_dp_get_panel_mode(%struct.drm_encoder* %40, %struct.drm_connector* %41)
  %43 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %7, align 8
  %44 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %35
  %46 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %47 = load i32, i32* @ATOM_ENCODER_CMD_SETUP, align 4
  %48 = call i32 @amdgpu_atombios_encoder_setup_dig_encoder(%struct.drm_encoder* %46, i32 %47, i32 0)
  %49 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %50 = load i32, i32* @ATOM_ENCODER_CMD_SETUP_PANEL_MODE, align 4
  %51 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %7, align 8
  %52 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @amdgpu_atombios_encoder_setup_dig_encoder(%struct.drm_encoder* %49, i32 %50, i32 %53)
  %55 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %56 = icmp ne %struct.drm_encoder* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %45
  %58 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %59 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %60 = load i32, i32* @EXTERNAL_ENCODER_ACTION_V3_ENCODER_SETUP, align 4
  %61 = call i32 @amdgpu_atombios_encoder_setup_external_encoder(%struct.drm_encoder* %58, %struct.drm_encoder* %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %45
  %63 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %64 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %63)
  %65 = call i64 @ENCODER_MODE_IS_DP(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %69 = icmp ne %struct.drm_connector* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %72 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %78 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_ON, align 4
  %79 = call i32 @amdgpu_atombios_encoder_set_edp_panel_power(%struct.drm_connector* %77, i32 %78)
  %80 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  %81 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %70
  br label %83

83:                                               ; preds = %82, %67, %62
  %84 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %85 = load i32, i32* @ATOM_TRANSMITTER_ACTION_ENABLE, align 4
  %86 = call i32 @amdgpu_atombios_encoder_setup_dig_transmitter(%struct.drm_encoder* %84, i32 %85, i32 0, i32 0)
  %87 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %88 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %87)
  %89 = call i64 @ENCODER_MODE_IS_DP(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %83
  %92 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %93 = icmp ne %struct.drm_connector* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %96 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %97 = call i32 @amdgpu_atombios_dp_link_train(%struct.drm_encoder* %95, %struct.drm_connector* %96)
  %98 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %99 = load i32, i32* @ATOM_ENCODER_CMD_DP_VIDEO_ON, align 4
  %100 = call i32 @amdgpu_atombios_encoder_setup_dig_encoder(%struct.drm_encoder* %98, i32 %99, i32 0)
  br label %101

101:                                              ; preds = %94, %91, %83
  %102 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %103 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %110 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %7, align 8
  %111 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @amdgpu_atombios_encoder_set_backlight_level(%struct.amdgpu_encoder* %109, i32 %112)
  br label %114

114:                                              ; preds = %108, %101
  %115 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %116 = icmp ne %struct.drm_encoder* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %119 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %120 = load i32, i32* @ATOM_ENABLE, align 4
  %121 = call i32 @amdgpu_atombios_encoder_setup_external_encoder(%struct.drm_encoder* %118, %struct.drm_encoder* %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %114
  br label %191

123:                                              ; preds = %28
  %124 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %125 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %124)
  %126 = call i64 @ENCODER_MODE_IS_DP(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %130 = icmp ne %struct.drm_connector* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %133 = load i32, i32* @ATOM_ENCODER_CMD_DP_VIDEO_OFF, align 4
  %134 = call i32 @amdgpu_atombios_encoder_setup_dig_encoder(%struct.drm_encoder* %132, i32 %133, i32 0)
  br label %135

135:                                              ; preds = %131, %128, %123
  %136 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %137 = icmp ne %struct.drm_encoder* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %140 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %141 = load i32, i32* @ATOM_DISABLE, align 4
  %142 = call i32 @amdgpu_atombios_encoder_setup_external_encoder(%struct.drm_encoder* %139, %struct.drm_encoder* %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %135
  %144 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %145 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %152 = load i32, i32* @ATOM_TRANSMITTER_ACTION_LCD_BLOFF, align 4
  %153 = call i32 @amdgpu_atombios_encoder_setup_dig_transmitter(%struct.drm_encoder* %151, i32 %152, i32 0, i32 0)
  br label %154

154:                                              ; preds = %150, %143
  %155 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %156 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %155)
  %157 = call i64 @ENCODER_MODE_IS_DP(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %161 = icmp ne %struct.drm_connector* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %164 = load i32, i32* @DP_SET_POWER_D3, align 4
  %165 = call i32 @amdgpu_atombios_dp_set_rx_power_state(%struct.drm_connector* %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %159, %154
  %167 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %168 = load i32, i32* @ATOM_TRANSMITTER_ACTION_DISABLE, align 4
  %169 = call i32 @amdgpu_atombios_encoder_setup_dig_transmitter(%struct.drm_encoder* %167, i32 %168, i32 0, i32 0)
  %170 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %171 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %170)
  %172 = call i64 @ENCODER_MODE_IS_DP(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %190

174:                                              ; preds = %166
  %175 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %176 = icmp ne %struct.drm_connector* %175, null
  br i1 %176, label %177, label %190

177:                                              ; preds = %174
  %178 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %179 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %177
  %184 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %185 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_OFF, align 4
  %186 = call i32 @amdgpu_atombios_encoder_set_edp_panel_power(%struct.drm_connector* %184, i32 %185)
  %187 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  %188 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %187, i32 0, i32 0
  store i32 0, i32* %188, align 4
  br label %189

189:                                              ; preds = %183, %177
  br label %190

190:                                              ; preds = %189, %174, %166
  br label %191

191:                                              ; preds = %190, %122
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_encoder* @amdgpu_get_external_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_atombios_dp_get_panel_mode(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local i32 @amdgpu_atombios_encoder_setup_dig_encoder(%struct.drm_encoder*, i32, i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_setup_external_encoder(%struct.drm_encoder*, %struct.drm_encoder*, i32) #1

declare dso_local i64 @ENCODER_MODE_IS_DP(i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @amdgpu_atombios_encoder_set_edp_panel_power(%struct.drm_connector*, i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_setup_dig_transmitter(%struct.drm_encoder*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_atombios_dp_link_train(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local i32 @amdgpu_atombios_encoder_set_backlight_level(%struct.amdgpu_encoder*, i32) #1

declare dso_local i32 @amdgpu_atombios_dp_set_rx_power_state(%struct.drm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
