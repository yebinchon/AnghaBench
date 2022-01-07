; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_finetuneDQSI.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_finetuneDQSI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@CBR_SIZE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_private*)* @finetuneDQSI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finetuneDQSI(%struct.ast_private* %0) #0 {
  %2 = alloca %struct.ast_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [32 x [2 x [2 x i32]]], align 16
  %15 = alloca [2 x [76 x i8]], align 16
  store %struct.ast_private* %0, %struct.ast_private** %2, align 8
  %16 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %17 = call i32 @ast_mindwm(%struct.ast_private* %16, i32 510525452)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %19 = call i32 @ast_mindwm(%struct.ast_private* %18, i32 510525464)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 65535
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ast_moutdwm(%struct.ast_private* %22, i32 510525464, i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %37, %1
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 76
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = getelementptr inbounds [2 x [76 x i8]], [2 x [76 x i8]]* %15, i64 0, i64 0
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [76 x i8], [76 x i8]* %29, i64 0, i64 %31
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds [2 x [76 x i8]], [2 x [76 x i8]]* %15, i64 0, i64 1
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [76 x i8], [76 x i8]* %33, i64 0, i64 %35
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %25

40:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %65, %40
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %46
  %48 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %47, i64 0, i64 0
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 0, i64 0
  store i32 255, i32* %49, align 16
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %51
  %53 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %52, i64 0, i64 0
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %53, i64 0, i64 1
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %56
  %58 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %57, i64 0, i64 1
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %58, i64 0, i64 0
  store i32 255, i32* %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %61
  %63 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %62, i64 0, i64 1
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %63, i64 0, i64 1
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %44
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %41

68:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %212, %68
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 32
  br i1 %71, label %72, label %215

72:                                               ; preds = %69
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %73, align 4
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %74, align 4
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %197, %72
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %200

78:                                               ; preds = %75
  %79 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %80 = call i32 @ast_moutdwm(%struct.ast_private* %79, i32 510525452, i32 0)
  %81 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %5, align 4
  %84 = shl i32 %83, 16
  %85 = or i32 %82, %84
  %86 = load i32, i32* %4, align 4
  %87 = shl i32 %86, 23
  %88 = or i32 %85, %87
  %89 = call i32 @ast_moutdwm(%struct.ast_private* %81, i32 510525464, i32 %88)
  %90 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @ast_moutdwm(%struct.ast_private* %90, i32 510525452, i32 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %193, %78
  %94 = load i32, i32* %3, align 4
  %95 = icmp slt i32 %94, 76
  br i1 %95, label %96, label %196

96:                                               ; preds = %93
  %97 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %98 = load i32, i32* %3, align 4
  %99 = shl i32 %98, 16
  %100 = or i32 4864, %99
  %101 = load i32, i32* %3, align 4
  %102 = shl i32 %101, 24
  %103 = or i32 %100, %102
  %104 = call i32 @ast_moutdwm(%struct.ast_private* %97, i32 510525544, i32 %103)
  %105 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %106 = call i32 @ast_moutdwm(%struct.ast_private* %105, i32 510525552, i32 0)
  %107 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %108 = load i32, i32* @CBR_SIZE0, align 4
  %109 = call i32 @ast_moutdwm(%struct.ast_private* %107, i32 510525556, i32 %108)
  %110 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %111 = call i64 @cbr_scan3(%struct.ast_private* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %169

113:                                              ; preds = %96
  %114 = load i32, i32* %3, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %196

117:                                              ; preds = %113
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [2 x [76 x i8]], [2 x [76 x i8]]* %15, i64 0, i64 %124
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [76 x i8], [76 x i8]* %125, i64 0, i64 %127
  store i8 80, i8* %128, align 1
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %131
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %132, i64 0, i64 %134
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %135, i64 0, i64 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %129, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %117
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %142
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %143, i64 0, i64 %145
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %146, i64 0, i64 0
  store i32 %140, i32* %147, align 8
  br label %148

148:                                              ; preds = %139, %117
  %149 = load i32, i32* %3, align 4
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %151
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %152, i64 0, i64 %154
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %155, i64 0, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp sgt i32 %149, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %148
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %162
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %163, i64 0, i64 %165
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %166, i64 0, i64 1
  store i32 %160, i32* %167, align 4
  br label %168

168:                                              ; preds = %159, %148
  br label %192

169:                                              ; preds = %96
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp sge i32 %173, 5
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %196

176:                                              ; preds = %169
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %178
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %179, i64 0, i64 %181
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %182, i64 0, i64 0
  store i32 255, i32* %183, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %185
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %186, i64 0, i64 %188
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %189, i64 0, i64 1
  store i32 0, i32* %190, align 4
  br label %191

191:                                              ; preds = %176
  br label %192

192:                                              ; preds = %191, %168
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %3, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %3, align 4
  br label %93

196:                                              ; preds = %175, %116, %93
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %4, align 4
  br label %75

200:                                              ; preds = %75
  %201 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %200
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load i32, i32* %5, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %208, %204, %200
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %5, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %5, align 4
  br label %69

215:                                              ; preds = %69
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %394, %215
  %217 = load i32, i32* %5, align 4
  %218 = icmp slt i32 %217, 32
  br i1 %218, label %219, label %397

219:                                              ; preds = %216
  store i32 0, i32* %4, align 4
  br label %220

220:                                              ; preds = %390, %219
  %221 = load i32, i32* %4, align 4
  %222 = icmp slt i32 %221, 2
  br i1 %222, label %223, label %393

223:                                              ; preds = %220
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %225
  %227 = load i32, i32* %4, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %226, i64 0, i64 %228
  %230 = getelementptr inbounds [2 x i32], [2 x i32]* %229, i64 0, i64 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %233
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %234, i64 0, i64 %236
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %237, i64 0, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp sgt i32 %231, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %223
  br label %390

242:                                              ; preds = %223
  %243 = load i32, i32* %5, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %244
  %246 = load i32, i32* %4, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %245, i64 0, i64 %247
  %249 = getelementptr inbounds [2 x i32], [2 x i32]* %248, i64 0, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %252
  %254 = load i32, i32* %4, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %253, i64 0, i64 %255
  %257 = getelementptr inbounds [2 x i32], [2 x i32]* %256, i64 0, i64 0
  %258 = load i32, i32* %257, align 8
  %259 = sub nsw i32 %250, %258
  store i32 %259, i32* %9, align 4
  %260 = load i32, i32* %9, align 4
  %261 = add nsw i32 %260, 2
  %262 = load i32, i32* %12, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %242
  br label %390

265:                                              ; preds = %242
  %266 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %266, align 4
  %267 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %267, align 4
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %269
  %271 = load i32, i32* %4, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %270, i64 0, i64 %272
  %274 = getelementptr inbounds [2 x i32], [2 x i32]* %273, i64 0, i64 0
  %275 = load i32, i32* %274, align 8
  store i32 %275, i32* %3, align 4
  br label %276

276:                                              ; preds = %292, %265
  %277 = load i32, i32* %3, align 4
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %289

279:                                              ; preds = %276
  %280 = load i32, i32* %4, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [2 x [76 x i8]], [2 x [76 x i8]]* %15, i64 0, i64 %281
  %283 = load i32, i32* %3, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [76 x i8], [76 x i8]* %282, i64 0, i64 %284
  %286 = load i8, i8* %285, align 1
  %287 = sext i8 %286 to i32
  %288 = icmp ne i32 %287, 0
  br label %289

289:                                              ; preds = %279, %276
  %290 = phi i1 [ false, %276 ], [ %288, %279 ]
  br i1 %290, label %291, label %298

291:                                              ; preds = %289
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %3, align 4
  %294 = add nsw i32 %293, -1
  store i32 %294, i32* %3, align 4
  %295 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %295, align 4
  br label %276

298:                                              ; preds = %289
  %299 = load i32, i32* %5, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [32 x [2 x [2 x i32]]], [32 x [2 x [2 x i32]]]* %14, i64 0, i64 %300
  %302 = load i32, i32* %4, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %301, i64 0, i64 %303
  %305 = getelementptr inbounds [2 x i32], [2 x i32]* %304, i64 0, i64 1
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %3, align 4
  br label %307

307:                                              ; preds = %323, %298
  %308 = load i32, i32* %3, align 4
  %309 = icmp slt i32 %308, 76
  br i1 %309, label %310, label %320

310:                                              ; preds = %307
  %311 = load i32, i32* %4, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [2 x [76 x i8]], [2 x [76 x i8]]* %15, i64 0, i64 %312
  %314 = load i32, i32* %3, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [76 x i8], [76 x i8]* %313, i64 0, i64 %315
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp ne i32 %318, 0
  br label %320

320:                                              ; preds = %310, %307
  %321 = phi i1 [ false, %307 ], [ %319, %310 ]
  br i1 %321, label %322, label %329

322:                                              ; preds = %320
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %3, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %3, align 4
  %326 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %326, align 4
  br label %307

329:                                              ; preds = %320
  %330 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %331 = load i32, i32* %330, align 4
  %332 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %333 = load i32, i32* %332, align 4
  %334 = icmp sgt i32 %331, %333
  br i1 %334, label %335, label %339

335:                                              ; preds = %329
  %336 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %337 = load i32, i32* %336, align 4
  %338 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %337, i32* %338, align 4
  br label %339

339:                                              ; preds = %335, %329
  %340 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %340, align 4
  %341 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %13, align 4
  %344 = icmp sgt i32 %342, %343
  br i1 %344, label %345, label %351

345:                                              ; preds = %339
  %346 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* %13, align 4
  %349 = sub nsw i32 %347, %348
  %350 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %349, i32* %350, align 4
  br label %351

351:                                              ; preds = %345, %339
  %352 = load i32, i32* %9, align 4
  %353 = load i32, i32* %12, align 4
  %354 = add nsw i32 %353, 1
  %355 = icmp sgt i32 %352, %354
  br i1 %355, label %356, label %370

356:                                              ; preds = %351
  %357 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %358 = load i32, i32* %357, align 4
  %359 = icmp sgt i32 %358, 0
  br i1 %359, label %364, label %360

360:                                              ; preds = %356
  %361 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %362 = load i32, i32* %361, align 4
  %363 = icmp sgt i32 %362, 8
  br i1 %363, label %364, label %370

364:                                              ; preds = %360, %356
  %365 = load i32, i32* %9, align 4
  store i32 %365, i32* %12, align 4
  %366 = load i32, i32* %5, align 4
  store i32 %366, i32* %10, align 4
  %367 = load i32, i32* %4, align 4
  store i32 %367, i32* %11, align 4
  %368 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %369 = load i32, i32* %368, align 4
  store i32 %369, i32* %13, align 4
  br label %389

370:                                              ; preds = %360, %351
  %371 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %372 = load i32, i32* %371, align 4
  %373 = icmp sgt i32 %372, 1
  br i1 %373, label %374, label %388

374:                                              ; preds = %370
  %375 = load i32, i32* %13, align 4
  %376 = icmp slt i32 %375, 8
  br i1 %376, label %377, label %388

377:                                              ; preds = %374
  %378 = load i32, i32* %9, align 4
  %379 = load i32, i32* %12, align 4
  %380 = icmp sgt i32 %378, %379
  br i1 %380, label %381, label %383

381:                                              ; preds = %377
  %382 = load i32, i32* %9, align 4
  store i32 %382, i32* %12, align 4
  br label %383

383:                                              ; preds = %381, %377
  %384 = load i32, i32* %5, align 4
  store i32 %384, i32* %10, align 4
  %385 = load i32, i32* %4, align 4
  store i32 %385, i32* %11, align 4
  %386 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %387 = load i32, i32* %386, align 4
  store i32 %387, i32* %13, align 4
  br label %388

388:                                              ; preds = %383, %374, %370
  br label %389

389:                                              ; preds = %388, %364
  br label %390

390:                                              ; preds = %389, %264, %241
  %391 = load i32, i32* %4, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %4, align 4
  br label %220

393:                                              ; preds = %220
  br label %394

394:                                              ; preds = %393
  %395 = load i32, i32* %5, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %5, align 4
  br label %216

397:                                              ; preds = %216
  %398 = load i32, i32* %6, align 4
  %399 = load i32, i32* %10, align 4
  %400 = shl i32 %399, 16
  %401 = or i32 %398, %400
  %402 = load i32, i32* %11, align 4
  %403 = shl i32 %402, 23
  %404 = or i32 %401, %403
  store i32 %404, i32* %6, align 4
  %405 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %406 = load i32, i32* %6, align 4
  %407 = call i32 @ast_moutdwm(%struct.ast_private* %405, i32 510525464, i32 %406)
  ret void
}

declare dso_local i32 @ast_mindwm(%struct.ast_private*, i32) #1

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i64 @cbr_scan3(%struct.ast_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
