; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_set_test_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_set_test_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.dce110_timing_generator = type { i32 }

@__const.dce110_timing_generator_set_test_pattern.src_color = private unnamed_addr constant [6 x i32] [i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0], align 16
@TEST_PATTERN_COLOR_FORMAT_BPC_12 = common dso_local global i32 0, align 4
@TEST_PATTERN_DYN_RANGE_CEA = common dso_local global i32 0, align 4
@TEST_PATTERN_DYN_RANGE_VESA = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_COLORSQUARES_RGB = common dso_local global i32 0, align 4
@mmCRTC_TEST_PATTERN_PARAMETERS = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_PARAMETERS = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_VRES = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_HRES = common dso_local global i32 0, align 4
@mmCRTC_TEST_PATTERN_CONTROL = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_CONTROL = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_EN = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_MODE = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_DYNAMIC_RANGE = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_COLOR_FORMAT = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_VERTICALBARS = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_HORIZONTALBARS = common dso_local global i32 0, align 4
@mmCRTC_TEST_PATTERN_COLOR = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_COLOR = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_MASK = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_DATA = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_DUALRAMP_RGB = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_SINGLERAMP_RGB = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_INC0 = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_INC1 = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_RAMP0_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_timing_generator_set_test_pattern(%struct.timing_generator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dce110_timing_generator*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [6 x i32], align 16
  %18 = alloca [6 x i32], align 16
  %19 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %20 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %21 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %20, i32 0, i32 0
  %22 = load %struct.dc_context*, %struct.dc_context** %21, align 8
  store %struct.dc_context* %22, %struct.dc_context** %7, align 8
  %23 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %24 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %23)
  store %struct.dce110_timing_generator* %24, %struct.dce110_timing_generator** %10, align 8
  store i32 16, i32* %14, align 4
  %25 = bitcast [6 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([6 x i32]* @__const.dce110_timing_generator_set_test_pattern.src_color to i8*), i64 24, i1 false)
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %32 [
    i32 138, label %27
    i32 137, label %28
    i32 140, label %29
    i32 139, label %30
  ]

27:                                               ; preds = %3
  store i32 129, i32* %11, align 4
  br label %33

28:                                               ; preds = %3
  store i32 128, i32* %11, align 4
  br label %33

29:                                               ; preds = %3
  store i32 130, i32* %11, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @TEST_PATTERN_COLOR_FORMAT_BPC_12, align 4
  store i32 %31, i32* %11, align 4
  br label %33

32:                                               ; preds = %3
  store i32 128, i32* %11, align 4
  br label %33

33:                                               ; preds = %32, %30, %29, %28, %27
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %328 [
    i32 135, label %35
    i32 134, label %35
    i32 132, label %84
    i32 133, label %84
    i32 136, label %187
    i32 131, label %312
  ]

