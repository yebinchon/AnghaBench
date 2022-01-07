; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_opp.c_opp2_set_disp_pattern_generator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_opp.c_opp2_set_disp_pattern_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_pixel_processor = type { i32 }
%struct.tg_color = type { i32 }
%struct.dcn20_opp = type { i32 }

@__const.opp2_set_disp_pattern_generator.src_color = private unnamed_addr constant [6 x i32] [i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0], align 16
@TEST_PATTERN_COLOR_FORMAT_BPC_12 = common dso_local global i32 0, align 4
@DPG_DIMENSIONS = common dso_local global i32 0, align 4
@DPG_ACTIVE_WIDTH = common dso_local global i32 0, align 4
@DPG_ACTIVE_HEIGHT = common dso_local global i32 0, align 4
@TEST_PATTERN_DYN_RANGE_CEA = common dso_local global i32 0, align 4
@TEST_PATTERN_DYN_RANGE_VESA = common dso_local global i32 0, align 4
@DPG_CONTROL = common dso_local global i32 0, align 4
@DPG_EN = common dso_local global i32 0, align 4
@DPG_MODE = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_COLORSQUARES_RGB = common dso_local global i32 0, align 4
@DPG_DYNAMIC_RANGE = common dso_local global i32 0, align 4
@DPG_BIT_DEPTH = common dso_local global i32 0, align 4
@DPG_VRES = common dso_local global i32 0, align 4
@DPG_HRES = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_VERTICALBARS = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_HORIZONTALBARS = common dso_local global i32 0, align 4
@DPG_COLOUR_R_CR = common dso_local global i32 0, align 4
@DPG_COLOUR1_R_CR = common dso_local global i32 0, align 4
@DPG_COLOUR0_R_CR = common dso_local global i32 0, align 4
@DPG_COLOUR_G_Y = common dso_local global i32 0, align 4
@DPG_COLOUR1_G_Y = common dso_local global i32 0, align 4
@DPG_COLOUR0_G_Y = common dso_local global i32 0, align 4
@DPG_COLOUR_B_CB = common dso_local global i32 0, align 4
@DPG_COLOUR1_B_CB = common dso_local global i32 0, align 4
@DPG_COLOUR0_B_CB = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_DUALRAMP_RGB = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_SINGLERAMP_RGB = common dso_local global i32 0, align 4
@DPG_RAMP_CONTROL = common dso_local global i32 0, align 4
@DPG_RAMP0_OFFSET = common dso_local global i32 0, align 4
@DPG_INC0 = common dso_local global i32 0, align 4
@DPG_INC1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opp2_set_disp_pattern_generator(%struct.output_pixel_processor* %0, i32 %1, i32 %2, %struct.tg_color* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.output_pixel_processor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tg_color*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dcn20_opp*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [6 x i32], align 16
  %21 = alloca [6 x i32], align 16
  %22 = alloca i32, align 4
  store %struct.output_pixel_processor* %0, %struct.output_pixel_processor** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.tg_color* %3, %struct.tg_color** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %7, align 8
  %24 = call %struct.dcn20_opp* @TO_DCN20_OPP(%struct.output_pixel_processor* %23)
  store %struct.dcn20_opp* %24, %struct.dcn20_opp** %13, align 8
  store i32 16, i32* %17, align 4
  %25 = bitcast [6 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([6 x i32]* @__const.opp2_set_disp_pattern_generator.src_color to i8*), i64 24, i1 false)
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %32 [
    i32 139, label %27
    i32 138, label %28
    i32 141, label %29
    i32 140, label %30
  ]

27:                                               ; preds = %6
  store i32 129, i32* %14, align 4
  br label %33

28:                                               ; preds = %6
  store i32 128, i32* %14, align 4
  br label %33

29:                                               ; preds = %6
  store i32 130, i32* %14, align 4
  br label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @TEST_PATTERN_COLOR_FORMAT_BPC_12, align 4
  store i32 %31, i32* %14, align 4
  br label %33

32:                                               ; preds = %6
  store i32 128, i32* %14, align 4
  br label %33

33:                                               ; preds = %32, %30, %29, %28, %27
  %34 = load i32, i32* @DPG_DIMENSIONS, align 4
  %35 = load i32, i32* @DPG_ACTIVE_WIDTH, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @DPG_ACTIVE_HEIGHT, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @REG_SET_2(i32 %34, i32 0, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %226 [
    i32 136, label %41
    i32 135, label %41
    i32 132, label %61
    i32 134, label %61
    i32 137, label %136
    i32 131, label %200
    i32 133, label %211
  ]

41:                                               ; preds = %33, %33
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 135
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @TEST_PATTERN_DYN_RANGE_CEA, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @TEST_PATTERN_DYN_RANGE_VESA, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* @DPG_CONTROL, align 4
  %51 = load i32, i32* @DPG_EN, align 4
  %52 = load i32, i32* @DPG_MODE, align 4
  %53 = load i32, i32* @TEST_PATTERN_MODE_COLORSQUARES_RGB, align 4
  %54 = load i32, i32* @DPG_DYNAMIC_RANGE, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @DPG_BIT_DEPTH, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @DPG_VRES, align 4
  %59 = load i32, i32* @DPG_HRES, align 4
  %60 = call i32 @REG_UPDATE_6(i32 %50, i32 %51, i32 1, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 6, i32 %59, i32 6)
  br label %227

61:                                               ; preds = %33, %33
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 132
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @TEST_PATTERN_MODE_VERTICALBARS, align 4
  br label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @TEST_PATTERN_MODE_HORIZONTALBARS, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %14, align 4
  switch i32 %70, label %74 [
    i32 129, label %71
    i32 128, label %72
    i32 130, label %73
  ]

71:                                               ; preds = %68
  store i32 6, i32* %18, align 4
  br label %75

72:                                               ; preds = %68
  store i32 8, i32* %18, align 4
  br label %75

73:                                               ; preds = %68
  store i32 10, i32* %18, align 4
  br label %75

74:                                               ; preds = %68
  store i32 8, i32* %18, align 4
  br label %75

75:                                               ; preds = %74, %73, %72, %71
  store i32 0, i32* %19, align 4
  br label %76

76:                                               ; preds = %98, %75
  %77 = load i32, i32* %19, align 4
  %78 = icmp slt i32 %77, 6
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [6 x i32], [6 x i32]* %20, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %18, align 4
  %86 = sub nsw i32 %84, %85
  %87 = ashr i32 %83, %86
  %88 = load i32, i32* %19, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i64 0, i64 %89
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* %18, align 4
  %92 = sub nsw i32 16, %91
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, %92
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %79
  %99 = load i32, i32* %19, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %19, align 4
  br label %76

101:                                              ; preds = %76
  %102 = load i32, i32* @DPG_COLOUR_R_CR, align 4
  %103 = load i32, i32* @DPG_COLOUR1_R_CR, align 4
  %104 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i64 0, i64 0
  %105 = load i32, i32* %104, align 16
  %106 = load i32, i32* @DPG_COLOUR0_R_CR, align 4
  %107 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i64 0, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @REG_SET_2(i32 %102, i32 0, i32 %103, i32 %105, i32 %106, i32 %108)
  %110 = load i32, i32* @DPG_COLOUR_G_Y, align 4
  %111 = load i32, i32* @DPG_COLOUR1_G_Y, align 4
  %112 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i64 0, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @DPG_COLOUR0_G_Y, align 4
  %115 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i64 0, i64 4
  %116 = load i32, i32* %115, align 16
  %117 = call i32 @REG_SET_2(i32 %110, i32 0, i32 %111, i32 %113, i32 %114, i32 %116)
  %118 = load i32, i32* @DPG_COLOUR_B_CB, align 4
  %119 = load i32, i32* @DPG_COLOUR1_B_CB, align 4
  %120 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i64 0, i64 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @DPG_COLOUR0_B_CB, align 4
  %123 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i64 0, i64 5
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @REG_SET_2(i32 %118, i32 0, i32 %119, i32 %121, i32 %122, i32 %124)
  %126 = load i32, i32* @DPG_CONTROL, align 4
  %127 = load i32, i32* @DPG_EN, align 4
  %128 = load i32, i32* @DPG_MODE, align 4
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* @DPG_DYNAMIC_RANGE, align 4
  %131 = load i32, i32* @DPG_BIT_DEPTH, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @DPG_VRES, align 4
  %134 = load i32, i32* @DPG_HRES, align 4
  %135 = call i32 @REG_UPDATE_6(i32 %126, i32 %127, i32 1, i32 %128, i32 %129, i32 %130, i32 0, i32 %131, i32 %132, i32 %133, i32 0, i32 %134, i32 0)
  br label %227

136:                                              ; preds = %33
  %137 = load i32, i32* %14, align 4
  %138 = icmp eq i32 %137, 130
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* @TEST_PATTERN_MODE_DUALRAMP_RGB, align 4
  br label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @TEST_PATTERN_MODE_SINGLERAMP_RGB, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %14, align 4
  switch i32 %145, label %149 [
    i32 129, label %146
    i32 128, label %147
    i32 130, label %148
  ]

146:                                              ; preds = %143
  store i32 6, i32* %18, align 4
  br label %150

147:                                              ; preds = %143
  store i32 8, i32* %18, align 4
  br label %150

148:                                              ; preds = %143
  store i32 10, i32* %18, align 4
  br label %150

149:                                              ; preds = %143
  store i32 8, i32* %18, align 4
  br label %150

150:                                              ; preds = %149, %148, %147, %146
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %18, align 4
  %153 = sub nsw i32 %151, %152
  store i32 %153, i32* %22, align 4
  %154 = load i32, i32* %14, align 4
  switch i32 %154, label %190 [
    i32 129, label %155
    i32 128, label %166
    i32 130, label %177
  ]

155:                                              ; preds = %150
  %156 = load i32, i32* @DPG_RAMP_CONTROL, align 4
  %157 = load i32, i32* @DPG_RAMP0_OFFSET, align 4
  %158 = load i32, i32* @DPG_INC0, align 4
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* @DPG_INC1, align 4
  %161 = call i32 @REG_SET_3(i32 %156, i32 0, i32 %157, i32 0, i32 %158, i32 %159, i32 %160, i32 0)
  %162 = load i32, i32* @DPG_CONTROL, align 4
  %163 = load i32, i32* @DPG_VRES, align 4
  %164 = load i32, i32* @DPG_HRES, align 4
  %165 = call i32 @REG_UPDATE_2(i32 %162, i32 %163, i32 6, i32 %164, i32 6)
  br label %191

166:                                              ; preds = %150
  %167 = load i32, i32* @DPG_RAMP_CONTROL, align 4
  %168 = load i32, i32* @DPG_RAMP0_OFFSET, align 4
  %169 = load i32, i32* @DPG_INC0, align 4
  %170 = load i32, i32* %22, align 4
  %171 = load i32, i32* @DPG_INC1, align 4
  %172 = call i32 @REG_SET_3(i32 %167, i32 0, i32 %168, i32 0, i32 %169, i32 %170, i32 %171, i32 0)
  %173 = load i32, i32* @DPG_CONTROL, align 4
  %174 = load i32, i32* @DPG_VRES, align 4
  %175 = load i32, i32* @DPG_HRES, align 4
  %176 = call i32 @REG_UPDATE_2(i32 %173, i32 %174, i32 6, i32 %175, i32 8)
  br label %191

177:                                              ; preds = %150
  %178 = load i32, i32* @DPG_RAMP_CONTROL, align 4
  %179 = load i32, i32* @DPG_RAMP0_OFFSET, align 4
  %180 = load i32, i32* @DPG_INC0, align 4
  %181 = load i32, i32* %22, align 4
  %182 = load i32, i32* @DPG_INC1, align 4
  %183 = load i32, i32* %22, align 4
  %184 = add nsw i32 %183, 2
  %185 = call i32 @REG_SET_3(i32 %178, i32 0, i32 %179, i32 24576, i32 %180, i32 %181, i32 %182, i32 %184)
  %186 = load i32, i32* @DPG_CONTROL, align 4
  %187 = load i32, i32* @DPG_VRES, align 4
  %188 = load i32, i32* @DPG_HRES, align 4
  %189 = call i32 @REG_UPDATE_2(i32 %186, i32 %187, i32 5, i32 %188, i32 8)
  br label %191

190:                                              ; preds = %150
  br label %191

191:                                              ; preds = %190, %177, %166, %155
  %192 = load i32, i32* @DPG_CONTROL, align 4
  %193 = load i32, i32* @DPG_EN, align 4
  %194 = load i32, i32* @DPG_MODE, align 4
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* @DPG_DYNAMIC_RANGE, align 4
  %197 = load i32, i32* @DPG_BIT_DEPTH, align 4
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @REG_UPDATE_4(i32 %192, i32 %193, i32 1, i32 %194, i32 %195, i32 %196, i32 0, i32 %197, i32 %198)
  br label %227

200:                                              ; preds = %33
  %201 = load i32, i32* @DPG_CONTROL, align 4
  %202 = call i32 @REG_WRITE(i32 %201, i32 0)
  %203 = load i32, i32* @DPG_COLOUR_R_CR, align 4
  %204 = call i32 @REG_WRITE(i32 %203, i32 0)
  %205 = load i32, i32* @DPG_COLOUR_G_Y, align 4
  %206 = call i32 @REG_WRITE(i32 %205, i32 0)
  %207 = load i32, i32* @DPG_COLOUR_B_CB, align 4
  %208 = call i32 @REG_WRITE(i32 %207, i32 0)
  %209 = load i32, i32* @DPG_RAMP_CONTROL, align 4
  %210 = call i32 @REG_WRITE(i32 %209, i32 0)
  br label %227

211:                                              ; preds = %33
  %212 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %7, align 8
  %213 = load %struct.tg_color*, %struct.tg_color** %10, align 8
  %214 = call i32 @opp2_dpg_set_blank_color(%struct.output_pixel_processor* %212, %struct.tg_color* %213)
  %215 = load i32, i32* @DPG_CONTROL, align 4
  %216 = load i32, i32* @DPG_EN, align 4
  %217 = load i32, i32* @DPG_MODE, align 4
  %218 = load i32, i32* @TEST_PATTERN_MODE_HORIZONTALBARS, align 4
  %219 = call i32 @REG_UPDATE_2(i32 %215, i32 %216, i32 1, i32 %217, i32 %218)
  %220 = load i32, i32* @DPG_DIMENSIONS, align 4
  %221 = load i32, i32* @DPG_ACTIVE_WIDTH, align 4
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* @DPG_ACTIVE_HEIGHT, align 4
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @REG_SET_2(i32 %220, i32 0, i32 %221, i32 %222, i32 %223, i32 %224)
  br label %227

226:                                              ; preds = %33
  br label %227

227:                                              ; preds = %226, %211, %200, %191, %101, %48
  ret void
}

declare dso_local %struct.dcn20_opp* @TO_DCN20_OPP(%struct.output_pixel_processor*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_6(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_3(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @opp2_dpg_set_blank_color(%struct.output_pixel_processor*, %struct.tg_color*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
