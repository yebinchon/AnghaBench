; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_scl_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_scl_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_dpp = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32*, i32*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.scaler_data = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@DSCL_2TAP_CONTROL = common dso_local global i32 0, align 4
@SCL_H_2TAP_HARDCODE_COEF_EN = common dso_local global i32 0, align 4
@SCL_H_2TAP_SHARP_EN = common dso_local global i32 0, align 4
@SCL_H_2TAP_SHARP_FACTOR = common dso_local global i32 0, align 4
@SCL_V_2TAP_HARDCODE_COEF_EN = common dso_local global i32 0, align 4
@SCL_V_2TAP_SHARP_EN = common dso_local global i32 0, align 4
@SCL_V_2TAP_SHARP_FACTOR = common dso_local global i32 0, align 4
@SCL_MODE = common dso_local global i32 0, align 4
@SCL_COEF_LUMA_HORZ_FILTER = common dso_local global i32 0, align 4
@SCL_COEF_LUMA_VERT_FILTER = common dso_local global i32 0, align 4
@SCL_COEF_CHROMA_HORZ_FILTER = common dso_local global i32 0, align 4
@SCL_COEF_CHROMA_VERT_FILTER = common dso_local global i32 0, align 4
@SCL_COEF_RAM_SELECT = common dso_local global i32 0, align 4
@SCL_CHROMA_COEF_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_dpp*, %struct.scaler_data*, i32)* @dpp1_dscl_set_scl_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp1_dscl_set_scl_filter(%struct.dcn10_dpp* %0, %struct.scaler_data* %1, i32 %2) #0 {
  %4 = alloca %struct.dcn10_dpp*, align 8
  %5 = alloca %struct.scaler_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.dcn10_dpp* %0, %struct.dcn10_dpp** %4, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %21 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %25 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %28 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %29 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %53

33:                                               ; preds = %3
  %34 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %35 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %41 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %47 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 1
  br label %51

51:                                               ; preds = %45, %39
  %52 = phi i1 [ false, %39 ], [ %50, %45 ]
  br label %53