35:                                               ; preds = %33, %33
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 134
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @TEST_PATTERN_DYN_RANGE_CEA, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @TEST_PATTERN_DYN_RANGE_VESA, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @TEST_PATTERN_MODE_COLORSQUARES_RGB, align 4
  store i32 %44, i32* %13, align 4
  store i32 0, i32* %8, align 4
  %45 = load i32, i32* @mmCRTC_TEST_PATTERN_PARAMETERS, align 4
  %46 = call i32 @CRTC_REG(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %49 = load i32, i32* @CRTC_TEST_PATTERN_VRES, align 4
  %50 = call i32 @set_reg_field_value(i32 %47, i32 6, i32 %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %53 = load i32, i32* @CRTC_TEST_PATTERN_HRES, align 4
  %54 = call i32 @set_reg_field_value(i32 %51, i32 6, i32 %52, i32 %53)
  %55 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @dm_write_reg(%struct.dc_context* %55, i32 %56, i32 %57)
  %59 = load i32, i32* @mmCRTC_TEST_PATTERN_CONTROL, align 4
  %60 = call i32 @CRTC_REG(i32 %59)
  store i32 %60, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @CRTC_TEST_PATTERN_CONTROL, align 4
  %63 = load i32, i32* @CRTC_TEST_PATTERN_EN, align 4
  %64 = call i32 @set_reg_field_value(i32 %61, i32 1, i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @CRTC_TEST_PATTERN_CONTROL, align 4
  %68 = load i32, i32* @CRTC_TEST_PATTERN_MODE, align 4
  %69 = call i32 @set_reg_field_value(i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @CRTC_TEST_PATTERN_CONTROL, align 4
  %73 = load i32, i32* @CRTC_TEST_PATTERN_DYNAMIC_RANGE, align 4
  %74 = call i32 @set_reg_field_value(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @CRTC_TEST_PATTERN_CONTROL, align 4
  %78 = load i32, i32* @CRTC_TEST_PATTERN_COLOR_FORMAT, align 4
  %79 = call i32 @set_reg_field_value(i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @dm_write_reg(%struct.dc_context* %80, i32 %81, i32 %82)
  br label %329

84:                                               ; preds = %33, %33
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 132
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @TEST_PATTERN_MODE_VERTICALBARS, align 4
  br label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @TEST_PATTERN_MODE_HORIZONTALBARS, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %11, align 4
  switch i32 %93, label %97 [
    i32 129, label %94
    i32 128, label %95
    i32 130, label %96
  ]

94:                                               ; preds = %91
  store i32 6, i32* %15, align 4
  br label %98

95:                                               ; preds = %91
  store i32 8, i32* %15, align 4
  br label %98

96:                                               ; preds = %91
  store i32 10, i32* %15, align 4
  br label %98

97:                                               ; preds = %91
  store i32 8, i32* %15, align 4
  br label %98

98:                                               ; preds = %97, %96, %95, %94
  store i32 0, i32* %16, align 4
  br label %99

99:                                               ; preds = %121, %98
  %100 = load i32, i32* %16, align 4
  %101 = icmp slt i32 %100, 6
  br i1 %101, label %102, label %124

102:                                              ; preds = %99
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = sub nsw i32 %107, %108
  %110 = ashr i32 %106, %109
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [6 x i32], [6 x i32]* %18, i64 0, i64 %112
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* %15, align 4
  %115 = sub nsw i32 16, %114
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [6 x i32], [6 x i32]* %18, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, %115
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %102
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %99

124:                                              ; preds = %99
  store i32 0, i32* %8, align 4
  %125 = load i32, i32* @mmCRTC_TEST_PATTERN_PARAMETERS, align 4
  %126 = call i32 @CRTC_REG(i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @dm_write_reg(%struct.dc_context* %127, i32 %128, i32 %129)
  store i32 0, i32* %8, align 4
  %131 = load i32, i32* @mmCRTC_TEST_PATTERN_COLOR, align 4
  %132 = call i32 @CRTC_REG(i32 %131)
  store i32 %132, i32* %9, align 4
  store i32 0, i32* %16, align 4
  br label %133

133:                                              ; preds = %155, %124
  %134 = load i32, i32* %16, align 4
  %135 = icmp slt i32 %134, 6
  br i1 %135, label %136, label %158

136:                                              ; preds = %133
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %16, align 4
  %139 = shl i32 1, %138
  %140 = load i32, i32* @CRTC_TEST_PATTERN_COLOR, align 4
  %141 = load i32, i32* @CRTC_TEST_PATTERN_MASK, align 4
  %142 = call i32 @set_reg_field_value(i32 %137, i32 %139, i32 %140, i32 %141)
  %143 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @dm_write_reg(%struct.dc_context* %143, i32 %144, i32 %145)
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [6 x i32], [6 x i32]* %18, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @CRTC_TEST_PATTERN_COLOR, align 4
  %153 = load i32, i32* @CRTC_TEST_PATTERN_DATA, align 4
  %154 = call i32 @set_reg_field_value(i32 %147, i32 %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %136
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %16, align 4
  br label %133

158:                                              ; preds = %133
  %159 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @dm_write_reg(%struct.dc_context* %159, i32 %160, i32 %161)
  %163 = load i32, i32* @mmCRTC_TEST_PATTERN_CONTROL, align 4
  %164 = call i32 @CRTC_REG(i32 %163)
  store i32 %164, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @CRTC_TEST_PATTERN_CONTROL, align 4
  %167 = load i32, i32* @CRTC_TEST_PATTERN_EN, align 4
  %168 = call i32 @set_reg_field_value(i32 %165, i32 1, i32 %166, i32 %167)
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* @CRTC_TEST_PATTERN_CONTROL, align 4
  %172 = load i32, i32* @CRTC_TEST_PATTERN_MODE, align 4
  %173 = call i32 @set_reg_field_value(i32 %169, i32 %170, i32 %171, i32 %172)
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @CRTC_TEST_PATTERN_CONTROL, align 4
  %176 = load i32, i32* @CRTC_TEST_PATTERN_DYNAMIC_RANGE, align 4
  %177 = call i32 @set_reg_field_value(i32 %174, i32 0, i32 %175, i32 %176)
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @CRTC_TEST_PATTERN_CONTROL, align 4
  %181 = load i32, i32* @CRTC_TEST_PATTERN_COLOR_FORMAT, align 4
  %182 = call i32 @set_reg_field_value(i32 %178, i32 %179, i32 %180, i32 %181)
  %183 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @dm_write_reg(%struct.dc_context* %183, i32 %184, i32 %185)
  br label %329

187:                                              ; preds = %33
  %188 = load i32, i32* %11, align 4
  %189 = icmp eq i32 %188, 130
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = load i32, i32* @TEST_PATTERN_MODE_DUALRAMP_RGB, align 4
  br label %194

192:                                              ; preds = %187
  %193 = load i32, i32* @TEST_PATTERN_MODE_SINGLERAMP_RGB, align 4
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i32 [ %191, %190 ], [ %193, %192 ]
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %11, align 4
  switch i32 %196, label %200 [
    i32 129, label %197
    i32 128, label %198
    i32 130, label %199
  ]

197:                                              ; preds = %194
  store i32 6, i32* %15, align 4
  br label %201

198:                                              ; preds = %194
  store i32 8, i32* %15, align 4
  br label %201

199:                                              ; preds = %194
  store i32 10, i32* %15, align 4
  br label %201

200:                                              ; preds = %194
  store i32 8, i32* %15, align 4
  br label %201

201:                                              ; preds = %200, %199, %198, %197
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %15, align 4
  %204 = sub nsw i32 %202, %203
  store i32 %204, i32* %19, align 4
  store i32 0, i32* %8, align 4
  %205 = load i32, i32* @mmCRTC_TEST_PATTERN_PARAMETERS, align 4
  %206 = call i32 @CRTC_REG(i32 %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %11, align 4
  switch i32 %207, label %276 [
    i32 129, label %208
    i32 128, label %230
    i32 130, label %252
  ]

208:                                              ; preds = %201
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %212 = load i32, i32* @CRTC_TEST_PATTERN_INC0, align 4
  %213 = call i32 @set_reg_field_value(i32 %209, i32 %210, i32 %211, i32 %212)
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %216 = load i32, i32* @CRTC_TEST_PATTERN_INC1, align 4
  %217 = call i32 @set_reg_field_value(i32 %214, i32 0, i32 %215, i32 %216)
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %220 = load i32, i32* @CRTC_TEST_PATTERN_HRES, align 4
  %221 = call i32 @set_reg_field_value(i32 %218, i32 6, i32 %219, i32 %220)
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %224 = load i32, i32* @CRTC_TEST_PATTERN_VRES, align 4
  %225 = call i32 @set_reg_field_value(i32 %222, i32 6, i32 %223, i32 %224)
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %228 = load i32, i32* @CRTC_TEST_PATTERN_RAMP0_OFFSET, align 4
  %229 = call i32 @set_reg_field_value(i32 %226, i32 0, i32 %227, i32 %228)
  br label %277

230:                                              ; preds = %201
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %234 = load i32, i32* @CRTC_TEST_PATTERN_INC0, align 4
  %235 = call i32 @set_reg_field_value(i32 %231, i32 %232, i32 %233, i32 %234)
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %238 = load i32, i32* @CRTC_TEST_PATTERN_INC1, align 4
  %239 = call i32 @set_reg_field_value(i32 %236, i32 0, i32 %237, i32 %238)
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %242 = load i32, i32* @CRTC_TEST_PATTERN_HRES, align 4
  %243 = call i32 @set_reg_field_value(i32 %240, i32 8, i32 %241, i32 %242)
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %246 = load i32, i32* @CRTC_TEST_PATTERN_VRES, align 4
  %247 = call i32 @set_reg_field_value(i32 %244, i32 6, i32 %245, i32 %246)
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %250 = load i32, i32* @CRTC_TEST_PATTERN_RAMP0_OFFSET, align 4
  %251 = call i32 @set_reg_field_value(i32 %248, i32 0, i32 %249, i32 %250)
  br label %277

252:                                              ; preds = %201
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* %19, align 4
  %255 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %256 = load i32, i32* @CRTC_TEST_PATTERN_INC0, align 4
  %257 = call i32 @set_reg_field_value(i32 %253, i32 %254, i32 %255, i32 %256)
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* %19, align 4
  %260 = add nsw i32 %259, 2
  %261 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %262 = load i32, i32* @CRTC_TEST_PATTERN_INC1, align 4
  %263 = call i32 @set_reg_field_value(i32 %258, i32 %260, i32 %261, i32 %262)
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %266 = load i32, i32* @CRTC_TEST_PATTERN_HRES, align 4
  %267 = call i32 @set_reg_field_value(i32 %264, i32 8, i32 %265, i32 %266)
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %270 = load i32, i32* @CRTC_TEST_PATTERN_VRES, align 4
  %271 = call i32 @set_reg_field_value(i32 %268, i32 5, i32 %269, i32 %270)
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* @CRTC_TEST_PATTERN_PARAMETERS, align 4
  %274 = load i32, i32* @CRTC_TEST_PATTERN_RAMP0_OFFSET, align 4
  %275 = call i32 @set_reg_field_value(i32 %272, i32 24576, i32 %273, i32 %274)
  br label %277

276:                                              ; preds = %201
  br label %277

277:                                              ; preds = %276, %252, %230, %208
  %278 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* %8, align 4
  %281 = call i32 @dm_write_reg(%struct.dc_context* %278, i32 %279, i32 %280)
  store i32 0, i32* %8, align 4
  %282 = load i32, i32* @mmCRTC_TEST_PATTERN_COLOR, align 4
  %283 = call i32 @CRTC_REG(i32 %282)
  store i32 %283, i32* %9, align 4
  %284 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* %8, align 4
  %287 = call i32 @dm_write_reg(%struct.dc_context* %284, i32 %285, i32 %286)
  %288 = load i32, i32* @mmCRTC_TEST_PATTERN_CONTROL, align 4
  %289 = call i32 @CRTC_REG(i32 %288)
  store i32 %289, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %290 = load i32, i32* %8, align 4
  %291 = load i32, i32* @CRTC_TEST_PATTERN_CONTROL, align 4
  %292 = load i32, i32* @CRTC_TEST_PATTERN_EN, align 4
  %293 = call i32 @set_reg_field_value(i32 %290, i32 1, i32 %291, i32 %292)
  %294 = load i32, i32* %8, align 4
  %295 = load i32, i32* %13, align 4
  %296 = load i32, i32* @CRTC_TEST_PATTERN_CONTROL, align 4
  %297 = load i32, i32* @CRTC_TEST_PATTERN_MODE, align 4
  %298 = call i32 @set_reg_field_value(i32 %294, i32 %295, i32 %296, i32 %297)
  %299 = load i32, i32* %8, align 4
  %300 = load i32, i32* @CRTC_TEST_PATTERN_CONTROL, align 4
  %301 = load i32, i32* @CRTC_TEST_PATTERN_DYNAMIC_RANGE, align 4
  %302 = call i32 @set_reg_field_value(i32 %299, i32 0, i32 %300, i32 %301)
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* %11, align 4
  %305 = load i32, i32* @CRTC_TEST_PATTERN_CONTROL, align 4
  %306 = load i32, i32* @CRTC_TEST_PATTERN_COLOR_FORMAT, align 4
  %307 = call i32 @set_reg_field_value(i32 %303, i32 %304, i32 %305, i32 %306)
  %308 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %309 = load i32, i32* %9, align 4
  %310 = load i32, i32* %8, align 4
  %311 = call i32 @dm_write_reg(%struct.dc_context* %308, i32 %309, i32 %310)
  br label %329

312:                                              ; preds = %33
  store i32 0, i32* %8, align 4
  %313 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %314 = load i32, i32* @mmCRTC_TEST_PATTERN_CONTROL, align 4
  %315 = call i32 @CRTC_REG(i32 %314)
  %316 = load i32, i32* %8, align 4
  %317 = call i32 @dm_write_reg(%struct.dc_context* %313, i32 %315, i32 %316)
  %318 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %319 = load i32, i32* @mmCRTC_TEST_PATTERN_COLOR, align 4
  %320 = call i32 @CRTC_REG(i32 %319)
  %321 = load i32, i32* %8, align 4
  %322 = call i32 @dm_write_reg(%struct.dc_context* %318, i32 %320, i32 %321)
  %323 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %324 = load i32, i32* @mmCRTC_TEST_PATTERN_PARAMETERS, align 4
  %325 = call i32 @CRTC_REG(i32 %324)
  %326 = load i32, i32* %8, align 4
  %327 = call i32 @dm_write_reg(%struct.dc_context* %323, i32 %325, i32 %326)
  br label %329

328:                                              ; preds = %33
  br label %329

329:                                              ; preds = %328, %312, %277, %158, %42
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @CRTC_REG(i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(%struct.dc_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
