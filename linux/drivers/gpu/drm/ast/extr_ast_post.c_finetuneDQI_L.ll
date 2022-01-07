; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_finetuneDQI_L.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_finetuneDQI_L.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }
%struct.ast2300_dram_param = type { i32 }

@CBR_SIZE1 = common dso_local global i32 0, align 4
@CBR_THRESHOLD2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_private*, %struct.ast2300_dram_param*)* @finetuneDQI_L to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finetuneDQI_L(%struct.ast_private* %0, %struct.ast2300_dram_param* %1) #0 {
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca %struct.ast2300_dram_param*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca [16 x i32], align 16
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %3, align 8
  store %struct.ast2300_dram_param* %1, %struct.ast2300_dram_param** %4, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %151, %2
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %26, %15
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %21
  store i32 255, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %24
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  br label %16

29:                                               ; preds = %16
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %99, %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 76
  br i1 %32, label %33, label %102

33:                                               ; preds = %30
  %34 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %35, 16
  %37 = or i32 5120, %36
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %38, 24
  %40 = or i32 %37, %39
  %41 = call i32 @ast_moutdwm(%struct.ast_private* %34, i32 510525544, i32 %40)
  %42 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %43 = load i32, i32* @CBR_SIZE1, align 4
  %44 = call i32 @ast_moutdwm(%struct.ast_private* %42, i32 510525556, i32 %43)
  %45 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %46 = call i32 @cbr_scan2(%struct.ast_private* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %33
  store i32 65537, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %86, %49
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 16
  br i1 %52, label %53, label %89

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %53
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %68
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %58
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %80
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %70
  br label %83

83:                                               ; preds = %82, %53
  %84 = load i32, i32* %11, align 4
  %85 = shl i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %50

89:                                               ; preds = %50
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %98

92:                                               ; preds = %33
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @CBR_THRESHOLD2, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %102

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %89
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %30

102:                                              ; preds = %96, %30
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %103, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %140, %102
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %105, 16
  br i1 %106, label %107, label %143

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %111, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %107
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %121, %125
  %127 = load i32, i32* @CBR_THRESHOLD2, align 4
  %128 = icmp sge i32 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %117
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, %133
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %129, %117, %107
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %104

143:                                              ; preds = %104
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  %146 = icmp sgt i32 %144, 10
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %153

148:                                              ; preds = %143
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 16
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %15

152:                                              ; preds = %148
  store i32 1, i32* %14, align 4
  br label %153

153:                                              ; preds = %152, %147
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = ashr i32 %155, 4
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %156, i32* %157, align 4
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %159, i32* %160, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %161

161:                                              ; preds = %228, %153
  %162 = load i32, i32* %10, align 4
  %163 = icmp slt i32 %162, 8
  br i1 %163, label %164, label %231

164:                                              ; preds = %161
  %165 = load i32, i32* %9, align 4
  %166 = ashr i32 %165, 3
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %170, %174
  br i1 %175, label %176, label %227

176:                                              ; preds = %164
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %180, %184
  %186 = load i32, i32* @CBR_THRESHOLD2, align 4
  %187 = icmp sge i32 %185, %186
  br i1 %187, label %188, label %227

188:                                              ; preds = %176
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %8, align 4
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp sge i32 %194, %195
  br i1 %196, label %197, label %208

197:                                              ; preds = %188
  %198 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %8, align 4
  %201 = sub nsw i32 %199, %200
  %202 = mul nsw i32 %201, 19
  %203 = ashr i32 %202, 5
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp sgt i32 %204, 3
  br i1 %205, label %206, label %207

206:                                              ; preds = %197
  store i32 3, i32* %8, align 4
  br label %207

207:                                              ; preds = %206, %197
  br label %222

208:                                              ; preds = %188
  %209 = load i32, i32* %8, align 4
  %210 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 %209, %211
  %213 = mul nsw i32 %212, 19
  %214 = ashr i32 %213, 5
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp sgt i32 %215, 4
  br i1 %216, label %217, label %218

217:                                              ; preds = %208
  store i32 4, i32* %8, align 4
  br label %218

218:                                              ; preds = %217, %208
  %219 = load i32, i32* %8, align 4
  %220 = sub nsw i32 8, %219
  %221 = and i32 %220, 7
  store i32 %221, i32* %8, align 4
  br label %222

222:                                              ; preds = %218, %207
  %223 = load i32, i32* %8, align 4
  %224 = shl i32 %223, 21
  %225 = load i32, i32* %9, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %9, align 4
  br label %227

227:                                              ; preds = %222, %176, %164
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %10, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %10, align 4
  br label %161

231:                                              ; preds = %161
  %232 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @ast_moutdwm(%struct.ast_private* %232, i32 510525568, i32 %233)
  store i32 0, i32* %9, align 4
  store i32 8, i32* %10, align 4
  br label %235

235:                                              ; preds = %308, %231
  %236 = load i32, i32* %10, align 4
  %237 = icmp slt i32 %236, 16
  br i1 %237, label %238, label %311

238:                                              ; preds = %235
  %239 = load i32, i32* %9, align 4
  %240 = ashr i32 %239, 3
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = icmp sgt i32 %244, %248
  br i1 %249, label %250, label %307

250:                                              ; preds = %238
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = sub nsw i32 %254, %258
  %260 = load i32, i32* @CBR_THRESHOLD2, align 4
  %261 = icmp sge i32 %259, %260
  br i1 %261, label %262, label %307

262:                                              ; preds = %250
  %263 = load i32, i32* %10, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %264
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %8, align 4
  %267 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %8, align 4
  %270 = icmp sge i32 %268, %269
  br i1 %270, label %271, label %286

271:                                              ; preds = %262
  %272 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %8, align 4
  %275 = sub nsw i32 %273, %274
  %276 = mul nsw i32 %275, 19
  %277 = ashr i32 %276, 5
  store i32 %277, i32* %8, align 4
  %278 = load i32, i32* %8, align 4
  %279 = icmp sgt i32 %278, 3
  br i1 %279, label %280, label %281

280:                                              ; preds = %271
  store i32 3, i32* %8, align 4
  br label %285

281:                                              ; preds = %271
  %282 = load i32, i32* %8, align 4
  %283 = sub nsw i32 %282, 1
  %284 = and i32 %283, 7
  store i32 %284, i32* %8, align 4
  br label %285

285:                                              ; preds = %281, %280
  br label %302

286:                                              ; preds = %262
  %287 = load i32, i32* %8, align 4
  %288 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 %287, %289
  %291 = mul nsw i32 %290, 19
  %292 = ashr i32 %291, 5
  store i32 %292, i32* %8, align 4
  %293 = load i32, i32* %8, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %8, align 4
  %295 = load i32, i32* %8, align 4
  %296 = icmp sgt i32 %295, 4
  br i1 %296, label %297, label %298

297:                                              ; preds = %286
  store i32 4, i32* %8, align 4
  br label %298

298:                                              ; preds = %297, %286
  %299 = load i32, i32* %8, align 4
  %300 = sub nsw i32 8, %299
  %301 = and i32 %300, 7
  store i32 %301, i32* %8, align 4
  br label %302

302:                                              ; preds = %298, %285
  %303 = load i32, i32* %8, align 4
  %304 = shl i32 %303, 21
  %305 = load i32, i32* %9, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %9, align 4
  br label %307

307:                                              ; preds = %302, %250, %238
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %10, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %10, align 4
  br label %235

311:                                              ; preds = %235
  %312 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %313 = load i32, i32* %9, align 4
  %314 = call i32 @ast_moutdwm(%struct.ast_private* %312, i32 510525572, i32 %313)
  %315 = load i32, i32* %14, align 4
  ret i32 %315
}

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @cbr_scan2(%struct.ast_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
