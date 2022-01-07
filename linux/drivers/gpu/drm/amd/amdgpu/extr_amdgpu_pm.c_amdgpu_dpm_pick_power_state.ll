; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_dpm_pick_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_dpm_pick_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ps = type { i32, i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.amdgpu_ps*, %struct.amdgpu_ps*, %struct.amdgpu_ps* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@ATOM_PPLIB_CLASSIFICATION_UI_MASK = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_BATTERY = common dso_local global i32 0, align 4
@ATOM_PPLIB_SINGLE_DISPLAY_ONLY = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_BALANCED = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_SDSTATE = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_HDSTATE = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_HD2STATE = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION2_MVC = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_THERMAL = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_ACPI = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION2_ULV = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amdgpu_ps* (%struct.amdgpu_device*, i32)* @amdgpu_dpm_pick_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amdgpu_ps* @amdgpu_dpm_pick_power_state(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_ps*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_ps*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 2
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %30 = call i64 @amdgpu_dpm_vblank_too_short(%struct.amdgpu_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %28
  br label %34

34:                                               ; preds = %33, %20, %2
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 128
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 138, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 140
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 128, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %38
  br label %43

43:                                               ; preds = %254, %253, %252, %251, %237, %42
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %232, %43
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %235

52:                                               ; preds = %44
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  %57 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %57, i64 %59
  store %struct.amdgpu_ps* %60, %struct.amdgpu_ps** %7, align 8
  %61 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %62 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_MASK, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %5, align 4
  switch i32 %66, label %230 [
    i32 139, label %67
    i32 140, label %88
    i32 128, label %109
    i32 133, label %130
    i32 129, label %144
    i32 132, label %154
    i32 131, label %164
    i32 130, label %174
    i32 136, label %184
    i32 135, label %190
    i32 137, label %200
    i32 134, label %210
    i32 138, label %220
  ]

67:                                               ; preds = %52
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_BATTERY, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %73 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ATOM_PPLIB_SINGLE_DISPLAY_ONLY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  store %struct.amdgpu_ps* %82, %struct.amdgpu_ps** %3, align 8
  br label %257

83:                                               ; preds = %78
  br label %86

84:                                               ; preds = %71
  %85 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  store %struct.amdgpu_ps* %85, %struct.amdgpu_ps** %3, align 8
  br label %257

86:                                               ; preds = %83
  br label %87

87:                                               ; preds = %86, %67
  br label %231

88:                                               ; preds = %52
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_BALANCED, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %94 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ATOM_PPLIB_SINGLE_DISPLAY_ONLY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  store %struct.amdgpu_ps* %103, %struct.amdgpu_ps** %3, align 8
  br label %257

104:                                              ; preds = %99
  br label %107

105:                                              ; preds = %92
  %106 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  store %struct.amdgpu_ps* %106, %struct.amdgpu_ps** %3, align 8
  br label %257

107:                                              ; preds = %104
  br label %108

108:                                              ; preds = %107, %88
  br label %231

109:                                              ; preds = %52
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %115 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ATOM_PPLIB_SINGLE_DISPLAY_ONLY, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  store %struct.amdgpu_ps* %124, %struct.amdgpu_ps** %3, align 8
  br label %257

125:                                              ; preds = %120
  br label %128

126:                                              ; preds = %113
  %127 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  store %struct.amdgpu_ps* %127, %struct.amdgpu_ps** %3, align 8
  br label %257

128:                                              ; preds = %125
  br label %129

129:                                              ; preds = %128, %109
  br label %231

130:                                              ; preds = %52
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %134, align 8
  %136 = icmp ne %struct.amdgpu_ps* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %141, align 8
  store %struct.amdgpu_ps* %142, %struct.amdgpu_ps** %3, align 8
  br label %257

143:                                              ; preds = %130
  br label %231

144:                                              ; preds = %52
  %145 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %146 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_SDSTATE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  store %struct.amdgpu_ps* %152, %struct.amdgpu_ps** %3, align 8
  br label %257

153:                                              ; preds = %144
  br label %231

154:                                              ; preds = %52
  %155 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %156 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_HDSTATE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  store %struct.amdgpu_ps* %162, %struct.amdgpu_ps** %3, align 8
  br label %257

163:                                              ; preds = %154
  br label %231

164:                                              ; preds = %52
  %165 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %166 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_HD2STATE, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  store %struct.amdgpu_ps* %172, %struct.amdgpu_ps** %3, align 8
  br label %257

173:                                              ; preds = %164
  br label %231

174:                                              ; preds = %52
  %175 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %176 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION2_MVC, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  store %struct.amdgpu_ps* %182, %struct.amdgpu_ps** %3, align 8
  br label %257

183:                                              ; preds = %174
  br label %231

184:                                              ; preds = %52
  %185 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %186 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 3
  %189 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %188, align 8
  store %struct.amdgpu_ps* %189, %struct.amdgpu_ps** %3, align 8
  br label %257

190:                                              ; preds = %52
  %191 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %192 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_THERMAL, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %190
  %198 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  store %struct.amdgpu_ps* %198, %struct.amdgpu_ps** %3, align 8
  br label %257

199:                                              ; preds = %190
  br label %231

200:                                              ; preds = %52
  %201 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %202 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_ACPI, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %200
  %208 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  store %struct.amdgpu_ps* %208, %struct.amdgpu_ps** %3, align 8
  br label %257

209:                                              ; preds = %200
  br label %231

210:                                              ; preds = %52
  %211 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %212 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION2_ULV, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %210
  %218 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  store %struct.amdgpu_ps* %218, %struct.amdgpu_ps** %3, align 8
  br label %257

219:                                              ; preds = %210
  br label %231

220:                                              ; preds = %52
  %221 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %222 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %220
  %228 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  store %struct.amdgpu_ps* %228, %struct.amdgpu_ps** %3, align 8
  br label %257

229:                                              ; preds = %220
  br label %231

230:                                              ; preds = %52
  br label %231

231:                                              ; preds = %230, %229, %219, %209, %199, %183, %173, %163, %153, %143, %129, %108, %87
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %6, align 4
  br label %44

235:                                              ; preds = %44
  %236 = load i32, i32* %5, align 4
  switch i32 %236, label %255 [
    i32 129, label %237
    i32 132, label %238
    i32 131, label %238
    i32 130, label %238
    i32 135, label %252
    i32 137, label %253
    i32 139, label %254
    i32 140, label %254
    i32 138, label %254
  ]

237:                                              ; preds = %235
  store i32 132, i32* %5, align 4
  br label %43

238:                                              ; preds = %235, %235, %235
  %239 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %240 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 2
  %243 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %242, align 8
  %244 = icmp ne %struct.amdgpu_ps* %243, null
  br i1 %244, label %245, label %251

245:                                              ; preds = %238
  %246 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %247 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 2
  %250 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %249, align 8
  store %struct.amdgpu_ps* %250, %struct.amdgpu_ps** %3, align 8
  br label %257

251:                                              ; preds = %238
  store i32 128, i32* %5, align 4
  br label %43

252:                                              ; preds = %235
  store i32 137, i32* %5, align 4
  br label %43

253:                                              ; preds = %235
  store i32 139, i32* %5, align 4
  br label %43

254:                                              ; preds = %235, %235, %235
  store i32 128, i32* %5, align 4
  br label %43

255:                                              ; preds = %235
  br label %256

256:                                              ; preds = %255
  store %struct.amdgpu_ps* null, %struct.amdgpu_ps** %3, align 8
  br label %257

257:                                              ; preds = %256, %245, %227, %217, %207, %197, %184, %181, %171, %161, %151, %137, %126, %123, %105, %102, %84, %81
  %258 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %3, align 8
  ret %struct.amdgpu_ps* %258
}

declare dso_local i64 @amdgpu_dpm_vblank_too_short(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
