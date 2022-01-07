; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp.c_dpp_get_optimal_number_of_taps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp.c_dpp_get_optimal_number_of_taps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.dpp = type { %struct.TYPE_17__*, %struct.TYPE_13__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.scaler_data = type { i64, i64, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.scaling_taps = type { i32, i32, i32, i32 }

@PIXEL_FORMAT_FP16 = common dso_local global i64 0, align 8
@DSCL_DATA_PRCESSING_FIXED_FORMAT = common dso_local global i64 0, align 8
@dc_fixpt_one = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp*, %struct.scaler_data*, %struct.scaling_taps*)* @dpp_get_optimal_number_of_taps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_get_optimal_number_of_taps(%struct.dpp* %0, %struct.scaler_data* %1, %struct.scaling_taps* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpp*, align 8
  %6 = alloca %struct.scaler_data*, align 8
  %7 = alloca %struct.scaling_taps*, align 8
  %8 = alloca i64, align 8
  store %struct.dpp* %0, %struct.dpp** %5, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %6, align 8
  store %struct.scaling_taps* %2, %struct.scaling_taps** %7, align 8
  %9 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %10 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %14 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %12, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %20 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %25 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %30 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PIXEL_FORMAT_FP16, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load %struct.dpp*, %struct.dpp** %5, align 8
  %36 = getelementptr inbounds %struct.dpp, %struct.dpp* %35, i32 0, i32 1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DSCL_DATA_PRCESSING_FIXED_FORMAT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %34
  %43 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %44 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @dc_fixpt_one, i32 0, i32 0), align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %52 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @dc_fixpt_one, i32 0, i32 0), align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %293

59:                                               ; preds = %50, %42, %34, %28
  %60 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %61 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %65 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %63, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %59
  %69 = load %struct.dpp*, %struct.dpp** %5, align 8
  %70 = getelementptr inbounds %struct.dpp, %struct.dpp* %69, i32 0, i32 0
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %68
  %79 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %80 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.dpp*, %struct.dpp** %5, align 8
  %84 = getelementptr inbounds %struct.dpp, %struct.dpp* %83, i32 0, i32 0
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %82, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %293

93:                                               ; preds = %78, %68, %59
  %94 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %95 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 17179869184
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %102 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, -1
  store i64 %106, i64* %104, align 8
  br label %107

107:                                              ; preds = %100, %93
  %108 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %109 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 17179869184
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %116 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, -1
  store i64 %120, i64* %118, align 8
  br label %121

121:                                              ; preds = %114, %107
  %122 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %123 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 17179869184
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %130 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, -1
  store i64 %134, i64* %132, align 8
  br label %135

135:                                              ; preds = %128, %121
  %136 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %137 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 17179869184
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %144 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, -1
  store i64 %148, i64* %146, align 8
  br label %149

149:                                              ; preds = %142, %135
  %150 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %151 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %156 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  store i32 4, i32* %157, align 8
  br label %165

158:                                              ; preds = %149
  %159 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %160 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %163 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  br label %165

165:                                              ; preds = %158, %154
  %166 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %167 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %172 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 1
  store i32 4, i32* %173, align 4
  br label %181

174:                                              ; preds = %165
  %175 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %176 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %179 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  store i32 %177, i32* %180, align 4
  br label %181

181:                                              ; preds = %174, %170
  %182 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %183 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %188 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 2
  store i32 2, i32* %189, align 8
  br label %197

190:                                              ; preds = %181
  %191 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %192 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %195 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 2
  store i32 %193, i32* %196, align 8
  br label %197

197:                                              ; preds = %190, %186
  %198 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %199 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %204 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 3
  store i32 2, i32* %205, align 4
  br label %233

206:                                              ; preds = %197
  %207 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %208 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = srem i32 %209, 2
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %206
  %213 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %214 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 1
  br i1 %216, label %217, label %225

217:                                              ; preds = %212
  %218 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %219 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %220, 1
  %222 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %223 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 3
  store i32 %221, i32* %224, align 4
  br label %232

225:                                              ; preds = %212, %206
  %226 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %227 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %230 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 3
  store i32 %228, i32* %231, align 4
  br label %232

232:                                              ; preds = %225, %217
  br label %233

233:                                              ; preds = %232, %202
  %234 = load %struct.dpp*, %struct.dpp** %5, align 8
  %235 = getelementptr inbounds %struct.dpp, %struct.dpp* %234, i32 0, i32 0
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %292, label %243

243:                                              ; preds = %233
  %244 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %245 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = call i64 @IDENTITY_RATIO(i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %243
  %252 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %253 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 0
  store i32 1, i32* %254, align 8
  br label %255

255:                                              ; preds = %251, %243
  %256 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %257 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = call i64 @IDENTITY_RATIO(i64 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %255
  %264 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %265 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 1
  store i32 1, i32* %266, align 4
  br label %267

267:                                              ; preds = %263, %255
  %268 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %269 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = call i64 @IDENTITY_RATIO(i64 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %267
  %276 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %277 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 3
  store i32 1, i32* %278, align 4
  br label %279

279:                                              ; preds = %275, %267
  %280 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %281 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = call i64 @IDENTITY_RATIO(i64 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %279
  %288 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %289 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 2
  store i32 1, i32* %290, align 8
  br label %291

291:                                              ; preds = %287, %279
  br label %292

292:                                              ; preds = %291, %233
  store i32 1, i32* %4, align 4
  br label %293

293:                                              ; preds = %292, %92, %58
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local i64 @IDENTITY_RATIO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
