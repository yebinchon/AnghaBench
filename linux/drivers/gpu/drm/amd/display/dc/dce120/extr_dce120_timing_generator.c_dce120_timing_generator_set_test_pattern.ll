; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_set_test_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_set_test_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.dce110_timing_generator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__const.dce120_timing_generator_set_test_pattern.src_color = private unnamed_addr constant [6 x i32] [i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0], align 16
@TEST_PATTERN_COLOR_FORMAT_BPC_12 = common dso_local global i32 0, align 4
@TEST_PATTERN_DYN_RANGE_CEA = common dso_local global i32 0, align 4
@TEST_PATTERN_DYN_RANGE_VESA = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_COLORSQUARES_RGB = common dso_local global i32 0, align 4
@CRTC0_CRTC_TEST_PATTERN_PARAMETERS = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_VRES = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_HRES = common dso_local global i32 0, align 4
@CRTC0_CRTC_TEST_PATTERN_CONTROL = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_EN = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_MODE = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_DYNAMIC_RANGE = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_COLOR_FORMAT = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_VERTICALBARS = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_HORIZONTALBARS = common dso_local global i32 0, align 4
@mmCRTC0_CRTC_TEST_PATTERN_PARAMETERS = common dso_local global i32 0, align 4
@CRTC0_CRTC_TEST_PATTERN_COLOR = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_MASK = common dso_local global i32 0, align 4
@mmCRTC0_CRTC_TEST_PATTERN_COLOR = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_DATA = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_DUALRAMP_RGB = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_SINGLERAMP_RGB = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_INC0 = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_INC1 = common dso_local global i32 0, align 4
@CRTC_TEST_PATTERN_RAMP0_OFFSET = common dso_local global i32 0, align 4
@mmCRTC0_CRTC_TEST_PATTERN_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce120_timing_generator_set_test_pattern(%struct.timing_generator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dce110_timing_generator*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [6 x i32], align 16
  %17 = alloca [6 x i32], align 16
  %18 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %20 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %19, i32 0, i32 0
  %21 = load %struct.dc_context*, %struct.dc_context** %20, align 8
  store %struct.dc_context* %21, %struct.dc_context** %7, align 8
  %22 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %23 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %22)
  store %struct.dce110_timing_generator* %23, %struct.dce110_timing_generator** %9, align 8
  store i32 16, i32* %13, align 4
  %24 = bitcast [6 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([6 x i32]* @__const.dce120_timing_generator_set_test_pattern.src_color to i8*), i64 24, i1 false)
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %31 [
    i32 138, label %26
    i32 137, label %27
    i32 140, label %28
    i32 139, label %29
  ]

26:                                               ; preds = %3
  store i32 129, i32* %10, align 4
  br label %32

27:                                               ; preds = %3
  store i32 128, i32* %10, align 4
  br label %32

28:                                               ; preds = %3
  store i32 130, i32* %10, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @TEST_PATTERN_COLOR_FORMAT_BPC_12, align 4
  store i32 %30, i32* %10, align 4
  br label %32

31:                                               ; preds = %3
  store i32 128, i32* %10, align 4
  br label %32

32:                                               ; preds = %31, %29, %28, %27, %26
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %248 [
    i32 135, label %34
    i32 134, label %34
    i32 132, label %57
    i32 133, label %57
    i32 136, label %151
    i32 131, label %223
  ]

