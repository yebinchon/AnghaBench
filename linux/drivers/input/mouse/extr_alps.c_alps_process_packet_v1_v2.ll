; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_packet_v1_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_packet_v1_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.input_dev*, %struct.alps_data* }
%struct.input_dev = type { i32 }
%struct.alps_data = type { i64, i32, i32, %struct.input_dev* }

@ALPS_PROTO_V1 = common dso_local global i64 0, align 8
@ALPS_FW_BK_1 = common dso_local global i32 0, align 4
@ALPS_FW_BK_2 = common dso_local global i32 0, align 4
@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@ALPS_STICK_BITS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ALPS_WHEEL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@ALPS_FOUR_BUTTONS = common dso_local global i32 0, align 4
@BTN_0 = common dso_local global i32 0, align 4
@BTN_1 = common dso_local global i32 0, align 4
@BTN_2 = common dso_local global i32 0, align 4
@BTN_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @alps_process_packet_v1_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_process_packet_v1_v2(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.alps_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %17 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %18 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %17, i32 0, i32 2
  %19 = load %struct.alps_data*, %struct.alps_data** %18, align 8
  store %struct.alps_data* %19, %struct.alps_data** %3, align 8
  %20 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %21 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %4, align 8
  %23 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %24 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %23, i32 0, i32 1
  %25 = load %struct.input_dev*, %struct.input_dev** %24, align 8
  store %struct.input_dev* %25, %struct.input_dev** %5, align 8
  %26 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %27 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %26, i32 0, i32 3
  %28 = load %struct.input_dev*, %struct.input_dev** %27, align 8
  store %struct.input_dev* %28, %struct.input_dev** %6, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %29 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %30 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ALPS_PROTO_V1, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %1
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 16
  store i32 %39, i32* %12, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 8
  store i32 %44, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 7
  %54 = shl i32 %53, 7
  %55 = or i32 %48, %54
  store i32 %55, i32* %7, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 7
  %65 = shl i32 %64, 7
  %66 = or i32 %59, %65
  store i32 %66, i32* %8, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 5
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  store i32 %70, i32* %9, align 4
  br label %113

71:                                               ; preds = %1
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 1
  store i32 %76, i32* %12, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 3
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 2
  store i32 %81, i32* %13, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 3
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 4
  store i32 %86, i32* %14, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 120
  %96 = shl i32 %95, 4
  %97 = or i32 %90, %96
  store i32 %97, i32* %7, align 4
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 4
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 3
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 112
  %107 = shl i32 %106, 3
  %108 = or i32 %101, %107
  store i32 %108, i32* %8, align 4
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 5
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %71, %34
  %114 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %115 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ALPS_FW_BK_1, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %113
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 16
  store i32 %125, i32* %15, align 4
  %126 = load i8*, i8** %4, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = and i32 %129, 4
  store i32 %130, i32* %16, align 4
  br label %131

131:                                              ; preds = %120, %113
  %132 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %133 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ALPS_FW_BK_2, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %159

138:                                              ; preds = %131
  %139 = load i8*, i8** %4, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 3
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 4
  store i32 %143, i32* %15, align 4
  %144 = load i8*, i8** %4, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 2
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = and i32 %147, 4
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %138
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br label %154

154:                                              ; preds = %151, %138
  %155 = phi i1 [ false, %138 ], [ %153, %151 ]
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %14, align 4
  br i1 %155, label %157, label %158

157:                                              ; preds = %154
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %158

158:                                              ; preds = %157, %154
  br label %159

159:                                              ; preds = %158, %131
  %160 = load i8*, i8** %4, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 2
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = and i32 %163, 1
  store i32 %164, i32* %10, align 4
  %165 = load i8*, i8** %4, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 2
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = and i32 %168, 2
  store i32 %169, i32* %11, align 4
  %170 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %171 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @ALPS_DUALPOINT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %215

176:                                              ; preds = %159
  %177 = load i32, i32* %9, align 4
  %178 = icmp eq i32 %177, 127
  br i1 %178, label %179, label %215

179:                                              ; preds = %176
  %180 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %181 = load i32, i32* @REL_X, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp sgt i32 %182, 383
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i32, i32* %7, align 4
  %186 = sub nsw i32 %185, 768
  br label %189

187:                                              ; preds = %179
  %188 = load i32, i32* %7, align 4
  br label %189

189:                                              ; preds = %187, %184
  %190 = phi i32 [ %186, %184 ], [ %188, %187 ]
  %191 = trunc i32 %190 to i8
  %192 = call i32 @input_report_rel(%struct.input_dev* %180, i32 %181, i8 zeroext %191)
  %193 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %194 = load i32, i32* @REL_Y, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp sgt i32 %195, 255
  br i1 %196, label %197, label %200

197:                                              ; preds = %189
  %198 = load i32, i32* %8, align 4
  %199 = sub nsw i32 %198, 512
  br label %202

200:                                              ; preds = %189
  %201 = load i32, i32* %8, align 4
  br label %202

202:                                              ; preds = %200, %197
  %203 = phi i32 [ %199, %197 ], [ %201, %200 ]
  %204 = sub nsw i32 0, %203
  %205 = trunc i32 %204 to i8
  %206 = call i32 @input_report_rel(%struct.input_dev* %193, i32 %194, i8 zeroext %205)
  %207 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %208 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %14, align 4
  %212 = call i32 @alps_report_buttons(%struct.input_dev* %207, %struct.input_dev* %208, i32 %209, i32 %210, i32 %211)
  %213 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %214 = call i32 @input_sync(%struct.input_dev* %213)
  br label %417

215:                                              ; preds = %176, %159
  %216 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %217 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @ALPS_STICK_BITS, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %244

222:                                              ; preds = %215
  %223 = load i8*, i8** %4, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = and i32 %226, 1
  %228 = load i32, i32* %12, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %12, align 4
  %230 = load i8*, i8** %4, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 0
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = and i32 %233, 2
  %235 = load i32, i32* %13, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %13, align 4
  %237 = load i8*, i8** %4, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 0
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = and i32 %240, 4
  %242 = load i32, i32* %14, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %14, align 4
  br label %244

244:                                              ; preds = %222, %215
  %245 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %246 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* %13, align 4
  %249 = load i32, i32* %14, align 4
  %250 = call i32 @alps_report_buttons(%struct.input_dev* %245, %struct.input_dev* %246, i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* %10, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %244
  %254 = load i32, i32* %11, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %253
  store i32 40, i32* %9, align 4
  br label %257

257:                                              ; preds = %256, %253, %244
  %258 = load i32, i32* %10, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %285

260:                                              ; preds = %257
  %261 = load i32, i32* %11, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %285

263:                                              ; preds = %260
  %264 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %265 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %285, label %268

268:                                              ; preds = %263
  %269 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %270 = load i32, i32* @ABS_X, align 4
  %271 = load i32, i32* %7, align 4
  %272 = call i32 @input_report_abs(%struct.input_dev* %269, i32 %270, i32 %271)
  %273 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %274 = load i32, i32* @ABS_Y, align 4
  %275 = load i32, i32* %8, align 4
  %276 = call i32 @input_report_abs(%struct.input_dev* %273, i32 %274, i32 %275)
  %277 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %278 = load i32, i32* @ABS_PRESSURE, align 4
  %279 = call i32 @input_report_abs(%struct.input_dev* %277, i32 %278, i32 0)
  %280 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %281 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %282 = call i32 @input_report_key(%struct.input_dev* %280, i32 %281, i8 zeroext 0)
  %283 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %284 = call i32 @input_sync(%struct.input_dev* %283)
  br label %285

285:                                              ; preds = %268, %263, %260, %257
  %286 = load i32, i32* %11, align 4
  %287 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %288 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %287, i32 0, i32 2
  store i32 %286, i32* %288, align 4
  %289 = load i32, i32* %9, align 4
  %290 = icmp sgt i32 %289, 30
  br i1 %290, label %291, label %295

291:                                              ; preds = %285
  %292 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %293 = load i32, i32* @BTN_TOUCH, align 4
  %294 = call i32 @input_report_key(%struct.input_dev* %292, i32 %293, i8 zeroext 1)
  br label %295

295:                                              ; preds = %291, %285
  %296 = load i32, i32* %9, align 4
  %297 = icmp slt i32 %296, 25
  br i1 %297, label %298, label %302

298:                                              ; preds = %295
  %299 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %300 = load i32, i32* @BTN_TOUCH, align 4
  %301 = call i32 @input_report_key(%struct.input_dev* %299, i32 %300, i8 zeroext 0)
  br label %302

302:                                              ; preds = %298, %295
  %303 = load i32, i32* %9, align 4
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %302
  %306 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %307 = load i32, i32* @ABS_X, align 4
  %308 = load i32, i32* %7, align 4
  %309 = call i32 @input_report_abs(%struct.input_dev* %306, i32 %307, i32 %308)
  %310 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %311 = load i32, i32* @ABS_Y, align 4
  %312 = load i32, i32* %8, align 4
  %313 = call i32 @input_report_abs(%struct.input_dev* %310, i32 %311, i32 %312)
  br label %314

314:                                              ; preds = %305, %302
  %315 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %316 = load i32, i32* @ABS_PRESSURE, align 4
  %317 = load i32, i32* %9, align 4
  %318 = call i32 @input_report_abs(%struct.input_dev* %315, i32 %316, i32 %317)
  %319 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %320 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %321 = load i32, i32* %9, align 4
  %322 = icmp sgt i32 %321, 0
  %323 = zext i1 %322 to i32
  %324 = trunc i32 %323 to i8
  %325 = call i32 @input_report_key(%struct.input_dev* %319, i32 %320, i8 zeroext %324)
  %326 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %327 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @ALPS_WHEEL, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %350

332:                                              ; preds = %314
  %333 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %334 = load i32, i32* @REL_WHEEL, align 4
  %335 = load i8*, i8** %4, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 2
  %337 = load i8, i8* %336, align 1
  %338 = zext i8 %337 to i32
  %339 = shl i32 %338, 1
  %340 = and i32 %339, 8
  %341 = load i8*, i8** %4, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 0
  %343 = load i8, i8* %342, align 1
  %344 = zext i8 %343 to i32
  %345 = ashr i32 %344, 4
  %346 = and i32 %345, 7
  %347 = sub nsw i32 %340, %346
  %348 = trunc i32 %347 to i8
  %349 = call i32 @input_report_rel(%struct.input_dev* %333, i32 %334, i8 zeroext %348)
  br label %350

350:                                              ; preds = %332, %314
  %351 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %352 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @ALPS_FW_BK_1, align 4
  %355 = load i32, i32* @ALPS_FW_BK_2, align 4
  %356 = or i32 %354, %355
  %357 = and i32 %353, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %370

359:                                              ; preds = %350
  %360 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %361 = load i32, i32* @BTN_FORWARD, align 4
  %362 = load i32, i32* %16, align 4
  %363 = trunc i32 %362 to i8
  %364 = call i32 @input_report_key(%struct.input_dev* %360, i32 %361, i8 zeroext %363)
  %365 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %366 = load i32, i32* @BTN_BACK, align 4
  %367 = load i32, i32* %15, align 4
  %368 = trunc i32 %367 to i8
  %369 = call i32 @input_report_key(%struct.input_dev* %365, i32 %366, i8 zeroext %368)
  br label %370

370:                                              ; preds = %359, %350
  %371 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %372 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @ALPS_FOUR_BUTTONS, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %414

377:                                              ; preds = %370
  %378 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %379 = load i32, i32* @BTN_0, align 4
  %380 = load i8*, i8** %4, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 2
  %382 = load i8, i8* %381, align 1
  %383 = zext i8 %382 to i32
  %384 = and i32 %383, 4
  %385 = trunc i32 %384 to i8
  %386 = call i32 @input_report_key(%struct.input_dev* %378, i32 %379, i8 zeroext %385)
  %387 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %388 = load i32, i32* @BTN_1, align 4
  %389 = load i8*, i8** %4, align 8
  %390 = getelementptr inbounds i8, i8* %389, i64 0
  %391 = load i8, i8* %390, align 1
  %392 = zext i8 %391 to i32
  %393 = and i32 %392, 16
  %394 = trunc i32 %393 to i8
  %395 = call i32 @input_report_key(%struct.input_dev* %387, i32 %388, i8 zeroext %394)
  %396 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %397 = load i32, i32* @BTN_2, align 4
  %398 = load i8*, i8** %4, align 8
  %399 = getelementptr inbounds i8, i8* %398, i64 3
  %400 = load i8, i8* %399, align 1
  %401 = zext i8 %400 to i32
  %402 = and i32 %401, 4
  %403 = trunc i32 %402 to i8
  %404 = call i32 @input_report_key(%struct.input_dev* %396, i32 %397, i8 zeroext %403)
  %405 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %406 = load i32, i32* @BTN_3, align 4
  %407 = load i8*, i8** %4, align 8
  %408 = getelementptr inbounds i8, i8* %407, i64 0
  %409 = load i8, i8* %408, align 1
  %410 = zext i8 %409 to i32
  %411 = and i32 %410, 32
  %412 = trunc i32 %411 to i8
  %413 = call i32 @input_report_key(%struct.input_dev* %405, i32 %406, i8 zeroext %412)
  br label %414

414:                                              ; preds = %377, %370
  %415 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %416 = call i32 @input_sync(%struct.input_dev* %415)
  br label %417

417:                                              ; preds = %414, %202
  ret void
}

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @alps_report_buttons(%struct.input_dev*, %struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
