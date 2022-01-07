; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_get_encoder_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_get_encoder_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.amdgpu_encoder = type { i64 }
%struct.drm_connector = type { i32 }
%struct.amdgpu_connector = type { i32, %struct.amdgpu_connector_atom_dig*, i32 }
%struct.amdgpu_connector_atom_dig = type { i32 }

@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@ATOM_ENCODER_MODE_DP = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_DVO1 = common dso_local global i64 0, align 8
@ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1 = common dso_local global i64 0, align 8
@ATOM_ENCODER_MODE_DVO = common dso_local global i32 0, align 4
@amdgpu_audio = common dso_local global i32 0, align 4
@AMDGPU_AUDIO_ENABLE = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_HDMI = common dso_local global i32 0, align 4
@AMDGPU_AUDIO_AUTO = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_DVI = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_CRT = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_LVDS = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_TV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.amdgpu_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.amdgpu_connector*, align 8
  %7 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %9 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %8)
  store %struct.amdgpu_encoder* %9, %struct.amdgpu_encoder** %4, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = call i64 @amdgpu_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %10)
  %12 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ATOM_ENCODER_MODE_DP, align 4
  store i32 %15, i32* %2, align 4
  br label %173

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_DVO1, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %16
  %29 = load i32, i32* @ATOM_ENCODER_MODE_DVO, align 4
  store i32 %29, i32* %2, align 4
  br label %173

30:                                               ; preds = %22
  %31 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %32 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder* %31)
  store %struct.drm_connector* %32, %struct.drm_connector** %5, align 8
  %33 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %34 = icmp ne %struct.drm_connector* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %37 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder_init(%struct.drm_encoder* %36)
  store %struct.drm_connector* %37, %struct.drm_connector** %5, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %40 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %39)
  store %struct.amdgpu_connector* %40, %struct.amdgpu_connector** %6, align 8
  %41 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %42 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %92 [
    i32 135, label %44
    i32 132, label %44
    i32 136, label %91
    i32 133, label %91
    i32 131, label %120
    i32 134, label %122
    i32 128, label %167
    i32 137, label %169
    i32 129, label %169
    i32 138, label %171
    i32 130, label %171
    i32 139, label %171
  ]

44:                                               ; preds = %38, %38
  %45 = load i32, i32* @amdgpu_audio, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %44
  %48 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %49 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %54 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AMDGPU_AUDIO_ENABLE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %59, i32* %2, align 4
  br label %173

60:                                               ; preds = %52, %47
  %61 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %62 = call i32 @amdgpu_connector_edid(%struct.drm_connector* %61)
  %63 = call i32 @drm_detect_hdmi_monitor(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %67 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @AMDGPU_AUDIO_AUTO, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %72, i32* %2, align 4
  br label %173

73:                                               ; preds = %65, %60
  %74 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %75 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %79, i32* %2, align 4
  br label %173

80:                                               ; preds = %73
  %81 = load i32, i32* @ATOM_ENCODER_MODE_CRT, align 4
  store i32 %81, i32* %2, align 4
  br label %173

82:                                               ; preds = %44
  %83 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %84 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %88, i32* %2, align 4
  br label %173

89:                                               ; preds = %82
  %90 = load i32, i32* @ATOM_ENCODER_MODE_CRT, align 4
  store i32 %90, i32* %2, align 4
  br label %173

91:                                               ; preds = %38, %38
  br label %92

92:                                               ; preds = %38, %91
  %93 = load i32, i32* @amdgpu_audio, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %92
  %96 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %97 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @AMDGPU_AUDIO_ENABLE, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %102, i32* %2, align 4
  br label %173

103:                                              ; preds = %95
  %104 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %105 = call i32 @amdgpu_connector_edid(%struct.drm_connector* %104)
  %106 = call i32 @drm_detect_hdmi_monitor(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %110 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @AMDGPU_AUDIO_AUTO, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %115, i32* %2, align 4
  br label %173

116:                                              ; preds = %108, %103
  %117 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %117, i32* %2, align 4
  br label %173

118:                                              ; preds = %92
  %119 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %119, i32* %2, align 4
  br label %173

120:                                              ; preds = %38
  %121 = load i32, i32* @ATOM_ENCODER_MODE_LVDS, align 4
  store i32 %121, i32* %2, align 4
  br label %173

122:                                              ; preds = %38
  %123 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %124 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %123, i32 0, i32 1
  %125 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %124, align 8
  store %struct.amdgpu_connector_atom_dig* %125, %struct.amdgpu_connector_atom_dig** %7, align 8
  %126 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %7, align 8
  %127 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %122
  %132 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %7, align 8
  %133 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CONNECTOR_OBJECT_ID_eDP, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131, %122
  %138 = load i32, i32* @ATOM_ENCODER_MODE_DP, align 4
  store i32 %138, i32* %2, align 4
  br label %173

139:                                              ; preds = %131
  %140 = load i32, i32* @amdgpu_audio, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %165

142:                                              ; preds = %139
  %143 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %144 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @AMDGPU_AUDIO_ENABLE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %149, i32* %2, align 4
  br label %173

150:                                              ; preds = %142
  %151 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %152 = call i32 @amdgpu_connector_edid(%struct.drm_connector* %151)
  %153 = call i32 @drm_detect_hdmi_monitor(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %157 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @AMDGPU_AUDIO_AUTO, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %162, i32* %2, align 4
  br label %173

163:                                              ; preds = %155, %150
  %164 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %164, i32* %2, align 4
  br label %173

165:                                              ; preds = %139
  %166 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %166, i32* %2, align 4
  br label %173

167:                                              ; preds = %38
  %168 = load i32, i32* @ATOM_ENCODER_MODE_DP, align 4
  store i32 %168, i32* %2, align 4
  br label %173

169:                                              ; preds = %38, %38
  %170 = load i32, i32* @ATOM_ENCODER_MODE_CRT, align 4
  store i32 %170, i32* %2, align 4
  br label %173

171:                                              ; preds = %38, %38, %38
  %172 = load i32, i32* @ATOM_ENCODER_MODE_TV, align 4
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %171, %169, %167, %165, %163, %161, %148, %137, %120, %118, %116, %114, %101, %89, %87, %80, %78, %71, %58, %28, %14
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @amdgpu_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder_init(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_detect_hdmi_monitor(i32) #1

declare dso_local i32 @amdgpu_connector_edid(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
