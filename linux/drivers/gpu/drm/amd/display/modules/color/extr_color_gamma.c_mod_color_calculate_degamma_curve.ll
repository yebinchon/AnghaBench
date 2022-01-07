; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_mod_color_calculate_degamma_curve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_mod_color_calculate_degamma_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.dc_transfer_func_distributed_points = type { i32, i32, i32, i64, i32*, i32*, i32* }
%struct.pwl_float_data_ex = type { i32, i32, i32 }

@TRANSFER_FUNCTION_UNITY = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_LINEAR = common dso_local global i32 0, align 4
@MAX_HW_POINTS = common dso_local global i64 0, align 8
@coordinates_x = common dso_local global %struct.TYPE_5__* null, align 8
@TRANSFER_FUNCTION_PQ = common dso_local global i32 0, align 4
@_EXTRA_POINTS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_SRGB = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_BT709 = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_GAMMA22 = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_GAMMA24 = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_GAMMA26 = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_HLG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_color_calculate_degamma_curve(i32 %0, %struct.dc_transfer_func_distributed_points* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_transfer_func_distributed_points*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pwl_float_data_ex*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.dc_transfer_func_distributed_points* %1, %struct.dc_transfer_func_distributed_points** %4, align 8
  store i32 0, i32* %6, align 4
  store %struct.pwl_float_data_ex* null, %struct.pwl_float_data_ex** %7, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @TRANSFER_FUNCTION_UNITY, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @TRANSFER_FUNCTION_LINEAR, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %11, %2
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %51, %15
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @MAX_HW_POINTS, align 8
  %19 = icmp ule i64 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coordinates_x, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %27 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %25, i32* %30, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coordinates_x, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %37 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %35, i32* %40, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coordinates_x, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %47 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %45, i32* %50, align 4
  br label %51

51:                                               ; preds = %20
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %16

54:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %252

55:                                               ; preds = %11
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @TRANSFER_FUNCTION_PQ, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %114

59:                                               ; preds = %55
  %60 = load i64, i64* @MAX_HW_POINTS, align 8
  %61 = load i64, i64* @_EXTRA_POINTS, align 8
  %62 = add i64 %60, %61
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.pwl_float_data_ex* @kvcalloc(i64 %62, i32 12, i32 %63)
  store %struct.pwl_float_data_ex* %64, %struct.pwl_float_data_ex** %7, align 8
  %65 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %66 = icmp ne %struct.pwl_float_data_ex* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %261

68:                                               ; preds = %59
  %69 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %70 = load i64, i64* @MAX_HW_POINTS, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coordinates_x, align 8
  %72 = call i32 @build_de_pq(%struct.pwl_float_data_ex* %69, i64 %70, %struct.TYPE_5__* %71)
  store i64 0, i64* %5, align 8
  br label %73

73:                                               ; preds = %108, %68
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @MAX_HW_POINTS, align 8
  %76 = icmp ule i64 %74, %75
  br i1 %76, label %77, label %111

77:                                               ; preds = %73
  %78 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %78, i64 %79
  %81 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %84 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %82, i32* %87, align 4
  %88 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %89 = load i64, i64* %5, align 8
  %90 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %88, i64 %89
  %91 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %94 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* %5, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 %92, i32* %97, align 4
  %98 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %99 = load i64, i64* %5, align 8
  %100 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %98, i64 %99
  %101 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %104 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %5, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %102, i32* %107, align 4
  br label %108

108:                                              ; preds = %77
  %109 = load i64, i64* %5, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %5, align 8
  br label %73

111:                                              ; preds = %73
  store i32 1, i32* %6, align 4
  %112 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %113 = call i32 @kvfree(%struct.pwl_float_data_ex* %112)
  br label %251

114:                                              ; preds = %55
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @TRANSFER_FUNCTION_SRGB, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %134, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @TRANSFER_FUNCTION_BT709, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %134, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @TRANSFER_FUNCTION_GAMMA22, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @TRANSFER_FUNCTION_GAMMA24, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @TRANSFER_FUNCTION_GAMMA26, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %190

134:                                              ; preds = %130, %126, %122, %118, %114
  %135 = load i64, i64* @MAX_HW_POINTS, align 8
  %136 = load i64, i64* @_EXTRA_POINTS, align 8
  %137 = add i64 %135, %136
  %138 = load i32, i32* @GFP_KERNEL, align 4
  %139 = call %struct.pwl_float_data_ex* @kvcalloc(i64 %137, i32 12, i32 %138)
  store %struct.pwl_float_data_ex* %139, %struct.pwl_float_data_ex** %7, align 8
  %140 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %141 = icmp ne %struct.pwl_float_data_ex* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %134
  br label %261

143:                                              ; preds = %134
  %144 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %145 = load i64, i64* @MAX_HW_POINTS, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coordinates_x, align 8
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @build_degamma(%struct.pwl_float_data_ex* %144, i64 %145, %struct.TYPE_5__* %146, i32 %147)
  store i64 0, i64* %5, align 8
  br label %149

149:                                              ; preds = %184, %143
  %150 = load i64, i64* %5, align 8
  %151 = load i64, i64* @MAX_HW_POINTS, align 8
  %152 = icmp ule i64 %150, %151
  br i1 %152, label %153, label %187

153:                                              ; preds = %149
  %154 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %155 = load i64, i64* %5, align 8
  %156 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %154, i64 %155
  %157 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %160 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %159, i32 0, i32 6
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* %5, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32 %158, i32* %163, align 4
  %164 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %165 = load i64, i64* %5, align 8
  %166 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %164, i64 %165
  %167 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %170 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %169, i32 0, i32 5
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %5, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32 %168, i32* %173, align 4
  %174 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %175 = load i64, i64* %5, align 8
  %176 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %174, i64 %175
  %177 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %180 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %179, i32 0, i32 4
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* %5, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32 %178, i32* %183, align 4
  br label %184

184:                                              ; preds = %153
  %185 = load i64, i64* %5, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %5, align 8
  br label %149

187:                                              ; preds = %149
  store i32 1, i32* %6, align 4
  %188 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %189 = call i32 @kvfree(%struct.pwl_float_data_ex* %188)
  br label %250

190:                                              ; preds = %130
  %191 = load i32, i32* %3, align 4
  %192 = load i32, i32* @TRANSFER_FUNCTION_HLG, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %249

194:                                              ; preds = %190
  %195 = load i64, i64* @MAX_HW_POINTS, align 8
  %196 = load i64, i64* @_EXTRA_POINTS, align 8
  %197 = add i64 %195, %196
  %198 = load i32, i32* @GFP_KERNEL, align 4
  %199 = call %struct.pwl_float_data_ex* @kvcalloc(i64 %197, i32 12, i32 %198)
  store %struct.pwl_float_data_ex* %199, %struct.pwl_float_data_ex** %7, align 8
  %200 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %201 = icmp ne %struct.pwl_float_data_ex* %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %194
  br label %261

203:                                              ; preds = %194
  %204 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %205 = load i64, i64* @MAX_HW_POINTS, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coordinates_x, align 8
  %207 = call i32 @build_hlg_degamma(%struct.pwl_float_data_ex* %204, i64 %205, %struct.TYPE_5__* %206, i32 80, i32 1000)
  store i64 0, i64* %5, align 8
  br label %208

208:                                              ; preds = %243, %203
  %209 = load i64, i64* %5, align 8
  %210 = load i64, i64* @MAX_HW_POINTS, align 8
  %211 = icmp ule i64 %209, %210
  br i1 %211, label %212, label %246

212:                                              ; preds = %208
  %213 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %214 = load i64, i64* %5, align 8
  %215 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %213, i64 %214
  %216 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %219 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %218, i32 0, i32 6
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* %5, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32 %217, i32* %222, align 4
  %223 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %224 = load i64, i64* %5, align 8
  %225 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %223, i64 %224
  %226 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %229 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %228, i32 0, i32 5
  %230 = load i32*, i32** %229, align 8
  %231 = load i64, i64* %5, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32 %227, i32* %232, align 4
  %233 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %234 = load i64, i64* %5, align 8
  %235 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %233, i64 %234
  %236 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %239 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  %241 = load i64, i64* %5, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  store i32 %237, i32* %242, align 4
  br label %243

243:                                              ; preds = %212
  %244 = load i64, i64* %5, align 8
  %245 = add i64 %244, 1
  store i64 %245, i64* %5, align 8
  br label %208

246:                                              ; preds = %208
  store i32 1, i32* %6, align 4
  %247 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %248 = call i32 @kvfree(%struct.pwl_float_data_ex* %247)
  br label %249

249:                                              ; preds = %246, %190
  br label %250

250:                                              ; preds = %249, %187
  br label %251

251:                                              ; preds = %250, %111
  br label %252

252:                                              ; preds = %251, %54
  %253 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %254 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %253, i32 0, i32 3
  store i64 0, i64* %254, align 8
  %255 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %256 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %255, i32 0, i32 0
  store i32 1, i32* %256, align 8
  %257 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %258 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %257, i32 0, i32 1
  store i32 1, i32* %258, align 4
  %259 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %4, align 8
  %260 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %259, i32 0, i32 2
  store i32 1, i32* %260, align 8
  br label %261

261:                                              ; preds = %252, %202, %142, %67
  %262 = load i32, i32* %6, align 4
  ret i32 %262
}

declare dso_local %struct.pwl_float_data_ex* @kvcalloc(i64, i32, i32) #1

declare dso_local i32 @build_de_pq(%struct.pwl_float_data_ex*, i64, %struct.TYPE_5__*) #1

declare dso_local i32 @kvfree(%struct.pwl_float_data_ex*) #1

declare dso_local i32 @build_degamma(%struct.pwl_float_data_ex*, i64, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @build_hlg_degamma(%struct.pwl_float_data_ex*, i64, %struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
