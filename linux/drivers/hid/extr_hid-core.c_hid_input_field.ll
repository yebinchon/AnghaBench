; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_input_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_input_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i32, i32, i32, i64, i64, i32, i64, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@HID_MAIN_ITEM_VARIABLE = common dso_local global i32 0, align 4
@HID_UP_KEYBOARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_field*, i32*, i32)* @hid_input_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_input_field(%struct.hid_device* %0, %struct.hid_field* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_field*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_field* %1, %struct.hid_field** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %17 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %20 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %23 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %26 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %13, align 8
  %28 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %29 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %14, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call i64* @kmalloc_array(i32 %31, i32 8, i32 %32)
  store i64* %33, i64** %15, align 8
  %34 = load i64*, i64** %15, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %4
  br label %327

37:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %126, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %129

42:                                               ; preds = %38
  %43 = load i64, i64* %13, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %12, align 4
  %51 = mul i32 %49, %50
  %52 = add i32 %48, %51
  %53 = load i32, i32* %12, align 4
  %54 = call i64 @hid_field_extract(%struct.hid_device* %46, i32* %47, i32 %52, i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @snto32(i64 %54, i32 %55)
  br label %67

57:                                               ; preds = %42
  %58 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %12, align 4
  %63 = mul i32 %61, %62
  %64 = add i32 %60, %63
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @hid_field_extract(%struct.hid_device* %58, i32* %59, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %57, %45
  %68 = phi i64 [ %56, %45 ], [ %66, %57 ]
  %69 = load i64*, i64** %15, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %68, i64* %72, align 8
  %73 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %74 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @HID_MAIN_ITEM_VARIABLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %125, label %79

79:                                               ; preds = %67
  %80 = load i64*, i64** %15, align 8
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %125

87:                                               ; preds = %79
  %88 = load i64*, i64** %15, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %14, align 8
  %94 = icmp sle i64 %92, %93
  br i1 %94, label %95, label %125

95:                                               ; preds = %87
  %96 = load i64*, i64** %15, align 8
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = sub nsw i64 %100, %101
  %103 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %104 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %95
  %108 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %109 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %108, i32 0, i32 8
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i64*, i64** %15, align 8
  %112 = load i32, i32* %9, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %13, align 8
  %117 = sub nsw i64 %115, %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @HID_UP_KEYBOARD, align 8
  %122 = add nsw i64 %121, 1
  %123 = icmp eq i64 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %107
  br label %324

125:                                              ; preds = %107, %95, %87, %79, %67
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %38

129:                                              ; preds = %38
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %311, %129
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %314

134:                                              ; preds = %130
  %135 = load i32, i32* @HID_MAIN_ITEM_VARIABLE, align 4
  %136 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %137 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %135, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %134
  %142 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %143 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %144 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %145 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %144, i32 0, i32 8
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = load i64*, i64** %15, align 8
  %151 = load i32, i32* %9, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @hid_process_event(%struct.hid_device* %142, %struct.hid_field* %143, %struct.TYPE_2__* %149, i32 %155, i32 %156)
  br label %311

158:                                              ; preds = %134
  %159 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %160 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %159, i32 0, i32 7
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %13, align 8
  %167 = icmp sge i64 %165, %166
  br i1 %167, label %168, label %239

168:                                              ; preds = %158
  %169 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %170 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %169, i32 0, i32 7
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %14, align 8
  %177 = icmp sle i64 %175, %176
  br i1 %177, label %178, label %239

178:                                              ; preds = %168
  %179 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %180 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %179, i32 0, i32 7
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %13, align 8
  %187 = sub nsw i64 %185, %186
  %188 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %189 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %188, i32 0, i32 6
  %190 = load i64, i64* %189, align 8
  %191 = icmp slt i64 %187, %190
  br i1 %191, label %192, label %239

192:                                              ; preds = %178
  %193 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %194 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %193, i32 0, i32 8
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %197 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %196, i32 0, i32 7
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* %13, align 8
  %204 = sub nsw i64 %202, %203
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %239

209:                                              ; preds = %192
  %210 = load i64*, i64** %15, align 8
  %211 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %212 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %211, i32 0, i32 7
  %213 = load i64*, i64** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = call i64 @search(i64* %210, i64 %217, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %239

221:                                              ; preds = %209
  %222 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %223 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %224 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %225 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %224, i32 0, i32 8
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %228 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %227, i32 0, i32 7
  %229 = load i64*, i64** %228, align 8
  %230 = load i32, i32* %9, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* %13, align 8
  %235 = sub nsw i64 %233, %234
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i64 %235
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @hid_process_event(%struct.hid_device* %222, %struct.hid_field* %223, %struct.TYPE_2__* %236, i32 0, i32 %237)
  br label %239

239:                                              ; preds = %221, %209, %192, %178, %168, %158
  %240 = load i64*, i64** %15, align 8
  %241 = load i32, i32* %9, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %240, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* %13, align 8
  %246 = icmp sge i64 %244, %245
  br i1 %246, label %247, label %310

247:                                              ; preds = %239
  %248 = load i64*, i64** %15, align 8
  %249 = load i32, i32* %9, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* %14, align 8
  %254 = icmp sle i64 %252, %253
  br i1 %254, label %255, label %310

255:                                              ; preds = %247
  %256 = load i64*, i64** %15, align 8
  %257 = load i32, i32* %9, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %256, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* %13, align 8
  %262 = sub nsw i64 %260, %261
  %263 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %264 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %263, i32 0, i32 6
  %265 = load i64, i64* %264, align 8
  %266 = icmp slt i64 %262, %265
  br i1 %266, label %267, label %310

267:                                              ; preds = %255
  %268 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %269 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %268, i32 0, i32 8
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** %269, align 8
  %271 = load i64*, i64** %15, align 8
  %272 = load i32, i32* %9, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %271, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* %13, align 8
  %277 = sub nsw i64 %275, %276
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %310

282:                                              ; preds = %267
  %283 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %284 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %283, i32 0, i32 7
  %285 = load i64*, i64** %284, align 8
  %286 = load i64*, i64** %15, align 8
  %287 = load i32, i32* %9, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %286, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* %10, align 4
  %292 = call i64 @search(i64* %285, i64 %290, i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %310

294:                                              ; preds = %282
  %295 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %296 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %297 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %298 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %297, i32 0, i32 8
  %299 = load %struct.TYPE_2__*, %struct.TYPE_2__** %298, align 8
  %300 = load i64*, i64** %15, align 8
  %301 = load i32, i32* %9, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i64, i64* %300, i64 %302
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* %13, align 8
  %306 = sub nsw i64 %304, %305
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i64 %306
  %308 = load i32, i32* %8, align 4
  %309 = call i32 @hid_process_event(%struct.hid_device* %295, %struct.hid_field* %296, %struct.TYPE_2__* %307, i32 1, i32 %308)
  br label %310

310:                                              ; preds = %294, %282, %267, %255, %247, %239
  br label %311

311:                                              ; preds = %310, %141
  %312 = load i32, i32* %9, align 4
  %313 = add i32 %312, 1
  store i32 %313, i32* %9, align 4
  br label %130

314:                                              ; preds = %130
  %315 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %316 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %315, i32 0, i32 7
  %317 = load i64*, i64** %316, align 8
  %318 = load i64*, i64** %15, align 8
  %319 = load i32, i32* %10, align 4
  %320 = zext i32 %319 to i64
  %321 = mul i64 %320, 8
  %322 = trunc i64 %321 to i32
  %323 = call i32 @memcpy(i64* %317, i64* %318, i32 %322)
  br label %324

324:                                              ; preds = %314, %124
  %325 = load i64*, i64** %15, align 8
  %326 = call i32 @kfree(i64* %325)
  br label %327

327:                                              ; preds = %324, %36
  ret void
}

declare dso_local i64* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @snto32(i64, i32) #1

declare dso_local i64 @hid_field_extract(%struct.hid_device*, i32*, i32, i32) #1

declare dso_local i32 @hid_process_event(%struct.hid_device*, %struct.hid_field*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @search(i64*, i64, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