34:                                               ; preds = %32, %32
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 134
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @TEST_PATTERN_DYN_RANGE_CEA, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @TEST_PATTERN_DYN_RANGE_VESA, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* @TEST_PATTERN_MODE_COLORSQUARES_RGB, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @CRTC0_CRTC_TEST_PATTERN_PARAMETERS, align 4
  %45 = load i32, i32* @CRTC_TEST_PATTERN_VRES, align 4
  %46 = load i32, i32* @CRTC_TEST_PATTERN_HRES, align 4
  %47 = call i32 @CRTC_REG_UPDATE_2(i32 %44, i32 %45, i32 6, i32 %46, i32 6)
  %48 = load i32, i32* @CRTC0_CRTC_TEST_PATTERN_CONTROL, align 4
  %49 = load i32, i32* @CRTC_TEST_PATTERN_EN, align 4
  %50 = load i32, i32* @CRTC_TEST_PATTERN_MODE, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @CRTC_TEST_PATTERN_DYNAMIC_RANGE, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @CRTC_TEST_PATTERN_COLOR_FORMAT, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @CRTC_REG_UPDATE_4(i32 %48, i32 %49, i32 1, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  br label %249

57:                                               ; preds = %32, %32
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 132
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @TEST_PATTERN_MODE_VERTICALBARS, align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @TEST_PATTERN_MODE_HORIZONTALBARS, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %10, align 4
  switch i32 %66, label %70 [
    i32 129, label %67
    i32 128, label %68
    i32 130, label %69
  ]

67:                                               ; preds = %64
  store i32 6, i32* %14, align 4
  br label %71

68:                                               ; preds = %64
  store i32 8, i32* %14, align 4
  br label %71

69:                                               ; preds = %64
  store i32 10, i32* %14, align 4
  br label %71

70:                                               ; preds = %64
  store i32 8, i32* %14, align 4
  br label %71

71:                                               ; preds = %70, %69, %68, %67
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %94, %71
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %73, 6
  br i1 %74, label %75, label %97

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = sub nsw i32 %80, %81
  %83 = ashr i32 %79, %82
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 %85
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %14, align 4
  %88 = sub nsw i32 16, %87
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, %88
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %75
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %15, align 4
  br label %72

97:                                               ; preds = %72
  %98 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %99 = load i32, i32* @mmCRTC0_CRTC_TEST_PATTERN_PARAMETERS, align 4
  %100 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %9, align 8
  %101 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dm_write_reg_soc15(%struct.dc_context* %98, i32 %99, i32 %103, i32 0)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %131, %97
  %106 = load i32, i32* %15, align 4
  %107 = icmp slt i32 %106, 6
  br i1 %107, label %108, label %134

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %15, align 4
  %111 = shl i32 1, %110
  %112 = load i32, i32* @CRTC0_CRTC_TEST_PATTERN_COLOR, align 4
  %113 = load i32, i32* @CRTC_TEST_PATTERN_MASK, align 4
  %114 = call i32 @set_reg_field_value(i32 %109, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %116 = load i32, i32* @mmCRTC0_CRTC_TEST_PATTERN_COLOR, align 4
  %117 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %9, align 8
  %118 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @dm_write_reg_soc15(%struct.dc_context* %115, i32 %116, i32 %120, i32 %121)
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @CRTC0_CRTC_TEST_PATTERN_COLOR, align 4
  %129 = load i32, i32* @CRTC_TEST_PATTERN_DATA, align 4
  %130 = call i32 @set_reg_field_value(i32 %123, i32 %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %108
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %15, align 4
  br label %105

134:                                              ; preds = %105
  %135 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %136 = load i32, i32* @mmCRTC0_CRTC_TEST_PATTERN_COLOR, align 4
  %137 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %9, align 8
  %138 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @dm_write_reg_soc15(%struct.dc_context* %135, i32 %136, i32 %140, i32 %141)
  %143 = load i32, i32* @CRTC0_CRTC_TEST_PATTERN_CONTROL, align 4
  %144 = load i32, i32* @CRTC_TEST_PATTERN_EN, align 4
  %145 = load i32, i32* @CRTC_TEST_PATTERN_MODE, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @CRTC_TEST_PATTERN_DYNAMIC_RANGE, align 4
  %148 = load i32, i32* @CRTC_TEST_PATTERN_COLOR_FORMAT, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @CRTC_REG_UPDATE_4(i32 %143, i32 %144, i32 1, i32 %145, i32 %146, i32 %147, i32 0, i32 %148, i32 %149)
  br label %249

151:                                              ; preds = %32
  %152 = load i32, i32* %10, align 4
  %153 = icmp eq i32 %152, 130
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* @TEST_PATTERN_MODE_DUALRAMP_RGB, align 4
  br label %158

156:                                              ; preds = %151
  %157 = load i32, i32* @TEST_PATTERN_MODE_SINGLERAMP_RGB, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %10, align 4
  switch i32 %160, label %164 [
    i32 129, label %161
    i32 128, label %162
    i32 130, label %163
  ]

161:                                              ; preds = %158
  store i32 6, i32* %14, align 4
  br label %165

162:                                              ; preds = %158
  store i32 8, i32* %14, align 4
  br label %165

163:                                              ; preds = %158
  store i32 10, i32* %14, align 4
  br label %165

164:                                              ; preds = %158
  store i32 8, i32* %14, align 4
  br label %165

165:                                              ; preds = %164, %163, %162, %161
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %14, align 4
  %168 = sub nsw i32 %166, %167
  store i32 %168, i32* %18, align 4
  %169 = load i32, i32* %10, align 4
  switch i32 %169, label %199 [
    i32 129, label %170
    i32 128, label %179
    i32 130, label %188
  ]

170:                                              ; preds = %165
  %171 = load i32, i32* @CRTC0_CRTC_TEST_PATTERN_PARAMETERS, align 4
  %172 = load i32, i32* @CRTC_TEST_PATTERN_INC0, align 4
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* @CRTC_TEST_PATTERN_INC1, align 4
  %175 = load i32, i32* @CRTC_TEST_PATTERN_HRES, align 4
  %176 = load i32, i32* @CRTC_TEST_PATTERN_VRES, align 4
  %177 = load i32, i32* @CRTC_TEST_PATTERN_RAMP0_OFFSET, align 4
  %178 = call i32 @CRTC_REG_UPDATE_5(i32 %171, i32 %172, i32 %173, i32 %174, i32 0, i32 %175, i32 6, i32 %176, i32 6, i32 %177, i32 0)
  br label %200

179:                                              ; preds = %165
  %180 = load i32, i32* @CRTC0_CRTC_TEST_PATTERN_PARAMETERS, align 4
  %181 = load i32, i32* @CRTC_TEST_PATTERN_INC0, align 4
  %182 = load i32, i32* %18, align 4
  %183 = load i32, i32* @CRTC_TEST_PATTERN_INC1, align 4
  %184 = load i32, i32* @CRTC_TEST_PATTERN_HRES, align 4
  %185 = load i32, i32* @CRTC_TEST_PATTERN_VRES, align 4
  %186 = load i32, i32* @CRTC_TEST_PATTERN_RAMP0_OFFSET, align 4
  %187 = call i32 @CRTC_REG_UPDATE_5(i32 %180, i32 %181, i32 %182, i32 %183, i32 0, i32 %184, i32 8, i32 %185, i32 6, i32 %186, i32 0)
  br label %200

188:                                              ; preds = %165
  %189 = load i32, i32* @CRTC0_CRTC_TEST_PATTERN_PARAMETERS, align 4
  %190 = load i32, i32* @CRTC_TEST_PATTERN_INC0, align 4
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* @CRTC_TEST_PATTERN_INC1, align 4
  %193 = load i32, i32* %18, align 4
  %194 = add nsw i32 %193, 2
  %195 = load i32, i32* @CRTC_TEST_PATTERN_HRES, align 4
  %196 = load i32, i32* @CRTC_TEST_PATTERN_VRES, align 4
  %197 = load i32, i32* @CRTC_TEST_PATTERN_RAMP0_OFFSET, align 4
  %198 = call i32 @CRTC_REG_UPDATE_5(i32 %189, i32 %190, i32 %191, i32 %192, i32 %194, i32 %195, i32 8, i32 %196, i32 5, i32 %197, i32 24576)
  br label %200

199:                                              ; preds = %165
  br label %200

200:                                              ; preds = %199, %188, %179, %170
  %201 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %202 = load i32, i32* @mmCRTC0_CRTC_TEST_PATTERN_COLOR, align 4
  %203 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %9, align 8
  %204 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @dm_write_reg_soc15(%struct.dc_context* %201, i32 %202, i32 %206, i32 0)
  %208 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %209 = load i32, i32* @mmCRTC0_CRTC_TEST_PATTERN_CONTROL, align 4
  %210 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %9, align 8
  %211 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @dm_write_reg_soc15(%struct.dc_context* %208, i32 %209, i32 %213, i32 0)
  %215 = load i32, i32* @CRTC0_CRTC_TEST_PATTERN_CONTROL, align 4
  %216 = load i32, i32* @CRTC_TEST_PATTERN_EN, align 4
  %217 = load i32, i32* @CRTC_TEST_PATTERN_MODE, align 4
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* @CRTC_TEST_PATTERN_DYNAMIC_RANGE, align 4
  %220 = load i32, i32* @CRTC_TEST_PATTERN_COLOR_FORMAT, align 4
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @CRTC_REG_UPDATE_4(i32 %215, i32 %216, i32 1, i32 %217, i32 %218, i32 %219, i32 0, i32 %220, i32 %221)
  br label %249

223:                                              ; preds = %32
  store i32 0, i32* %8, align 4
  %224 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %225 = load i32, i32* @mmCRTC0_CRTC_TEST_PATTERN_CONTROL, align 4
  %226 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %9, align 8
  %227 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %8, align 4
  %231 = call i32 @dm_write_reg_soc15(%struct.dc_context* %224, i32 %225, i32 %229, i32 %230)
  %232 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %233 = load i32, i32* @mmCRTC0_CRTC_TEST_PATTERN_COLOR, align 4
  %234 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %9, align 8
  %235 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @dm_write_reg_soc15(%struct.dc_context* %232, i32 %233, i32 %237, i32 %238)
  %240 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %241 = load i32, i32* @mmCRTC0_CRTC_TEST_PATTERN_PARAMETERS, align 4
  %242 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %9, align 8
  %243 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %8, align 4
  %247 = call i32 @dm_write_reg_soc15(%struct.dc_context* %240, i32 %241, i32 %245, i32 %246)
  br label %249

248:                                              ; preds = %32
  br label %249

249:                                              ; preds = %248, %223, %200, %134, %41
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @CRTC_REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CRTC_REG_UPDATE_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg_soc15(%struct.dc_context*, i32, i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @CRTC_REG_UPDATE_5(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
