; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_edesc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_edesc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_edesc = type { i32, i32, i32, i32*, i8*, i8*, i32 }
%struct.device = type { i32 }
%struct.scatterlist = type { i32 }
%struct.talitos_private = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TALITOS1_MAX_DATA_LEN = common dso_local global i32 0, align 4
@TALITOS2_MAX_DATA_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"length exceeds h/w max limit\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid number of src SG.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid number of dst SG.\0A\00", align 1
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.talitos_edesc* (%struct.device*, %struct.scatterlist*, %struct.scatterlist*, i32*, i32, i32, i32, i32, i32, i32, i32)* @talitos_edesc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.talitos_edesc* @talitos_edesc_alloc(%struct.device* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.talitos_edesc*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.talitos_edesc*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.talitos_private*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %13, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %14, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i8* null, i8** %31, align 8
  %36 = load i32, i32* %22, align 4
  %37 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %11
  %41 = load i32, i32* @GFP_KERNEL, align 4
  br label %44

42:                                               ; preds = %11
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %32, align 4
  %46 = load %struct.device*, %struct.device** %13, align 8
  %47 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %46)
  store %struct.talitos_private* %47, %struct.talitos_private** %33, align 8
  %48 = load %struct.talitos_private*, %struct.talitos_private** %33, align 8
  %49 = call i32 @has_ftr_sec1(%struct.talitos_private* %48)
  store i32 %49, i32* %34, align 4
  %50 = load i32, i32* %34, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @TALITOS1_MAX_DATA_LEN, align 4
  br label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @TALITOS2_MAX_DATA_LEN, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %35, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %19, align 4
  %60 = add i32 %58, %59
  %61 = load i32, i32* %35, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.device*, %struct.device** %13, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  %68 = call %struct.talitos_edesc* @ERR_PTR(i32 %67)
  store %struct.talitos_edesc* %68, %struct.talitos_edesc** %12, align 8
  br label %304

69:                                               ; preds = %56
  %70 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %71 = icmp ne %struct.scatterlist* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %74 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %75 = icmp eq %struct.scatterlist* %73, %74
  br i1 %75, label %76, label %108

76:                                               ; preds = %72, %69
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %18, align 4
  %79 = add i32 %77, %78
  %80 = load i32, i32* %19, align 4
  %81 = add i32 %79, %80
  store i32 %81, i32* %29, align 4
  %82 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %83 = load i32, i32* %29, align 4
  %84 = call i32 @sg_nents_for_len(%struct.scatterlist* %82, i32 %83)
  store i32 %84, i32* %25, align 4
  %85 = load i32, i32* %25, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = load %struct.device*, %struct.device** %13, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  %92 = call %struct.talitos_edesc* @ERR_PTR(i32 %91)
  store %struct.talitos_edesc* %92, %struct.talitos_edesc** %12, align 8
  br label %304

93:                                               ; preds = %76
  %94 = load i32, i32* %25, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %99

97:                                               ; preds = %93
  %98 = load i32, i32* %25, align 4
  br label %99

99:                                               ; preds = %97, %96
  %100 = phi i32 [ 0, %96 ], [ %98, %97 ]
  store i32 %100, i32* %25, align 4
  %101 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %102 = icmp ne %struct.scatterlist* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* %25, align 4
  br label %106

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i32 [ %104, %103 ], [ 0, %105 ]
  store i32 %107, i32* %26, align 4
  store i32 0, i32* %30, align 4
  br label %169

108:                                              ; preds = %72
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %18, align 4
  %111 = add i32 %109, %110
  %112 = load i32, i32* %23, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %117

115:                                              ; preds = %108
  %116 = load i32, i32* %19, align 4
  br label %117

