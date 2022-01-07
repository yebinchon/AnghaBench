; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_mod_color_calculate_curve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_mod_color_calculate_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.dc_transfer_func_distributed_points = type { i32, i32, i32, i32, i32*, i32*, i32* }
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
define dso_local i32 @mod_color_calculate_curve(i32 %0, %struct.dc_transfer_func_distributed_points* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_transfer_func_distributed_points*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pwl_float_data_ex*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.dc_transfer_func_distributed_points* %1, %struct.dc_transfer_func_distributed_points** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store %struct.pwl_float_data_ex* null, %struct.pwl_float_data_ex** %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @TRANSFER_FUNCTION_UNITY, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @TRANSFER_FUNCTION_LINEAR, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %13, %3
  %18 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %19 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %21 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %23 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %22, i32 0, i32 2
  store i32 1, i32* %23, align 8
  %24 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %25 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %24, i32 0, i32 3
  store i32 1, i32* %25, align 4
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %61, %17
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @MAX_HW_POINTS, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coordinates_x, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %37 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %35, i32* %40, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coordinates_x, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %47 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coordinates_x, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %57 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %55, i32* %60, align 4
  br label %61

61:                                               ; preds = %30
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %26

64:                                               ; preds = %26
  store i32 1, i32* %8, align 4
  br label %287

65:                                               ; preds = %13
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @TRANSFER_FUNCTION_PQ, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %133

69:                                               ; preds = %65
  %70 = load i64, i64* @MAX_HW_POINTS, align 8
  %71 = load i64, i64* @_EXTRA_POINTS, align 8
  %72 = add i64 %70, %71
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.pwl_float_data_ex* @kvcalloc(i64 %72, i32 12, i32 %73)
  store %struct.pwl_float_data_ex* %74, %struct.pwl_float_data_ex** %9, align 8
  %75 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %76 = icmp ne %struct.pwl_float_data_ex* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %288

78:                                               ; preds = %69
  %79 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %80 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %79, i32 0, i32 0
  store i32 7, i32* %80, align 8
  %81 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %82 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %81, i32 0, i32 1
  store i32 125, i32* %82, align 4
  %83 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %84 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %83, i32 0, i32 2
  store i32 125, i32* %84, align 8
  %85 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %86 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %85, i32 0, i32 3
  store i32 125, i32* %86, align 4
  %87 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %88 = load i64, i64* @MAX_HW_POINTS, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coordinates_x, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @build_pq(%struct.pwl_float_data_ex* %87, i64 %88, %struct.TYPE_5__* %89, i64 %90)
  store i64 0, i64* %7, align 8
  br label %92

92:                                               ; preds = %127, %78
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @MAX_HW_POINTS, align 8
  %95 = icmp ule i64 %93, %94
  br i1 %95, label %96, label %130

96:                                               ; preds = %92
  %97 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %98 = load i64, i64* %7, align 8
  %99 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %97, i64 %98
  %100 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %103 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %102, i32 0, i32 6
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32 %101, i32* %106, align 4
  %107 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %108 = load i64, i64* %7, align 8
  %109 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %107, i64 %108
  %110 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %113 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %111, i32* %116, align 4
  %117 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %118 = load i64, i64* %7, align 8
  %119 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %117, i64 %118
  %120 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %123 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32 %121, i32* %126, align 4
  br label %127

127:                                              ; preds = %96
  %128 = load i64, i64* %7, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %7, align 8
  br label %92

130:                                              ; preds = %92
  store i32 1, i32* %8, align 4
  %131 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %132 = call i32 @kvfree(%struct.pwl_float_data_ex* %131)
  br label %286

133:                                              ; preds = %65
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @TRANSFER_FUNCTION_SRGB, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %153, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @TRANSFER_FUNCTION_BT709, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %153, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @TRANSFER_FUNCTION_GAMMA22, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %153, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @TRANSFER_FUNCTION_GAMMA24, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @TRANSFER_FUNCTION_GAMMA26, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %217

153:                                              ; preds = %149, %145, %141, %137, %133
  %154 = load i64, i64* @MAX_HW_POINTS, align 8
  %155 = load i64, i64* @_EXTRA_POINTS, align 8
  %156 = add i64 %154, %155
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call %struct.pwl_float_data_ex* @kvcalloc(i64 %156, i32 12, i32 %157)
  store %struct.pwl_float_data_ex* %158, %struct.pwl_float_data_ex** %9, align 8
  %159 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %160 = icmp ne %struct.pwl_float_data_ex* %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %153
  br label %288

162:                                              ; preds = %153
  %163 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %164 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %163, i32 0, i32 0
  store i32 0, i32* %164, align 8
  %165 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %166 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %165, i32 0, i32 1
  store i32 1, i32* %166, align 4
  %167 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %168 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %167, i32 0, i32 2
  store i32 1, i32* %168, align 8
  %169 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %170 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %169, i32 0, i32 3
  store i32 1, i32* %170, align 4
  %171 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %172 = load i64, i64* @MAX_HW_POINTS, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coordinates_x, align 8
  %174 = load i32, i32* %4, align 4
  %175 = call i32 @build_regamma(%struct.pwl_float_data_ex* %171, i64 %172, %struct.TYPE_5__* %173, i32 %174)
  store i64 0, i64* %7, align 8
  br label %176

176:                                              ; preds = %211, %162
  %177 = load i64, i64* %7, align 8
  %178 = load i64, i64* @MAX_HW_POINTS, align 8
  %179 = icmp ule i64 %177, %178
  br i1 %179, label %180, label %214

180:                                              ; preds = %176
  %181 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %182 = load i64, i64* %7, align 8
  %183 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %181, i64 %182
  %184 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %187 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %186, i32 0, i32 6
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* %7, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  store i32 %185, i32* %190, align 4
  %191 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %192 = load i64, i64* %7, align 8
  %193 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %191, i64 %192
  %194 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %197 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %196, i32 0, i32 5
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* %7, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32 %195, i32* %200, align 4
  %201 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %202 = load i64, i64* %7, align 8
  %203 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %201, i64 %202
  %204 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %207 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = load i64, i64* %7, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32 %205, i32* %210, align 4
  br label %211

211:                                              ; preds = %180
  %212 = load i64, i64* %7, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %7, align 8
  br label %176

214:                                              ; preds = %176
  store i32 1, i32* %8, align 4
  %215 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %216 = call i32 @kvfree(%struct.pwl_float_data_ex* %215)
  br label %285

217:                                              ; preds = %149
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* @TRANSFER_FUNCTION_HLG, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %284

221:                                              ; preds = %217
  %222 = load i64, i64* @MAX_HW_POINTS, align 8
  %223 = load i64, i64* @_EXTRA_POINTS, align 8
  %224 = add i64 %222, %223
  %225 = load i32, i32* @GFP_KERNEL, align 4
  %226 = call %struct.pwl_float_data_ex* @kvcalloc(i64 %224, i32 12, i32 %225)
  store %struct.pwl_float_data_ex* %226, %struct.pwl_float_data_ex** %9, align 8
  %227 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %228 = icmp ne %struct.pwl_float_data_ex* %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %221
  br label %288

230:                                              ; preds = %221
  %231 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %232 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %231, i32 0, i32 0
  store i32 4, i32* %232, align 8
  %233 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %234 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %233, i32 0, i32 1
  store i32 12, i32* %234, align 4
  %235 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %236 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %235, i32 0, i32 2
  store i32 12, i32* %236, align 8
  %237 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %238 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %237, i32 0, i32 3
  store i32 12, i32* %238, align 4
  %239 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %240 = load i64, i64* @MAX_HW_POINTS, align 8
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coordinates_x, align 8
  %242 = call i32 @build_hlg_regamma(%struct.pwl_float_data_ex* %239, i64 %240, %struct.TYPE_5__* %241, i32 80, i32 1000)
  store i64 0, i64* %7, align 8
  br label %243

243:                                              ; preds = %278, %230
  %244 = load i64, i64* %7, align 8
  %245 = load i64, i64* @MAX_HW_POINTS, align 8
  %246 = icmp ule i64 %244, %245
  br i1 %246, label %247, label %281

247:                                              ; preds = %243
  %248 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %249 = load i64, i64* %7, align 8
  %250 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %248, i64 %249
  %251 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %254 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %253, i32 0, i32 6
  %255 = load i32*, i32** %254, align 8
  %256 = load i64, i64* %7, align 8
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  store i32 %252, i32* %257, align 4
  %258 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %259 = load i64, i64* %7, align 8
  %260 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %258, i64 %259
  %261 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %264 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %263, i32 0, i32 5
  %265 = load i32*, i32** %264, align 8
  %266 = load i64, i64* %7, align 8
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  store i32 %262, i32* %267, align 4
  %268 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %269 = load i64, i64* %7, align 8
  %270 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %268, i64 %269
  %271 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %5, align 8
  %274 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %273, i32 0, i32 4
  %275 = load i32*, i32** %274, align 8
  %276 = load i64, i64* %7, align 8
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  store i32 %272, i32* %277, align 4
  br label %278

278:                                              ; preds = %247
  %279 = load i64, i64* %7, align 8
  %280 = add i64 %279, 1
  store i64 %280, i64* %7, align 8
  br label %243

281:                                              ; preds = %243
  store i32 1, i32* %8, align 4
  %282 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %283 = call i32 @kvfree(%struct.pwl_float_data_ex* %282)
  br label %284

284:                                              ; preds = %281, %217
  br label %285

285:                                              ; preds = %284, %214
  br label %286

286:                                              ; preds = %285, %130
  br label %287

287:                                              ; preds = %286, %64
  br label %288

288:                                              ; preds = %287, %229, %161, %77
  %289 = load i32, i32* %8, align 4
  ret i32 %289
}

declare dso_local %struct.pwl_float_data_ex* @kvcalloc(i64, i32, i32) #1

declare dso_local i32 @build_pq(%struct.pwl_float_data_ex*, i64, %struct.TYPE_5__*, i64) #1

declare dso_local i32 @kvfree(%struct.pwl_float_data_ex*) #1

declare dso_local i32 @build_regamma(%struct.pwl_float_data_ex*, i64, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @build_hlg_regamma(%struct.pwl_float_data_ex*, i64, %struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
