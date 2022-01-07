; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_leakage_vddc_based_on_leakage_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_leakage_vddc_based_on_leakage_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@ASIC_ProfilingInfo = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown table version %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atom_get_leakage_vddc_based_on_leakage_params(%struct.radeon_device* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %25 = load i32, i32* @DATA, align 4
  %26 = load i32, i32* @ASIC_ProfilingInfo, align 4
  %27 = call i32 @GetIndexIntoMasterTable(i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32*, i32** %9, align 8
  store i32 0, i32* %29, align 4
  %30 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @atom_parse_data_header(%struct.TYPE_6__* %33, i32 %34, i32* %16, i32* %13, i32* %14, i32* %15)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %5
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %270

40:                                               ; preds = %5
  %41 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %19, align 8
  %51 = load i32, i32* %13, align 4
  switch i32 %51, label %263 [
    i32 1, label %52
    i32 2, label %55
  ]

52:                                               ; preds = %40
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %270

55:                                               ; preds = %40
  %56 = load i32, i32* %14, align 4
  switch i32 %56, label %256 [
    i32 1, label %57
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %59, 32
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %270

64:                                               ; preds = %57
  %65 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %70, %71
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = add nsw i32 %72, %76
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** %20, align 8
  %80 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %85, %86
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le16_to_cpu(i32 %90)
  %92 = add nsw i32 %87, %91
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i32*
  store i32* %94, i32** %21, align 8
  %95 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %100, %101
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le16_to_cpu(i32 %105)
  %107 = add nsw i32 %102, %106
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i32*
  store i32* %109, i32** %22, align 8
  %110 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %115, %116
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le16_to_cpu(i32 %120)
  %122 = add nsw i32 %117, %121
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i32*
  store i32* %124, i32** %23, align 8
  %125 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %130, %131
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le16_to_cpu(i32 %135)
  %137 = add nsw i32 %132, %136
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i32*
  store i32* %139, i32** %24, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %197

144:                                              ; preds = %64
  store i32 0, i32* %17, align 4
  br label %145

145:                                              ; preds = %193, %144
  %146 = load i32, i32* %17, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %196

151:                                              ; preds = %145
  %152 = load i32*, i32** %21, align 8
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %192

159:                                              ; preds = %151
  store i32 0, i32* %18, align 4
  br label %160

160:                                              ; preds = %188, %159
  %161 = load i32, i32* %18, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %191

166:                                              ; preds = %160
  %167 = load i32, i32* %11, align 4
  %168 = load i32*, i32** %20, align 8
  %169 = load i32, i32* %18, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = icmp sle i32 %167, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %166
  %175 = load i32*, i32** %22, align 8
  %176 = load i32, i32* %18, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %176, %179
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %175, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %8, align 8
  store i32 %185, i32* %186, align 4
  br label %191

187:                                              ; preds = %166
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %18, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %18, align 4
  br label %160

191:                                              ; preds = %174, %160
  br label %196

192:                                              ; preds = %151
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %17, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %17, align 4
  br label %145

196:                                              ; preds = %191, %145
  br label %197

197:                                              ; preds = %196, %64
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %255

202:                                              ; preds = %197
  store i32 0, i32* %17, align 4
  br label %203

203:                                              ; preds = %251, %202
  %204 = load i32, i32* %17, align 4
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = icmp slt i32 %204, %207
  br i1 %208, label %209, label %254

209:                                              ; preds = %203
  %210 = load i32*, i32** %23, align 8
  %211 = load i32, i32* %17, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %10, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %250

217:                                              ; preds = %209
  store i32 0, i32* %18, align 4
  br label %218

218:                                              ; preds = %246, %217
  %219 = load i32, i32* %18, align 4
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %249

224:                                              ; preds = %218
  %225 = load i32, i32* %11, align 4
  %226 = load i32*, i32** %20, align 8
  %227 = load i32, i32* %18, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp sle i32 %225, %230
  br i1 %231, label %232, label %245

232:                                              ; preds = %224
  %233 = load i32*, i32** %24, align 8
  %234 = load i32, i32* %18, align 4
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = mul nsw i32 %234, %237
  %239 = load i32, i32* %17, align 4
  %240 = add nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %233, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** %9, align 8
  store i32 %243, i32* %244, align 4
  br label %249

245:                                              ; preds = %224
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %18, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %18, align 4
  br label %218

249:                                              ; preds = %232, %218
  br label %254

250:                                              ; preds = %209
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %17, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %17, align 4
  br label %203

254:                                              ; preds = %249, %203
  br label %255

255:                                              ; preds = %254, %197
  br label %262

256:                                              ; preds = %55
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* %14, align 4
  %259 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %257, i32 %258)
  %260 = load i32, i32* @EINVAL, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %6, align 4
  br label %270

262:                                              ; preds = %255
  br label %269

263:                                              ; preds = %40
  %264 = load i32, i32* %13, align 4
  %265 = load i32, i32* %14, align 4
  %266 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %264, i32 %265)
  %267 = load i32, i32* @EINVAL, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %6, align 4
  br label %270

269:                                              ; preds = %262
  store i32 0, i32* %6, align 4
  br label %270

270:                                              ; preds = %269, %263, %256, %61, %52, %37
  %271 = load i32, i32* %6, align 4
  ret i32 %271
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_data_header(%struct.TYPE_6__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