53:                                               ; preds = %51, %33, %3
  %54 = phi i1 [ false, %33 ], [ false, %3 ], [ %52, %51 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %57 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 3
  br i1 %60, label %61, label %81

61:                                               ; preds = %53
  %62 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %63 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 3
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %69 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %75 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 1
  br label %79

79:                                               ; preds = %73, %67
  %80 = phi i1 [ false, %67 ], [ %78, %73 ]
  br label %81

81:                                               ; preds = %79, %61, %53
  %82 = phi i1 [ false, %61 ], [ false, %53 ], [ %80, %79 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %86, %81
  %90 = phi i1 [ false, %81 ], [ %88, %86 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i64, i64* %12, align 8
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %94, %89
  %98 = phi i1 [ false, %89 ], [ %96, %94 ]
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* @DSCL_2TAP_CONTROL, align 4
  %101 = load i32, i32* @SCL_H_2TAP_HARDCODE_COEF_EN, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @SCL_H_2TAP_SHARP_EN, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @SCL_H_2TAP_SHARP_FACTOR, align 4
  %106 = load i64, i64* %11, align 8
  %107 = load i32, i32* @SCL_V_2TAP_HARDCODE_COEF_EN, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @SCL_V_2TAP_SHARP_EN, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @SCL_V_2TAP_SHARP_FACTOR, align 4
  %112 = load i64, i64* %12, align 8
  %113 = call i32 @REG_UPDATE_6(i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i64 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i64 %112)
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %97
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %311, label %119

119:                                              ; preds = %116, %97
  store i32 0, i32* %18, align 4
  %120 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %121 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %125 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32* @dpp1_dscl_get_filter_coeffs_64p(i32 %123, i32 %127)
  store i32* %128, i32** %14, align 8
  %129 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %130 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %134 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32* @dpp1_dscl_get_filter_coeffs_64p(i32 %132, i32 %136)
  store i32* %137, i32** %15, align 8
  %138 = load i32*, i32** %14, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %119
  %141 = load i32*, i32** %14, align 8
  %142 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %143 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %142, i32 0, i32 5
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %141, %144
  br i1 %145, label %157, label %146

146:                                              ; preds = %140, %119
  %147 = load i32*, i32** %15, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load i32*, i32** %15, align 8
  %151 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %152 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %150, %153
  br label %155

155:                                              ; preds = %149, %146
  %156 = phi i1 [ false, %146 ], [ %154, %149 ]
  br label %157

157:                                              ; preds = %155, %140
  %158 = phi i1 [ true, %140 ], [ %156, %155 ]
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %18, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %206

162:                                              ; preds = %157
  %163 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %164 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %168 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32* @dpp1_dscl_get_filter_coeffs_64p(i32 %166, i32 %170)
  store i32* %171, i32** %16, align 8
  %172 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %173 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %177 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32* @dpp1_dscl_get_filter_coeffs_64p(i32 %175, i32 %179)
  store i32* %180, i32** %17, align 8
  %181 = load i32, i32* %18, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %203, label %183

183:                                              ; preds = %162
  %184 = load i32*, i32** %16, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %192

186:                                              ; preds = %183
  %187 = load i32*, i32** %16, align 8
  %188 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %189 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = icmp ne i32* %187, %190
  br i1 %191, label %203, label %192

192:                                              ; preds = %186, %183
  %193 = load i32*, i32** %17, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load i32*, i32** %17, align 8
  %197 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %198 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = icmp ne i32* %196, %199
  br label %201

201:                                              ; preds = %195, %192
  %202 = phi i1 [ false, %192 ], [ %200, %195 ]
  br label %203

203:                                              ; preds = %201, %186, %162
  %204 = phi i1 [ true, %186 ], [ true, %162 ], [ %202, %201 ]
  %205 = zext i1 %204 to i32
  store i32 %205, i32* %18, align 4
  br label %206

206:                                              ; preds = %203, %157
  %207 = load i32, i32* %18, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %310

209:                                              ; preds = %206
  %210 = load i32, i32* @SCL_MODE, align 4
  %211 = call i64 @REG_READ(i32 %210)
  store i64 %211, i64* %19, align 8
  %212 = load i32, i32* %7, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %226, label %214

214:                                              ; preds = %209
  %215 = load i32*, i32** %14, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %226

217:                                              ; preds = %214
  %218 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %219 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %220 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @SCL_COEF_LUMA_HORZ_FILTER, align 4
  %224 = load i32*, i32** %14, align 8
  %225 = call i32 @dpp1_dscl_set_scaler_filter(%struct.dcn10_dpp* %218, i32 %222, i32 %223, i32* %224)
  br label %226

226:                                              ; preds = %217, %214, %209
  %227 = load i32*, i32** %14, align 8
  %228 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %229 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %228, i32 0, i32 5
  store i32* %227, i32** %229, align 8
  %230 = load i32, i32* %8, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %244, label %232

232:                                              ; preds = %226
  %233 = load i32*, i32** %15, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %244

235:                                              ; preds = %232
  %236 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %237 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %238 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @SCL_COEF_LUMA_VERT_FILTER, align 4
  %242 = load i32*, i32** %15, align 8
  %243 = call i32 @dpp1_dscl_set_scaler_filter(%struct.dcn10_dpp* %236, i32 %240, i32 %241, i32* %242)
  br label %244

244:                                              ; preds = %235, %232, %226
  %245 = load i32*, i32** %15, align 8
  %246 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %247 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %246, i32 0, i32 4
  store i32* %245, i32** %247, align 8
  %248 = load i32, i32* %6, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %281

250:                                              ; preds = %244
  %251 = load i32, i32* %7, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %265, label %253

253:                                              ; preds = %250
  %254 = load i32*, i32** %16, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %265

256:                                              ; preds = %253
  %257 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %258 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %259 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @SCL_COEF_CHROMA_HORZ_FILTER, align 4
  %263 = load i32*, i32** %16, align 8
  %264 = call i32 @dpp1_dscl_set_scaler_filter(%struct.dcn10_dpp* %257, i32 %261, i32 %262, i32* %263)
  br label %265

265:                                              ; preds = %256, %253, %250
  %266 = load i32, i32* %8, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %280, label %268

268:                                              ; preds = %265
  %269 = load i32*, i32** %17, align 8
  %270 = icmp ne i32* %269, null
  br i1 %270, label %271, label %280

271:                                              ; preds = %268
  %272 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %273 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %274 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @SCL_COEF_CHROMA_VERT_FILTER, align 4
  %278 = load i32*, i32** %17, align 8
  %279 = call i32 @dpp1_dscl_set_scaler_filter(%struct.dcn10_dpp* %272, i32 %276, i32 %277, i32* %278)
  br label %280

280:                                              ; preds = %271, %268, %265
  br label %281

281:                                              ; preds = %280, %244
  %282 = load i32*, i32** %16, align 8
  %283 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %284 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %283, i32 0, i32 3
  store i32* %282, i32** %284, align 8
  %285 = load i32*, i32** %17, align 8
  %286 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %287 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %286, i32 0, i32 2
  store i32* %285, i32** %287, align 8
  %288 = load i64, i64* %19, align 8
  %289 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %290 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %289, i32 0, i32 1
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %295 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %294, i32 0, i32 0
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @get_reg_field_value_ex(i64 %288, i32 %293, i32 %298)
  store i32 %299, i32* %13, align 4
  %300 = load i32, i32* @SCL_MODE, align 4
  %301 = load i64, i64* %19, align 8
  %302 = load i32, i32* @SCL_COEF_RAM_SELECT, align 4
  %303 = load i32, i32* %13, align 4
  %304 = icmp ne i32 %303, 0
  %305 = xor i1 %304, true
  %306 = zext i1 %305 to i32
  %307 = load i32, i32* @SCL_CHROMA_COEF_MODE, align 4
  %308 = load i32, i32* %6, align 4
  %309 = call i32 @REG_SET_2(i32 %300, i64 %301, i32 %302, i32 %306, i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %281, %206
  br label %311

311:                                              ; preds = %310, %116
  ret void
}

declare dso_local i32 @REG_UPDATE_6(i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32* @dpp1_dscl_get_filter_coeffs_64p(i32, i32) #1

declare dso_local i64 @REG_READ(i32) #1

declare dso_local i32 @dpp1_dscl_set_scaler_filter(%struct.dcn10_dpp*, i32, i32, i32*) #1

declare dso_local i32 @get_reg_field_value_ex(i64, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
