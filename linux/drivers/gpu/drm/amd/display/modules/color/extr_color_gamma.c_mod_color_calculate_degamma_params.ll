; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_mod_color_calculate_degamma_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_mod_color_calculate_degamma_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.dc_transfer_func = type { i64, i64, %struct.dc_transfer_func_distributed_points }
%struct.dc_transfer_func_distributed_points = type { i32, i32, i32, i64 }
%struct.dc_gamma = type { i64, i64 }
%struct.dividers = type { i8*, i32, i8* }
%struct.pwl_float_data = type { i32, i32, i32 }
%struct.pwl_float_data_ex = type { i32, i32, i32 }
%struct.gamma_pixel = type { i32, i32, i32 }
%struct.pixel_gamma_point = type { i32, i32, i32 }

@TRANSFER_FUNCTION_SRGB = common dso_local global i64 0, align 8
@TF_TYPE_BYPASS = common dso_local global i64 0, align 8
@TF_TYPE_PREDEFINED = common dso_local global i64 0, align 8
@TRANSFER_FUNCTION_LINEAR = common dso_local global i64 0, align 8
@TF_TYPE_DISTRIBUTED_POINTS = common dso_local global i64 0, align 8
@GAMMA_RGB_256 = common dso_local global i64 0, align 8
@_EXTRA_POINTS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_HW_POINTS = common dso_local global i64 0, align 8
@TRANSFER_FUNCTION_PQ = common dso_local global i32 0, align 4
@coordinates_x = common dso_local global %struct.TYPE_6__* null, align 8
@TRANSFER_FUNCTION_BT709 = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_GAMMA22 = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_GAMMA24 = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_GAMMA26 = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_HLG = common dso_local global i32 0, align 4
@GAMMA_CUSTOM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_color_calculate_degamma_params(%struct.dc_transfer_func* %0, %struct.dc_gamma* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_transfer_func*, align 8
  %6 = alloca %struct.dc_gamma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_transfer_func_distributed_points*, align 8
  %9 = alloca %struct.dividers, align 8
  %10 = alloca %struct.pwl_float_data*, align 8
  %11 = alloca %struct.pwl_float_data_ex*, align 8
  %12 = alloca %struct.gamma_pixel*, align 8
  %13 = alloca %struct.pixel_gamma_point*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.dc_transfer_func* %0, %struct.dc_transfer_func** %5, align 8
  store %struct.dc_gamma* %1, %struct.dc_gamma** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %5, align 8
  %18 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %17, i32 0, i32 2
  store %struct.dc_transfer_func_distributed_points* %18, %struct.dc_transfer_func_distributed_points** %8, align 8
  store %struct.pwl_float_data* null, %struct.pwl_float_data** %10, align 8
  store %struct.pwl_float_data_ex* null, %struct.pwl_float_data_ex** %11, align 8
  store %struct.gamma_pixel* null, %struct.gamma_pixel** %12, align 8
  store %struct.pixel_gamma_point* null, %struct.pixel_gamma_point** %13, align 8
  %19 = load i64, i64* @TRANSFER_FUNCTION_SRGB, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %21 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %5, align 8
  %22 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TF_TYPE_BYPASS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %282

27:                                               ; preds = %3
  %28 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %5, align 8
  %29 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TF_TYPE_PREDEFINED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %5, align 8
  %35 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TRANSFER_FUNCTION_SRGB, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %5, align 8
  %41 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TRANSFER_FUNCTION_LINEAR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39, %33
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %282

49:                                               ; preds = %45, %39, %27
  %50 = load i64, i64* @TF_TYPE_DISTRIBUTED_POINTS, align 8
  %51 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %5, align 8
  %52 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %105

55:                                               ; preds = %49
  %56 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %57 = icmp ne %struct.dc_gamma* %56, null
  br i1 %57, label %58, label %105

58:                                               ; preds = %55
  %59 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %60 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @GAMMA_RGB_256, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %105

64:                                               ; preds = %58
  %65 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %66 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @_EXTRA_POINTS, align 8
  %69 = add i64 %67, %68
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.pwl_float_data_ex* @kvcalloc(i64 %69, i32 12, i32 %70)
  %72 = bitcast %struct.pwl_float_data_ex* %71 to %struct.pwl_float_data*
  store %struct.pwl_float_data* %72, %struct.pwl_float_data** %10, align 8
  %73 = load %struct.pwl_float_data*, %struct.pwl_float_data** %10, align 8
  %74 = icmp ne %struct.pwl_float_data* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %64
  br label %280

76:                                               ; preds = %64
  %77 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %78 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @_EXTRA_POINTS, align 8
  %81 = add i64 %79, %80
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.pwl_float_data_ex* @kvcalloc(i64 %81, i32 12, i32 %82)
  %84 = bitcast %struct.pwl_float_data_ex* %83 to %struct.gamma_pixel*
  store %struct.gamma_pixel* %84, %struct.gamma_pixel** %12, align 8
  %85 = load %struct.gamma_pixel*, %struct.gamma_pixel** %12, align 8
  %86 = icmp ne %struct.gamma_pixel* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  br label %276

88:                                               ; preds = %76
  %89 = call i8* @dc_fixpt_from_fraction(i32 3, i32 2)
  %90 = getelementptr inbounds %struct.dividers, %struct.dividers* %9, i32 0, i32 2
  store i8* %89, i8** %90, align 8
  %91 = call i32 @dc_fixpt_from_int(i32 2)
  %92 = getelementptr inbounds %struct.dividers, %struct.dividers* %9, i32 0, i32 1
  store i32 %91, i32* %92, align 8
  %93 = call i8* @dc_fixpt_from_fraction(i32 5, i32 2)
  %94 = getelementptr inbounds %struct.dividers, %struct.dividers* %9, i32 0, i32 0
  store i8* %93, i8** %94, align 8
  %95 = load %struct.gamma_pixel*, %struct.gamma_pixel** %12, align 8
  %96 = bitcast %struct.gamma_pixel* %95 to %struct.pwl_float_data_ex*
  %97 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %98 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @build_evenly_distributed_points(%struct.pwl_float_data_ex* %96, i64 %99, %struct.dividers* byval(%struct.dividers) align 8 %9)
  %101 = load %struct.pwl_float_data*, %struct.pwl_float_data** %10, align 8
  %102 = bitcast %struct.pwl_float_data* %101 to %struct.pwl_float_data_ex*
  %103 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %104 = call i32 @scale_gamma(%struct.pwl_float_data_ex* %102, %struct.dc_gamma* %103, %struct.dividers* byval(%struct.dividers) align 8 %9)
  br label %105

105:                                              ; preds = %88, %58, %55, %49
  %106 = load i64, i64* @MAX_HW_POINTS, align 8
  %107 = load i64, i64* @_EXTRA_POINTS, align 8
  %108 = add i64 %106, %107
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call %struct.pwl_float_data_ex* @kvcalloc(i64 %108, i32 12, i32 %109)
  store %struct.pwl_float_data_ex* %110, %struct.pwl_float_data_ex** %11, align 8
  %111 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %11, align 8
  %112 = icmp ne %struct.pwl_float_data_ex* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %105
  br label %272

114:                                              ; preds = %105
  %115 = load i64, i64* @MAX_HW_POINTS, align 8
  %116 = load i64, i64* @_EXTRA_POINTS, align 8
  %117 = add i64 %115, %116
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call %struct.pwl_float_data_ex* @kvcalloc(i64 %117, i32 12, i32 %118)
  %120 = bitcast %struct.pwl_float_data_ex* %119 to %struct.pixel_gamma_point*
  store %struct.pixel_gamma_point* %120, %struct.pixel_gamma_point** %13, align 8
  %121 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %13, align 8
  %122 = icmp ne %struct.pixel_gamma_point* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %114
  br label %269

124:                                              ; preds = %114
  %125 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %5, align 8
  %126 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @TRANSFER_FUNCTION_PQ, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %11, align 8
  %134 = load i64, i64* @MAX_HW_POINTS, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coordinates_x, align 8
  %136 = call i32 @build_de_pq(%struct.pwl_float_data_ex* %133, i64 %134, %struct.TYPE_6__* %135)
  br label %219

137:                                              ; preds = %124
  %138 = load i32, i32* %14, align 4
  %139 = zext i32 %138 to i64
  %140 = load i64, i64* @TRANSFER_FUNCTION_SRGB, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %158, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @TRANSFER_FUNCTION_BT709, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %158, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* @TRANSFER_FUNCTION_GAMMA22, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @TRANSFER_FUNCTION_GAMMA24, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* @TRANSFER_FUNCTION_GAMMA26, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %154, %150, %146, %142, %137
  %159 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %11, align 8
  %160 = load i64, i64* @MAX_HW_POINTS, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coordinates_x, align 8
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @build_degamma(%struct.pwl_float_data_ex* %159, i64 %160, %struct.TYPE_6__* %161, i32 %162)
  br label %218

164:                                              ; preds = %154
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* @TRANSFER_FUNCTION_HLG, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %11, align 8
  %170 = load i64, i64* @MAX_HW_POINTS, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coordinates_x, align 8
  %172 = call i32 @build_hlg_degamma(%struct.pwl_float_data_ex* %169, i64 %170, %struct.TYPE_6__* %171, i32 80, i32 1000)
  br label %217

173:                                              ; preds = %164
  %174 = load i32, i32* %14, align 4
  %175 = zext i32 %174 to i64
  %176 = load i64, i64* @TRANSFER_FUNCTION_LINEAR, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %215

178:                                              ; preds = %173
  store i64 0, i64* %15, align 8
  br label %179

179:                                              ; preds = %184, %178
  %180 = load i64, i64* %15, align 8
  %181 = load i64, i64* @MAX_HW_POINTS, align 8
  %182 = add i64 %181, 1
  %183 = icmp ne i64 %180, %182
  br i1 %183, label %184, label %214

184:                                              ; preds = %179
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coordinates_x, align 8
  %186 = load i64, i64* %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %11, align 8
  %191 = load i64, i64* %15, align 8
  %192 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %190, i64 %191
  %193 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %192, i32 0, i32 0
  store i32 %189, i32* %193, align 4
  %194 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %11, align 8
  %195 = load i64, i64* %15, align 8
  %196 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %194, i64 %195
  %197 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %11, align 8
  %200 = load i64, i64* %15, align 8
  %201 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %199, i64 %200
  %202 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %201, i32 0, i32 2
  store i32 %198, i32* %202, align 4
  %203 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %11, align 8
  %204 = load i64, i64* %15, align 8
  %205 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %203, i64 %204
  %206 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %11, align 8
  %209 = load i64, i64* %15, align 8
  %210 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %208, i64 %209
  %211 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %210, i32 0, i32 1
  store i32 %207, i32* %211, align 4
  %212 = load i64, i64* %15, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %15, align 8
  br label %179

214:                                              ; preds = %179
  br label %216

215:                                              ; preds = %173
  br label %265

216:                                              ; preds = %214
  br label %217

217:                                              ; preds = %216, %168
  br label %218

218:                                              ; preds = %217, %158
  br label %219

219:                                              ; preds = %218, %132
  %220 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %8, align 8
  %221 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %220, i32 0, i32 3
  store i64 0, i64* %221, align 8
  %222 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %8, align 8
  %223 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %222, i32 0, i32 0
  store i32 1, i32* %223, align 8
  %224 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %8, align 8
  %225 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %224, i32 0, i32 1
  store i32 1, i32* %225, align 4
  %226 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %8, align 8
  %227 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %226, i32 0, i32 2
  store i32 1, i32* %227, align 8
  %228 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %229 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %13, align 8
  %230 = bitcast %struct.pixel_gamma_point* %229 to %struct.pwl_float_data_ex*
  %231 = load %struct.pwl_float_data*, %struct.pwl_float_data** %10, align 8
  %232 = bitcast %struct.pwl_float_data* %231 to %struct.pwl_float_data_ex*
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** @coordinates_x, align 8
  %234 = load %struct.gamma_pixel*, %struct.gamma_pixel** %12, align 8
  %235 = bitcast %struct.gamma_pixel* %234 to %struct.pwl_float_data_ex*
  %236 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %11, align 8
  %237 = load i64, i64* @MAX_HW_POINTS, align 8
  %238 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %8, align 8
  %239 = load i32, i32* %7, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %219
  %242 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %243 = icmp ne %struct.dc_gamma* %242, null
  br i1 %243, label %244, label %250

244:                                              ; preds = %241
  %245 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %246 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @GAMMA_RGB_256, align 8
  %249 = icmp eq i64 %247, %248
  br label %250

250:                                              ; preds = %244, %241, %219
  %251 = phi i1 [ false, %241 ], [ false, %219 ], [ %249, %244 ]
  %252 = zext i1 %251 to i32
  %253 = call i32 @map_regamma_hw_to_x_user(%struct.dc_gamma* %228, %struct.pwl_float_data_ex* %230, %struct.pwl_float_data_ex* %232, %struct.TYPE_6__* %233, %struct.pwl_float_data_ex* %235, %struct.pwl_float_data_ex* %236, i64 %237, %struct.dc_transfer_func_distributed_points* %238, i32 %252)
  %254 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %255 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @GAMMA_CUSTOM, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %264

259:                                              ; preds = %250
  %260 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %261 = load i64, i64* @MAX_HW_POINTS, align 8
  %262 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %8, align 8
  %263 = call i32 @apply_lut_1d(%struct.dc_gamma* %260, i64 %261, %struct.dc_transfer_func_distributed_points* %262)
  br label %264

264:                                              ; preds = %259, %250
  store i32 1, i32* %16, align 4
  br label %265

265:                                              ; preds = %264, %215
  %266 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %13, align 8
  %267 = bitcast %struct.pixel_gamma_point* %266 to %struct.pwl_float_data_ex*
  %268 = call i32 @kvfree(%struct.pwl_float_data_ex* %267)
  br label %269

269:                                              ; preds = %265, %123
  %270 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %11, align 8
  %271 = call i32 @kvfree(%struct.pwl_float_data_ex* %270)
  br label %272

272:                                              ; preds = %269, %113
  %273 = load %struct.gamma_pixel*, %struct.gamma_pixel** %12, align 8
  %274 = bitcast %struct.gamma_pixel* %273 to %struct.pwl_float_data_ex*
  %275 = call i32 @kvfree(%struct.pwl_float_data_ex* %274)
  br label %276

276:                                              ; preds = %272, %87
  %277 = load %struct.pwl_float_data*, %struct.pwl_float_data** %10, align 8
  %278 = bitcast %struct.pwl_float_data* %277 to %struct.pwl_float_data_ex*
  %279 = call i32 @kvfree(%struct.pwl_float_data_ex* %278)
  br label %280

280:                                              ; preds = %276, %75
  %281 = load i32, i32* %16, align 4
  store i32 %281, i32* %4, align 4
  br label %282

282:                                              ; preds = %280, %48, %26
  %283 = load i32, i32* %4, align 4
  ret i32 %283
}

