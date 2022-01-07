; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_enable_transcoder_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_enable_transcoder_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.intel_encoder = type { i32 }
%struct.drm_i915_private = type { i32 }

@TRANS_DDI_FUNC_ENABLE = common dso_local global i32 0, align 4
@TRANS_DDI_BPC_6 = common dso_local global i32 0, align 4
@TRANS_DDI_BPC_8 = common dso_local global i32 0, align 4
@TRANS_DDI_BPC_10 = common dso_local global i32 0, align 4
@TRANS_DDI_BPC_12 = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@TRANS_DDI_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@TRANS_DDI_PHSYNC = common dso_local global i32 0, align 4
@TRANSCODER_EDP = common dso_local global i32 0, align 4
@TRANS_DDI_EDP_INPUT_A_ONOFF = common dso_local global i32 0, align 4
@TRANS_DDI_EDP_INPUT_A_ON = common dso_local global i32 0, align 4
@TRANS_DDI_EDP_INPUT_B_ONOFF = common dso_local global i32 0, align 4
@TRANS_DDI_EDP_INPUT_C_ONOFF = common dso_local global i32 0, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@TRANS_DDI_MODE_SELECT_HDMI = common dso_local global i32 0, align 4
@TRANS_DDI_MODE_SELECT_DVI = common dso_local global i32 0, align 4
@TRANS_DDI_HDMI_SCRAMBLING = common dso_local global i32 0, align 4
@TRANS_DDI_HIGH_TMDS_CHAR_RATE = common dso_local global i32 0, align 4
@INTEL_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@TRANS_DDI_MODE_SELECT_FDI = common dso_local global i32 0, align 4
@INTEL_OUTPUT_DP_MST = common dso_local global i32 0, align 4
@TRANS_DDI_MODE_SELECT_DP_MST = common dso_local global i32 0, align 4
@TRANS_DDI_MODE_SELECT_DP_SST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ddi_enable_transcoder_func(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %10 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %11 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %10, i32 0, i32 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.intel_crtc* @to_intel_crtc(i32 %13)
  store %struct.intel_crtc* %14, %struct.intel_crtc** %3, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %16 = call %struct.intel_encoder* @intel_ddi_get_crtc_encoder(%struct.intel_crtc* %15)
  store %struct.intel_encoder* %16, %struct.intel_encoder** %4, align 8
  %17 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.drm_i915_private* @to_i915(i32 %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %5, align 8
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %29 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @TRANS_DDI_FUNC_ENABLE, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %33 = call i32 @INTEL_GEN(%struct.drm_i915_private* %32)
  %34 = icmp sge i32 %33, 12
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @TGL_TRANS_DDI_SELECT_PORT(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %45

40:                                               ; preds = %1
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @TRANS_DDI_SELECT_PORT(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %65 [
    i32 18, label %49
    i32 24, label %53
    i32 30, label %57
    i32 36, label %61
  ]

49:                                               ; preds = %45
  %50 = load i32, i32* @TRANS_DDI_BPC_6, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %67

53:                                               ; preds = %45
  %54 = load i32, i32* @TRANS_DDI_BPC_8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %67

57:                                               ; preds = %45
  %58 = load i32, i32* @TRANS_DDI_BPC_10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %67

61:                                               ; preds = %45
  %62 = load i32, i32* @TRANS_DDI_BPC_12, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %67

65:                                               ; preds = %45
  %66 = call i32 (...) @BUG()
  br label %67

67:                                               ; preds = %65, %61, %57, %53, %49
  %68 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %69 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load i32, i32* @TRANS_DDI_PVSYNC, align 4
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %76, %67
  %81 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %82 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load i32, i32* @TRANS_DDI_PHSYNC, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %89, %80
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @TRANSCODER_EDP, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %125

97:                                               ; preds = %93
  %98 = load i32, i32* %6, align 4
  switch i32 %98, label %122 [
    i32 130, label %99
    i32 129, label %114
    i32 128, label %118
  ]

99:                                               ; preds = %97
  %100 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %101 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i32, i32* @TRANS_DDI_EDP_INPUT_A_ONOFF, align 4
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %113

109:                                              ; preds = %99
  %110 = load i32, i32* @TRANS_DDI_EDP_INPUT_A_ON, align 4
  %111 = load i32, i32* %9, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %109, %105
  br label %124

114:                                              ; preds = %97
  %115 = load i32, i32* @TRANS_DDI_EDP_INPUT_B_ONOFF, align 4
  %116 = load i32, i32* %9, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %9, align 4
  br label %124

118:                                              ; preds = %97
  %119 = load i32, i32* @TRANS_DDI_EDP_INPUT_C_ONOFF, align 4
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  br label %124

122:                                              ; preds = %97
  %123 = call i32 (...) @BUG()
  br label %124

124:                                              ; preds = %122, %118, %114, %113
  br label %125

125:                                              ; preds = %124, %93
  %126 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %127 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %128 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %162

130:                                              ; preds = %125
  %131 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %132 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i32, i32* @TRANS_DDI_MODE_SELECT_HDMI, align 4
  %137 = load i32, i32* %9, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %9, align 4
  br label %143

139:                                              ; preds = %130
  %140 = load i32, i32* @TRANS_DDI_MODE_SELECT_DVI, align 4
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %139, %135
  %144 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %145 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* @TRANS_DDI_HDMI_SCRAMBLING, align 4
  %150 = load i32, i32* %9, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %148, %143
  %153 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %154 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load i32, i32* @TRANS_DDI_HIGH_TMDS_CHAR_RATE, align 4
  %159 = load i32, i32* %9, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %157, %152
  br label %205

162:                                              ; preds = %125
  %163 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %164 = load i32, i32* @INTEL_OUTPUT_ANALOG, align 4
  %165 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %162
  %168 = load i32, i32* @TRANS_DDI_MODE_SELECT_FDI, align 4
  %169 = load i32, i32* %9, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %9, align 4
  %171 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %172 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = sub nsw i32 %173, 1
  %175 = shl i32 %174, 1
  %176 = load i32, i32* %9, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %9, align 4
  br label %204

178:                                              ; preds = %162
  %179 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %180 = load i32, i32* @INTEL_OUTPUT_DP_MST, align 4
  %181 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %178
  %184 = load i32, i32* @TRANS_DDI_MODE_SELECT_DP_MST, align 4
  %185 = load i32, i32* %9, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %9, align 4
  %187 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %188 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @DDI_PORT_WIDTH(i32 %189)
  %191 = load i32, i32* %9, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %9, align 4
  br label %203

193:                                              ; preds = %178
  %194 = load i32, i32* @TRANS_DDI_MODE_SELECT_DP_SST, align 4
  %195 = load i32, i32* %9, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %9, align 4
  %197 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %198 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @DDI_PORT_WIDTH(i32 %199)
  %201 = load i32, i32* %9, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %9, align 4
  br label %203

203:                                              ; preds = %193, %183
  br label %204

204:                                              ; preds = %203, %167
  br label %205

205:                                              ; preds = %204, %161
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @TRANS_DDI_FUNC_CTL(i32 %206)
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @I915_WRITE(i32 %207, i32 %208)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_encoder* @intel_ddi_get_crtc_encoder(%struct.intel_crtc*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @TGL_TRANS_DDI_SELECT_PORT(i32) #1

declare dso_local i32 @TRANS_DDI_SELECT_PORT(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @DDI_PORT_WIDTH(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @TRANS_DDI_FUNC_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