117:                                              ; preds = %115, %114
  %118 = phi i32 [ 0, %114 ], [ %116, %115 ]
  %119 = add i32 %111, %118
  store i32 %119, i32* %29, align 4
  %120 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %121 = load i32, i32* %29, align 4
  %122 = call i32 @sg_nents_for_len(%struct.scatterlist* %120, i32 %121)
  store i32 %122, i32* %25, align 4
  %123 = load i32, i32* %25, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load %struct.device*, %struct.device** %13, align 8
  %127 = call i32 @dev_err(%struct.device* %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  %130 = call %struct.talitos_edesc* @ERR_PTR(i32 %129)
  store %struct.talitos_edesc* %130, %struct.talitos_edesc** %12, align 8
  br label %304

131:                                              ; preds = %117
  %132 = load i32, i32* %25, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %137

135:                                              ; preds = %131
  %136 = load i32, i32* %25, align 4
  br label %137

137:                                              ; preds = %135, %134
  %138 = phi i32 [ 0, %134 ], [ %136, %135 ]
  store i32 %138, i32* %25, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %18, align 4
  %141 = add i32 %139, %140
  %142 = load i32, i32* %23, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = load i32, i32* %19, align 4
  br label %147

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %146, %144
  %148 = phi i32 [ %145, %144 ], [ 0, %146 ]
  %149 = add i32 %141, %148
  store i32 %149, i32* %30, align 4
  %150 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %151 = load i32, i32* %30, align 4
  %152 = call i32 @sg_nents_for_len(%struct.scatterlist* %150, i32 %151)
  store i32 %152, i32* %26, align 4
  %153 = load i32, i32* %26, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %147
  %156 = load %struct.device*, %struct.device** %13, align 8
  %157 = call i32 @dev_err(%struct.device* %156, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  %160 = call %struct.talitos_edesc* @ERR_PTR(i32 %159)
  store %struct.talitos_edesc* %160, %struct.talitos_edesc** %12, align 8
  br label %304

161:                                              ; preds = %147
  %162 = load i32, i32* %26, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  br label %167

165:                                              ; preds = %161
  %166 = load i32, i32* %26, align 4
  br label %167

167:                                              ; preds = %165, %164
  %168 = phi i32 [ 0, %164 ], [ %166, %165 ]
  store i32 %168, i32* %26, align 4
  br label %169

169:                                              ; preds = %167, %106
  store i32 48, i32* %27, align 4
  %170 = load i32, i32* %25, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %26, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %23, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %214, label %178

178:                                              ; preds = %175, %172, %169
  %179 = load i32, i32* %34, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %199

181:                                              ; preds = %178
  %182 = load i32, i32* %25, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = load i32, i32* %29, align 4
  br label %187

186:                                              ; preds = %181
  br label %187

187:                                              ; preds = %186, %184
  %188 = phi i32 [ %185, %184 ], [ 0, %186 ]
  %189 = load i32, i32* %26, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i32, i32* %30, align 4
  br label %194

193:                                              ; preds = %187
  br label %194

194:                                              ; preds = %193, %191
  %195 = phi i32 [ %192, %191 ], [ 0, %193 ]
  %196 = add nsw i32 %188, %195
  %197 = load i32, i32* %19, align 4
  %198 = add i32 %196, %197
  store i32 %198, i32* %28, align 4
  br label %210

199:                                              ; preds = %178
  %200 = load i32, i32* %25, align 4
  %201 = load i32, i32* %26, align 4
  %202 = add nsw i32 %200, %201
  %203 = add nsw i32 %202, 2
  %204 = sext i32 %203 to i64
  %205 = mul i64 %204, 4
  %206 = load i32, i32* %19, align 4
  %207 = zext i32 %206 to i64
  %208 = add i64 %205, %207
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %28, align 4
  br label %210

210:                                              ; preds = %199, %194
  %211 = load i32, i32* %28, align 4
  %212 = load i32, i32* %27, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %27, align 4
  br label %215

214:                                              ; preds = %175
  store i32 0, i32* %28, align 4
  br label %215

215:                                              ; preds = %214, %210
  %216 = load i32, i32* %21, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = load i32, i32* %19, align 4
  br label %221

220:                                              ; preds = %215
  br label %221

221:                                              ; preds = %220, %218
  %222 = phi i32 [ %219, %218 ], [ 0, %220 ]
  %223 = load i32, i32* %27, align 4
  %224 = add i32 %223, %222
  store i32 %224, i32* %27, align 4
  %225 = load i32, i32* %34, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %221
  %228 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %229 = icmp ne %struct.scatterlist* %228, null
  br i1 %229, label %235, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %27, align 4
  %232 = sext i32 %231 to i64
  %233 = add i64 %232, 4
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %27, align 4
  br label %235

235:                                              ; preds = %230, %227, %221
  %236 = load i32, i32* %20, align 4
  %237 = load i32, i32* %27, align 4
  %238 = add i32 %237, %236
  store i32 %238, i32* %27, align 4
  %239 = load i32, i32* %27, align 4
  %240 = load i32, i32* @GFP_DMA, align 4
  %241 = load i32, i32* %32, align 4
  %242 = or i32 %240, %241
  %243 = call %struct.talitos_edesc* @kmalloc(i32 %239, i32 %242)
  store %struct.talitos_edesc* %243, %struct.talitos_edesc** %24, align 8
  %244 = load %struct.talitos_edesc*, %struct.talitos_edesc** %24, align 8
  %245 = icmp ne %struct.talitos_edesc* %244, null
  br i1 %245, label %250, label %246

246:                                              ; preds = %235
  %247 = load i32, i32* @ENOMEM, align 4
  %248 = sub nsw i32 0, %247
  %249 = call %struct.talitos_edesc* @ERR_PTR(i32 %248)
  store %struct.talitos_edesc* %249, %struct.talitos_edesc** %12, align 8
  br label %304

250:                                              ; preds = %235
  %251 = load i32, i32* %20, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %271

253:                                              ; preds = %250
  %254 = load %struct.talitos_edesc*, %struct.talitos_edesc** %24, align 8
  %255 = bitcast %struct.talitos_edesc* %254 to i32*
  %256 = load i32, i32* %27, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %20, align 4
  %260 = zext i32 %259 to i64
  %261 = sub i64 0, %260
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  %263 = load i32*, i32** %16, align 8
  %264 = load i32, i32* %20, align 4
  %265 = call i32* @memcpy(i32* %262, i32* %263, i32 %264)
  store i32* %265, i32** %16, align 8
  %266 = load %struct.device*, %struct.device** %13, align 8
  %267 = load i32*, i32** %16, align 8
  %268 = load i32, i32* %20, align 4
  %269 = load i32, i32* @DMA_TO_DEVICE, align 4
  %270 = call i8* @dma_map_single(%struct.device* %266, i32* %267, i32 %268, i32 %269)
  store i8* %270, i8** %31, align 8
  br label %271

271:                                              ; preds = %253, %250
  %272 = load %struct.talitos_edesc*, %struct.talitos_edesc** %24, align 8
  %273 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %272, i32 0, i32 6
  %274 = call i32 @memset(i32* %273, i32 0, i32 4)
  %275 = load i32, i32* %25, align 4
  %276 = load %struct.talitos_edesc*, %struct.talitos_edesc** %24, align 8
  %277 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 8
  %278 = load i32, i32* %26, align 4
  %279 = load %struct.talitos_edesc*, %struct.talitos_edesc** %24, align 8
  %280 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 4
  %281 = load i8*, i8** %31, align 8
  %282 = load %struct.talitos_edesc*, %struct.talitos_edesc** %24, align 8
  %283 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %282, i32 0, i32 5
  store i8* %281, i8** %283, align 8
  %284 = load i32, i32* %28, align 4
  %285 = load %struct.talitos_edesc*, %struct.talitos_edesc** %24, align 8
  %286 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %285, i32 0, i32 2
  store i32 %284, i32* %286, align 8
  %287 = load i32, i32* %28, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %302

289:                                              ; preds = %271
  %290 = load %struct.device*, %struct.device** %13, align 8
  %291 = load %struct.talitos_edesc*, %struct.talitos_edesc** %24, align 8
  %292 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %291, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 0
  %295 = load %struct.talitos_edesc*, %struct.talitos_edesc** %24, align 8
  %296 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %299 = call i8* @dma_map_single(%struct.device* %290, i32* %294, i32 %297, i32 %298)
  %300 = load %struct.talitos_edesc*, %struct.talitos_edesc** %24, align 8
  %301 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %300, i32 0, i32 4
  store i8* %299, i8** %301, align 8
  br label %302

302:                                              ; preds = %289, %271
  %303 = load %struct.talitos_edesc*, %struct.talitos_edesc** %24, align 8
  store %struct.talitos_edesc* %303, %struct.talitos_edesc** %12, align 8
  br label %304

304:                                              ; preds = %302, %246, %155, %125, %87, %63
  %305 = load %struct.talitos_edesc*, %struct.talitos_edesc** %12, align 8
  ret %struct.talitos_edesc* %305
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.talitos_edesc* @ERR_PTR(i32) #1

declare dso_local i32 @sg_nents_for_len(%struct.scatterlist*, i32) #1

declare dso_local %struct.talitos_edesc* @kmalloc(i32, i32) #1

declare dso_local i32* @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
