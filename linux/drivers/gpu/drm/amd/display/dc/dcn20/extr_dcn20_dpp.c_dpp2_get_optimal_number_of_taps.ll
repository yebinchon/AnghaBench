; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dpp2_get_optimal_number_of_taps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dpp2_get_optimal_number_of_taps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { %struct.TYPE_16__*, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.scaler_data = type { i64, i64, i64, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__, %struct.TYPE_19__, %struct.TYPE_19__, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.scaling_taps = type { i32, i32, i32, i32 }

@DSCL_DATA_PRCESSING_FIXED_FORMAT = common dso_local global i64 0, align 8
@PIXEL_FORMAT_FP16 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpp2_get_optimal_number_of_taps(%struct.dpp* %0, %struct.scaler_data* %1, %struct.scaling_taps* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpp*, align 8
  %6 = alloca %struct.scaler_data*, align 8
  %7 = alloca %struct.scaling_taps*, align 8
  %8 = alloca i64, align 8
  store %struct.dpp* %0, %struct.dpp** %5, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %6, align 8
  store %struct.scaling_taps* %2, %struct.scaling_taps** %7, align 8
  %9 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %10 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %14 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %12, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %20 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %25 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %30 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %34 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %28
  %38 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %39 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %43 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %37
  %47 = load %struct.dpp*, %struct.dpp** %5, align 8
  %48 = getelementptr inbounds %struct.dpp, %struct.dpp* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DSCL_DATA_PRCESSING_FIXED_FORMAT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %56 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PIXEL_FORMAT_FP16, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %347

61:                                               ; preds = %54, %46, %37, %28
  %62 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %63 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %67 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %61
  %71 = load %struct.dpp*, %struct.dpp** %5, align 8
  %72 = getelementptr inbounds %struct.dpp, %struct.dpp* %71, i32 0, i32 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %70
  %81 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %82 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.dpp*, %struct.dpp** %5, align 8
  %86 = getelementptr inbounds %struct.dpp, %struct.dpp* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %84, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %347

95:                                               ; preds = %80, %70, %61
  %96 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %97 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 34359738368
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %104 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, -1
  store i64 %108, i64* %106, align 8
  br label %109

109:                                              ; preds = %102, %95
  %110 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %111 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 34359738368
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %118 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, -1
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %116, %109
  %124 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %125 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 34359738368
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %132 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, -1
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %130, %123
  %138 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %139 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 34359738368
  br i1 %143, label %144, label %151

144:                                              ; preds = %137
  %145 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %146 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, -1
  store i64 %150, i64* %148, align 8
  br label %151

151:                                              ; preds = %144, %137
  %152 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %153 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %173

156:                                              ; preds = %151
  %157 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %158 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @dc_fixpt_ceil(i64 %161)
  %163 = icmp sgt i32 %162, 4
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %166 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  store i32 8, i32* %167, align 8
  br label %172

168:                                              ; preds = %156
  %169 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %170 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  store i32 4, i32* %171, align 8
  br label %172

172:                                              ; preds = %168, %164
  br label %180

173:                                              ; preds = %151
  %174 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %175 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %178 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 8
  br label %180

180:                                              ; preds = %173, %172
  %181 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %182 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %202

185:                                              ; preds = %180
  %186 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %187 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @dc_fixpt_ceil(i64 %190)
  %192 = icmp sgt i32 %191, 4
  br i1 %192, label %193, label %197

193:                                              ; preds = %185
  %194 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %195 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  store i32 8, i32* %196, align 4
  br label %201

197:                                              ; preds = %185
  %198 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %199 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 1
  store i32 4, i32* %200, align 4
  br label %201

201:                                              ; preds = %197, %193
  br label %209

202:                                              ; preds = %180
  %203 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %204 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %207 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 1
  store i32 %205, i32* %208, align 4
  br label %209

209:                                              ; preds = %202, %201
  %210 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %211 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %231

214:                                              ; preds = %209
  %215 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %216 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @dc_fixpt_ceil(i64 %219)
  %221 = icmp sgt i32 %220, 4
  br i1 %221, label %222, label %226

222:                                              ; preds = %214
  %223 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %224 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 2
  store i32 4, i32* %225, align 8
  br label %230

226:                                              ; preds = %214
  %227 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %228 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 2
  store i32 2, i32* %229, align 8
  br label %230

230:                                              ; preds = %226, %222
  br label %238

231:                                              ; preds = %209
  %232 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %233 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %236 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 2
  store i32 %234, i32* %237, align 8
  br label %238

238:                                              ; preds = %231, %230
  %239 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %240 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %260

243:                                              ; preds = %238
  %244 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %245 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @dc_fixpt_ceil(i64 %248)
  %250 = icmp sgt i32 %249, 4
  br i1 %250, label %251, label %255

251:                                              ; preds = %243
  %252 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %253 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 3
  store i32 4, i32* %254, align 4
  br label %259

255:                                              ; preds = %243
  %256 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %257 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 3
  store i32 2, i32* %258, align 4
  br label %259

259:                                              ; preds = %255, %251
  br label %287

260:                                              ; preds = %238
  %261 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %262 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = srem i32 %263, 2
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %279

266:                                              ; preds = %260
  %267 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %268 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 1
  br i1 %270, label %271, label %279

271:                                              ; preds = %266
  %272 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %273 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = sub nsw i32 %274, 1
  %276 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %277 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 3
  store i32 %275, i32* %278, align 4
  br label %286

279:                                              ; preds = %266, %260
  %280 = load %struct.scaling_taps*, %struct.scaling_taps** %7, align 8
  %281 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %284 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 3
  store i32 %282, i32* %285, align 4
  br label %286

286:                                              ; preds = %279, %271
  br label %287

287:                                              ; preds = %286, %259
  %288 = load %struct.dpp*, %struct.dpp** %5, align 8
  %289 = getelementptr inbounds %struct.dpp, %struct.dpp* %288, i32 0, i32 0
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %346, label %297

297:                                              ; preds = %287
  %298 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %299 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = call i64 @IDENTITY_RATIO(i64 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %297
  %306 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %307 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %306, i32 0, i32 3
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i32 0, i32 0
  store i32 1, i32* %308, align 8
  br label %309

309:                                              ; preds = %305, %297
  %310 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %311 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %310, i32 0, i32 4
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = call i64 @IDENTITY_RATIO(i64 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %309
  %318 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %319 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 1
  store i32 1, i32* %320, align 4
  br label %321

321:                                              ; preds = %317, %309
  %322 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %323 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %322, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = call i64 @IDENTITY_RATIO(i64 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %321
  %330 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %331 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i32 0, i32 3
  store i32 1, i32* %332, align 4
  br label %333

333:                                              ; preds = %329, %321
  %334 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %335 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %334, i32 0, i32 4
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = call i64 @IDENTITY_RATIO(i64 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %333
  %342 = load %struct.scaler_data*, %struct.scaler_data** %6, align 8
  %343 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 2
  store i32 1, i32* %344, align 8
  br label %345

345:                                              ; preds = %341, %333
  br label %346

346:                                              ; preds = %345, %287
  store i32 1, i32* %4, align 4
  br label %347

347:                                              ; preds = %346, %94, %60
  %348 = load i32, i32* %4, align 4
  ret i32 %348
}

declare dso_local i32 @dc_fixpt_ceil(i64) #1

declare dso_local i64 @IDENTITY_RATIO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
