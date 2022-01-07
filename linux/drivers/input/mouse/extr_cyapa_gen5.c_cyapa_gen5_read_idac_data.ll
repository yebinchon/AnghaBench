; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_read_idac_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_read_idac_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32, i32, i32, i32 }
%struct.pip_app_cmd_head = type { i64*, i64, i32, i64, i64 }

@PIP_RETRIEVE_DATA_STRUCTURE = common dso_local global i64 0, align 8
@GEN5_RETRIEVE_MUTUAL_PWC_DATA = common dso_local global i64 0, align 8
@GEN5_RETRIEVE_SELF_CAP_PWC_DATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@PIP_OUTPUT_REPORT_ADDR = common dso_local global i32 0, align 4
@PIP_APP_CMD_REPORT_ID = common dso_local global i32 0, align 4
@GEN5_RESP_DATA_STRUCTURE_OFFSET = common dso_local global i32 0, align 4
@cyapa_sort_tsg_pip_app_resp_data = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@GEN5_PWC_DATA_ELEMENT_SIZE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i64, i64, i32*, i32*, i32*, i32*)* @cyapa_gen5_read_idac_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen5_read_idac_data(%struct.cyapa* %0, i64 %1, i64 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cyapa*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.pip_app_cmd_head*, align 8
  %17 = alloca [12 x i64], align 16
  %18 = alloca [256 x i64], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @PIP_RETRIEVE_DATA_STRUCTURE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %60, label %40

40:                                               ; preds = %7
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @GEN5_RETRIEVE_MUTUAL_PWC_DATA, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @GEN5_RETRIEVE_SELF_CAP_PWC_DATA, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %44, %40
  %49 = load i32*, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32*, i32** %13, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32*, i32** %14, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32*, i32** %15, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57, %54, %51, %48, %44, %7
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %463

63:                                               ; preds = %57
  %64 = load i32, i32* @INT_MIN, align 4
  %65 = load i32*, i32** %13, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @INT_MAX, align 4
  %67 = load i32*, i32** %14, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %33, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %63
  store i32 1, i32* %24, align 4
  store i32 0, i32* %22, align 4
  %72 = load i32*, i32** %12, align 8
  store i32 4, i32* %72, align 4
  %73 = load i32, i32* @INT_MIN, align 4
  store i32 %73, i32* %28, align 4
  %74 = load i32, i32* @INT_MAX, align 4
  store i32 %74, i32* %29, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %30, align 4
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @GEN5_RETRIEVE_MUTUAL_PWC_DATA, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %71
  %79 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %80 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %85 = call i32 @cyapa_gen5_guess_electrodes(%struct.cyapa* %84, i32* %33, i32* %34)
  %86 = load i32, i32* %33, align 4
  %87 = add nsw i32 %86, 3
  %88 = and i32 %87, -4
  %89 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %90 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %83, %78
  %92 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %93 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 7
  %96 = and i32 %95, -8
  store i32 %96, i32* %27, align 4
  br label %98

97:                                               ; preds = %71
  store i32 2, i32* %27, align 4
  br label %98

98:                                               ; preds = %97, %91
  br label %151

99:                                               ; preds = %63
  store i32 0, i32* %24, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 4
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32*, i32** %12, align 8
  store i32 4, i32* %104, align 4
  br label %105

105:                                              ; preds = %103, %99
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* @GEN5_RETRIEVE_MUTUAL_PWC_DATA, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %139

109:                                              ; preds = %105
  %110 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %111 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %112, %114
  store i32 %115, i32* %22, align 4
  %116 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %117 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %120 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %109
  %124 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %125 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %34, align 4
  br label %131

127:                                              ; preds = %109
  %128 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %129 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %34, align 4
  br label %131

131:                                              ; preds = %127, %123
  %132 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %133 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 7
  %136 = and i32 %135, -8
  %137 = load i32, i32* %34, align 4
  %138 = mul i32 %136, %137
  store i32 %138, i32* %27, align 4
  br label %150

139:                                              ; preds = %105
  store i32 2, i32* %22, align 4
  %140 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %141 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %144 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %142, %145
  store i32 %146, i32* %27, align 4
  %147 = load i32, i32* %27, align 4
  %148 = add nsw i32 %147, 3
  %149 = and i32 %148, -4
  store i32 %149, i32* %27, align 4
  br label %150

150:                                              ; preds = %139, %131
  br label %151

151:                                              ; preds = %150, %98
  %152 = getelementptr inbounds [12 x i64], [12 x i64]* %17, i64 0, i64 0
  %153 = call i32 @memset(i64* %152, i32 0, i32 96)
  %154 = getelementptr inbounds [12 x i64], [12 x i64]* %17, i64 0, i64 0
  %155 = bitcast i64* %154 to %struct.pip_app_cmd_head*
  store %struct.pip_app_cmd_head* %155, %struct.pip_app_cmd_head** %16, align 8
  %156 = load i32, i32* @PIP_OUTPUT_REPORT_ADDR, align 4
  %157 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %16, align 8
  %158 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %157, i32 0, i32 4
  %159 = call i32 @put_unaligned_le16(i32 %156, i64* %158)
  %160 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %16, align 8
  %161 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %160, i32 0, i32 3
  %162 = call i32 @put_unaligned_le16(i32 94, i64* %161)
  %163 = load i32, i32* @PIP_APP_CMD_REPORT_ID, align 4
  %164 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %16, align 8
  %165 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load i64, i64* %10, align 8
  %167 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %16, align 8
  %168 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %370, %151
  %170 = load i32, i32* @GEN5_RESP_DATA_STRUCTURE_OFFSET, align 4
  %171 = sub nsw i32 256, %170
  %172 = load i32*, i32** %12, align 8
  %173 = load i32, i32* %172, align 4
  %174 = sdiv i32 %171, %173
  store i32 %174, i32* %23, align 4
  %175 = load i32, i32* %23, align 4
  %176 = load i32, i32* %27, align 4
  %177 = load i32, i32* %26, align 4
  %178 = sub nsw i32 %176, %177
  %179 = call i32 @min(i32 %175, i32 %178)
  store i32 %179, i32* %23, align 4
  %180 = load i32, i32* %23, align 4
  %181 = load i32*, i32** %12, align 8
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 %180, %182
  store i32 %183, i32* %20, align 4
  %184 = load i32, i32* %22, align 4
  %185 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %16, align 8
  %186 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 0
  %189 = call i32 @put_unaligned_le16(i32 %184, i64* %188)
  %190 = load i32, i32* %20, align 4
  %191 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %16, align 8
  %192 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %191, i32 0, i32 0
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 2
  %195 = call i32 @put_unaligned_le16(i32 %190, i64* %194)
  %196 = load i64, i64* %11, align 8
  %197 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %16, align 8
  %198 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 4
  store i64 %196, i64* %200, align 8
  %201 = load i32, i32* @GEN5_RESP_DATA_STRUCTURE_OFFSET, align 4
  %202 = load i32, i32* %20, align 4
  %203 = add nsw i32 %201, %202
  store i32 %203, i32* %19, align 4
  %204 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %205 = getelementptr inbounds [12 x i64], [12 x i64]* %17, i64 0, i64 0
  %206 = getelementptr inbounds [256 x i64], [256 x i64]* %18, i64 0, i64 0
  %207 = load i32, i32* @cyapa_sort_tsg_pip_app_resp_data, align 4
  %208 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %204, i64* %205, i32 96, i64* %206, i32* %19, i32 500, i32 %207, i32 1)
  store i32 %208, i32* %36, align 4
  %209 = load i32, i32* %36, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %229, label %211

