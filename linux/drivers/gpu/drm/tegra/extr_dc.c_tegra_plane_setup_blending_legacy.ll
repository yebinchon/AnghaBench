; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_plane_setup_blending_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_plane_setup_blending_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_plane = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tegra_plane_state = type { %struct.TYPE_6__*, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@BLEND_COLOR_KEY_NONE = common dso_local global i32 0, align 4
@DC_WIN_BLEND_NOKEY = common dso_local global i32 0, align 4
@DC_WIN_BLEND_1WIN = common dso_local global i32 0, align 4
@BLEND_CONTROL_DEPENDENT = common dso_local global i32 0, align 4
@BLEND_CONTROL_ALPHA = common dso_local global i32 0, align 4
@DC_WIN_BLEND_2WIN_X = common dso_local global i32 0, align 4
@DC_WIN_BLEND_2WIN_Y = common dso_local global i32 0, align 4
@DC_WIN_BLEND_3WIN_XY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_plane*)* @tegra_plane_setup_blending_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_plane_setup_blending_legacy(%struct.tegra_plane* %0) #0 {
  %2 = alloca %struct.tegra_plane*, align 8
  %3 = alloca [3 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_plane_state*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.tegra_plane* %0, %struct.tegra_plane** %2, align 8
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %10 = call i32 @BLEND_WEIGHT1(i32 0)
  %11 = call i32 @BLEND_WEIGHT0(i32 0)
  %12 = or i32 %10, %11
  %13 = load i32, i32* @BLEND_COLOR_KEY_NONE, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = getelementptr inbounds i32, i32* %9, i64 1
  %16 = call i32 @BLEND_WEIGHT1(i32 0)
  %17 = call i32 @BLEND_WEIGHT0(i32 0)
  %18 = or i32 %16, %17
  %19 = load i32, i32* @BLEND_COLOR_KEY_NONE, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %15, align 4
  %21 = getelementptr inbounds i32, i32* %15, i64 1
  %22 = call i32 @BLEND_WEIGHT1(i32 0)
  %23 = call i32 @BLEND_WEIGHT0(i32 0)
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BLEND_COLOR_KEY_NONE, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %21, align 4
  %27 = call i32 @BLEND_WEIGHT1(i32 255)
  %28 = call i32 @BLEND_WEIGHT0(i32 255)
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BLEND_COLOR_KEY_NONE, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %4, align 4
  %32 = call i32 @BLEND_WEIGHT1(i32 255)
  %33 = call i32 @BLEND_WEIGHT0(i32 255)
  %34 = or i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.tegra_plane*, %struct.tegra_plane** %2, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @DC_WIN_BLEND_NOKEY, align 4
  %38 = call i32 @tegra_plane_writel(%struct.tegra_plane* %35, i32 %36, i32 %37)
  %39 = load %struct.tegra_plane*, %struct.tegra_plane** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @DC_WIN_BLEND_1WIN, align 4
  %42 = call i32 @tegra_plane_writel(%struct.tegra_plane* %39, i32 %40, i32 %41)
  %43 = load %struct.tegra_plane*, %struct.tegra_plane** %2, align 8
  %44 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.tegra_plane_state* @to_tegra_plane_state(i32 %46)
  store %struct.tegra_plane_state* %47, %struct.tegra_plane_state** %6, align 8
  %48 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %49 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %93

52:                                               ; preds = %1
  %53 = load i32, i32* @BLEND_CONTROL_DEPENDENT, align 4
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @BLEND_CONTROL_DEPENDENT, align 4
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %62 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %92 [
    i32 0, label %65
    i32 1, label %87
  ]

65:                                               ; preds = %52
  %66 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %67 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %65
  %74 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %75 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load i32, i32* @BLEND_CONTROL_DEPENDENT, align 4
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %81, %73, %65
  br label %92

87:                                               ; preds = %52
  %88 = load i32, i32* @BLEND_CONTROL_DEPENDENT, align 4
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %52, %87, %86
  br label %202

93:                                               ; preds = %1
  %94 = load i32, i32* @BLEND_CONTROL_ALPHA, align 4
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %128, %93
  %98 = load i32, i32* %8, align 4
  %99 = icmp ult i32 %98, 2
  br i1 %99, label %100, label %131

100:                                              ; preds = %97
  %101 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %102 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %100
  %111 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %112 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %110
  %121 = load i32, i32* @BLEND_CONTROL_DEPENDENT, align 4
  %122 = load i32, i32* %8, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %121
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %120, %110, %100
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %97

131:                                              ; preds = %97
  %132 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %133 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %201 [
    i32 0, label %136
    i32 1, label %158
  ]

136:                                              ; preds = %131
  %137 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %138 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %136
  %145 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %146 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %144
  %153 = load i32, i32* @BLEND_CONTROL_DEPENDENT, align 4
  %154 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %153
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %152, %144, %136
  br label %201

158:                                              ; preds = %131
  %159 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %160 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %158
  %167 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %168 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %167, i32 0, i32 0
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %166
  %175 = load i32, i32* @BLEND_CONTROL_ALPHA, align 4
  %176 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %175
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %174, %166, %158
  %180 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %181 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %180, i32 0, i32 0
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i64 1
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %179
  %188 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %189 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %188, i32 0, i32 0
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i64 1
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %187
  %196 = load i32, i32* @BLEND_CONTROL_ALPHA, align 4
  %197 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %196
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %195, %187, %179
  br label %201

201:                                              ; preds = %131, %200, %157
  br label %202

202:                                              ; preds = %201, %92
  %203 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %204 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  switch i32 %206, label %280 [
    i32 0, label %207
    i32 1, label %223
    i32 2, label %267
  ]

207:                                              ; preds = %202
  %208 = load %struct.tegra_plane*, %struct.tegra_plane** %2, align 8
  %209 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @DC_WIN_BLEND_2WIN_X, align 4
  %212 = call i32 @tegra_plane_writel(%struct.tegra_plane* %208, i32 %210, i32 %211)
  %213 = load %struct.tegra_plane*, %struct.tegra_plane** %2, align 8
  %214 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @DC_WIN_BLEND_2WIN_Y, align 4
  %217 = call i32 @tegra_plane_writel(%struct.tegra_plane* %213, i32 %215, i32 %216)
  %218 = load %struct.tegra_plane*, %struct.tegra_plane** %2, align 8
  %219 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @DC_WIN_BLEND_3WIN_XY, align 4
  %222 = call i32 @tegra_plane_writel(%struct.tegra_plane* %218, i32 %220, i32 %221)
  br label %280

223:                                              ; preds = %202
  %224 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %225 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %224, i32 0, i32 0
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i64 0
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %245, label %231

231:                                              ; preds = %223
  %232 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %233 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %232, i32 0, i32 0
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i64 1
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %231
  %240 = load i32, i32* %4, align 4
  %241 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %240, i32* %241, align 4
  %242 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %243, i32* %244, align 4
  br label %251

245:                                              ; preds = %231, %223
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %247, i32* %248, align 4
  %249 = load i32, i32* %4, align 4
  %250 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %249, i32* %250, align 4
  br label %251

251:                                              ; preds = %245, %239
  %252 = load %struct.tegra_plane*, %struct.tegra_plane** %2, align 8
  %253 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @DC_WIN_BLEND_2WIN_X, align 4
  %256 = call i32 @tegra_plane_writel(%struct.tegra_plane* %252, i32 %254, i32 %255)
  %257 = load %struct.tegra_plane*, %struct.tegra_plane** %2, align 8
  %258 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @DC_WIN_BLEND_2WIN_Y, align 4
  %261 = call i32 @tegra_plane_writel(%struct.tegra_plane* %257, i32 %259, i32 %260)
  %262 = load %struct.tegra_plane*, %struct.tegra_plane** %2, align 8
  %263 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @DC_WIN_BLEND_3WIN_XY, align 4
  %266 = call i32 @tegra_plane_writel(%struct.tegra_plane* %262, i32 %264, i32 %265)
  br label %280

267:                                              ; preds = %202
  %268 = load %struct.tegra_plane*, %struct.tegra_plane** %2, align 8
  %269 = load i32, i32* %4, align 4
  %270 = load i32, i32* @DC_WIN_BLEND_2WIN_X, align 4
  %271 = call i32 @tegra_plane_writel(%struct.tegra_plane* %268, i32 %269, i32 %270)
  %272 = load %struct.tegra_plane*, %struct.tegra_plane** %2, align 8
  %273 = load i32, i32* %4, align 4
  %274 = load i32, i32* @DC_WIN_BLEND_2WIN_Y, align 4
  %275 = call i32 @tegra_plane_writel(%struct.tegra_plane* %272, i32 %273, i32 %274)
  %276 = load %struct.tegra_plane*, %struct.tegra_plane** %2, align 8
  %277 = load i32, i32* %4, align 4
  %278 = load i32, i32* @DC_WIN_BLEND_3WIN_XY, align 4
  %279 = call i32 @tegra_plane_writel(%struct.tegra_plane* %276, i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %202, %267, %251, %207
  ret void
}

declare dso_local i32 @BLEND_WEIGHT1(i32) #1

declare dso_local i32 @BLEND_WEIGHT0(i32) #1

declare dso_local i32 @tegra_plane_writel(%struct.tegra_plane*, i32, i32) #1

declare dso_local %struct.tegra_plane_state* @to_tegra_plane_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