declare dso_local %struct.pwl_float_data_ex* @kvcalloc(i64, i32, i32) #1

declare dso_local i8* @dc_fixpt_from_fraction(i32, i32) #1

declare dso_local i32 @dc_fixpt_from_int(i32) #1

declare dso_local i32 @build_evenly_distributed_points(%struct.pwl_float_data_ex*, i64, %struct.dividers* byval(%struct.dividers) align 8) #1

declare dso_local i32 @scale_gamma(%struct.pwl_float_data_ex*, %struct.dc_gamma*, %struct.dividers* byval(%struct.dividers) align 8) #1

declare dso_local i32 @build_de_pq(%struct.pwl_float_data_ex*, i64, %struct.TYPE_6__*) #1

declare dso_local i32 @build_degamma(%struct.pwl_float_data_ex*, i64, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @build_hlg_degamma(%struct.pwl_float_data_ex*, i64, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @map_regamma_hw_to_x_user(%struct.dc_gamma*, %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex*, %struct.TYPE_6__*, %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex*, i64, %struct.dc_transfer_func_distributed_points*, i32) #1

declare dso_local i32 @apply_lut_1d(%struct.dc_gamma*, i64, %struct.dc_transfer_func_distributed_points*) #1

declare dso_local i32 @kvfree(%struct.pwl_float_data_ex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