211:                                              ; preds = %169
  %212 = load i32, i32* %19, align 4
  %213 = load i32, i32* @GEN5_RESP_DATA_STRUCTURE_OFFSET, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %229, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds [256 x i64], [256 x i64]* %18, i64 0, i64 0
  %217 = load i64, i64* %10, align 8
  %218 = call i32 @VALID_CMD_RESP_HEADER(i64* %216, i64 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %215
  %221 = getelementptr inbounds [256 x i64], [256 x i64]* %18, i64 0, i64 0
  %222 = call i32 @PIP_CMD_COMPLETE_SUCCESS(i64* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %220
  %225 = getelementptr inbounds [256 x i64], [256 x i64]* %18, i64 0, i64 6
  %226 = load i64, i64* %225, align 16
  %227 = load i64, i64* %11, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %239

229:                                              ; preds = %224, %220, %215, %211, %169
  %230 = load i32, i32* %36, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  %233 = load i32, i32* %36, align 4
  br label %237

234:                                              ; preds = %229
  %235 = load i32, i32* @EAGAIN, align 4
  %236 = sub nsw i32 0, %235
  br label %237

237:                                              ; preds = %234, %232
  %238 = phi i32 [ %233, %232 ], [ %236, %234 ]
  store i32 %238, i32* %8, align 4
  br label %463

239:                                              ; preds = %224
  %240 = getelementptr inbounds [256 x i64], [256 x i64]* %18, i64 0, i64 7
  %241 = call i32 @get_unaligned_le16(i64* %240)
  store i32 %241, i32* %20, align 4
  %242 = load i32, i32* %20, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  br label %371

245:                                              ; preds = %239
  %246 = getelementptr inbounds [256 x i64], [256 x i64]* %18, i64 0, i64 9
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @GEN5_PWC_DATA_ELEMENT_SIZE_MASK, align 8
  %249 = and i64 %247, %248
  %250 = trunc i64 %249 to i32
  %251 = load i32*, i32** %12, align 8
  store i32 %250, i32* %251, align 4
  %252 = load i32, i32* %20, align 4
  %253 = load i32*, i32** %12, align 8
  %254 = load i32, i32* %253, align 4
  %255 = icmp slt i32 %252, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %245
  %257 = load i32, i32* @EINVAL, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %8, align 4
  br label %463

259:                                              ; preds = %245
  %260 = load i32, i32* %24, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %288

262:                                              ; preds = %259
  %263 = load i64, i64* %11, align 8
  %264 = load i64, i64* @GEN5_RETRIEVE_SELF_CAP_PWC_DATA, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %288

266:                                              ; preds = %262
  %267 = getelementptr inbounds [256 x i64], [256 x i64]* %18, i64 0, i64 9
  %268 = load i64, i64* %267, align 8
  %269 = load i32, i32* @GEN5_RESP_DATA_STRUCTURE_OFFSET, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [256 x i64], [256 x i64]* %18, i64 0, i64 %270
  %272 = load i32*, i32** %12, align 8
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @cyapa_parse_structure_data(i64 %268, i64* %271, i32 %273)
  %275 = load i32*, i32** %13, align 8
  store i32 %274, i32* %275, align 4
  %276 = getelementptr inbounds [256 x i64], [256 x i64]* %18, i64 0, i64 9
  %277 = load i64, i64* %276, align 8
  %278 = load i32, i32* @GEN5_RESP_DATA_STRUCTURE_OFFSET, align 4
  %279 = load i32*, i32** %12, align 8
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %278, %280
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [256 x i64], [256 x i64]* %18, i64 0, i64 %282
  %284 = load i32*, i32** %12, align 8
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @cyapa_parse_structure_data(i64 %277, i64* %283, i32 %285)
  %287 = load i32*, i32** %14, align 8
  store i32 %286, i32* %287, align 4
  br label %371

288:                                              ; preds = %262, %259
  %289 = load i32, i32* %20, align 4
  %290 = load i32, i32* %22, align 4
  %291 = add nsw i32 %290, %289
  store i32 %291, i32* %22, align 4
  store i32 10, i32* %35, align 4
  br label %292

292:                                              ; preds = %364, %288
  %293 = load i32, i32* %35, align 4
  %294 = load i32, i32* %20, align 4
  %295 = load i32, i32* @GEN5_RESP_DATA_STRUCTURE_OFFSET, align 4
  %296 = add nsw i32 %294, %295
  %297 = icmp slt i32 %293, %296
  br i1 %297, label %298, label %369

298:                                              ; preds = %292
  %299 = getelementptr inbounds [256 x i64], [256 x i64]* %18, i64 0, i64 9
  %300 = load i64, i64* %299, align 8
  %301 = load i32, i32* %35, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [256 x i64], [256 x i64]* %18, i64 0, i64 %302
  %304 = load i32*, i32** %12, align 8
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @cyapa_parse_structure_data(i64 %300, i64* %303, i32 %305)
  store i32 %306, i32* %21, align 4
  %307 = load i32, i32* %21, align 4
  %308 = load i32*, i32** %14, align 8
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @min(i32 %307, i32 %309)
  %311 = load i32*, i32** %14, align 8
  store i32 %310, i32* %311, align 4
  %312 = load i32, i32* %21, align 4
  %313 = load i32*, i32** %13, align 8
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @max(i32 %312, i32 %314)
  %316 = load i32*, i32** %13, align 8
  store i32 %315, i32* %316, align 4
  %317 = load i64, i64* %11, align 8
  %318 = load i64, i64* @GEN5_RETRIEVE_MUTUAL_PWC_DATA, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %353

320:                                              ; preds = %298
  %321 = load i32, i32* %32, align 4
  %322 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %323 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = icmp slt i32 %321, %324
  br i1 %325, label %326, label %353

326:                                              ; preds = %320
  %327 = load i32, i32* %24, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %353

329:                                              ; preds = %326
  %330 = load i32, i32* %30, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %329
  %333 = load i32, i32* %21, align 4
  %334 = load i32, i32* %30, align 4
  %335 = sdiv i32 %334, 2
  %336 = icmp sgt i32 %333, %335
  br i1 %336, label %337, label %352

337:                                              ; preds = %332, %329
  %338 = load i32, i32* %21, align 4
  %339 = load i32, i32* %29, align 4
  %340 = call i32 @min(i32 %338, i32 %339)
  store i32 %340, i32* %29, align 4
  %341 = load i32, i32* %21, align 4
  %342 = load i32, i32* %28, align 4
  %343 = call i32 @max(i32 %341, i32 %342)
  store i32 %343, i32* %28, align 4
  %344 = load i32, i32* %21, align 4
  %345 = load i32, i32* %31, align 4
  %346 = add nsw i32 %345, %344
  store i32 %346, i32* %31, align 4
  %347 = load i32, i32* %32, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %32, align 4
  %349 = load i32, i32* %31, align 4
  %350 = load i32, i32* %32, align 4
  %351 = sdiv i32 %349, %350
  store i32 %351, i32* %30, align 4
  br label %352

352:                                              ; preds = %337, %332
  br label %353

353:                                              ; preds = %352, %326, %320, %298
  %354 = load i32, i32* %21, align 4
  %355 = load i32, i32* %25, align 4
  %356 = add nsw i32 %355, %354
  store i32 %356, i32* %25, align 4
  %357 = load i32, i32* %26, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %26, align 4
  %359 = load i32, i32* %26, align 4
  %360 = load i32, i32* %27, align 4
  %361 = icmp sge i32 %359, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %353
  br label %372

363:                                              ; preds = %353
  br label %364

364:                                              ; preds = %363
  %365 = load i32*, i32** %12, align 8
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %35, align 4
  %368 = add nsw i32 %367, %366
  store i32 %368, i32* %35, align 4
  br label %292

369:                                              ; preds = %292
  br label %370

370:                                              ; preds = %369
  br i1 true, label %169, label %371

371:                                              ; preds = %370, %266, %244
  br label %372

372:                                              ; preds = %371, %362
  %373 = load i32, i32* %26, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %372
  %376 = load i32, i32* %25, align 4
  %377 = load i32, i32* %26, align 4
  %378 = sdiv i32 %376, %377
  br label %380

379:                                              ; preds = %372
  br label %380

380:                                              ; preds = %379, %375
  %381 = phi i32 [ %378, %375 ], [ 0, %379 ]
  %382 = load i32*, i32** %15, align 8
  store i32 %381, i32* %382, align 4
  %383 = load i32, i32* %24, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %462

385:                                              ; preds = %380
  %386 = load i64, i64* %11, align 8
  %387 = load i64, i64* @GEN5_RETRIEVE_MUTUAL_PWC_DATA, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %462

389:                                              ; preds = %385
  %390 = load i32, i32* %32, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %389
  store i32 0, i32* %8, align 4
  br label %463

393:                                              ; preds = %389
  %394 = load i32, i32* %32, align 4
  %395 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %396 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = icmp eq i32 %394, %397
  br i1 %398, label %399, label %414

399:                                              ; preds = %393
  %400 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %401 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %399
  %405 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %406 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  br label %410

408:                                              ; preds = %399
  %409 = load i32, i32* %33, align 4
  br label %410

410:                                              ; preds = %408, %404
  %411 = phi i32 [ %407, %404 ], [ %409, %408 ]
  %412 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %413 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %412, i32 0, i32 1
  store i32 %411, i32* %413, align 4
  br label %455

414:                                              ; preds = %393
  %415 = load i32, i32* %32, align 4
  %416 = load i32, i32* %33, align 4
  %417 = icmp eq i32 %415, %416
  br i1 %417, label %418, label %436

418:                                              ; preds = %414
  %419 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %420 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %418
  %424 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %425 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  br label %429

427:                                              ; preds = %418
  %428 = load i32, i32* %33, align 4
  br label %429

429:                                              ; preds = %427, %423
  %430 = phi i32 [ %426, %423 ], [ %428, %427 ]
  %431 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %432 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %431, i32 0, i32 1
  store i32 %430, i32* %432, align 4
  %433 = load i32, i32* %33, align 4
  %434 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %435 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %434, i32 0, i32 0
  store i32 %433, i32* %435, align 4
  br label %454

436:                                              ; preds = %414
  %437 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %438 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %445

441:                                              ; preds = %436
  %442 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %443 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  br label %447

445:                                              ; preds = %436
  %446 = load i32, i32* %34, align 4
  br label %447

447:                                              ; preds = %445, %441
  %448 = phi i32 [ %444, %441 ], [ %446, %445 ]
  %449 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %450 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %449, i32 0, i32 1
  store i32 %448, i32* %450, align 4
  %451 = load i32, i32* %32, align 4
  %452 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %453 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %452, i32 0, i32 0
  store i32 %451, i32* %453, align 4
  br label %454

454:                                              ; preds = %447, %429
  br label %455

455:                                              ; preds = %454, %410
  %456 = load i32, i32* %29, align 4
  %457 = load i32*, i32** %14, align 8
  store i32 %456, i32* %457, align 4
  %458 = load i32, i32* %28, align 4
  %459 = load i32*, i32** %13, align 8
  store i32 %458, i32* %459, align 4
  %460 = load i32, i32* %30, align 4
  %461 = load i32*, i32** %15, align 8
  store i32 %460, i32* %461, align 4
  br label %462

462:                                              ; preds = %455, %385, %380
  store i32 0, i32* %8, align 4
  br label %463

463:                                              ; preds = %462, %392, %256, %237, %60
  %464 = load i32, i32* %8, align 4
  ret i32 %464
}

declare dso_local i32 @cyapa_gen5_guess_electrodes(%struct.cyapa*, i32*, i32*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i64*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa*, i64*, i32, i64*, i32*, i32, i32, i32) #1

declare dso_local i32 @VALID_CMD_RESP_HEADER(i64*, i64) #1

declare dso_local i32 @PIP_CMD_COMPLETE_SUCCESS(i64*) #1

declare dso_local i32 @get_unaligned_le16(i64*) #1

declare dso_local i32 @cyapa_parse_structure_data(i64, i64*, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
