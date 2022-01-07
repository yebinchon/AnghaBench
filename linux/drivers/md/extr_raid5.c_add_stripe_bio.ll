; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_add_stripe_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_add_stripe_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i32, i32, %struct.TYPE_5__*, i32, i64, i64, i64, i32, %struct.r5conf* }
%struct.TYPE_5__ = type { i64, i32, %struct.bio*, %struct.bio*, i32 }
%struct.r5conf = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.bio = type { %struct.TYPE_4__, %struct.bio*, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"adding bi b#%llu to stripe s#%llu\0A\00", align 1
@STRIPE_BATCH_READY = common dso_local global i32 0, align 4
@STRIPE_SECTORS = common dso_local global i64 0, align 8
@R5_OVERWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"added bi b#%llu to stripe s#%llu, disk %d.\0A\00", align 1
@STRIPE_BITMAP_PENDING = common dso_local global i32 0, align 4
@STRIPE_BIT_DELAY = common dso_local global i32 0, align 4
@R5_Overlap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe_head*, %struct.bio*, i32, i32, i32)* @add_stripe_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_stripe_bio(%struct.stripe_head* %0, %struct.bio* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.stripe_head*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bio**, align 8
  %13 = alloca %struct.r5conf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %7, align 8
  store %struct.bio* %1, %struct.bio** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %22 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %21, i32 0, i32 9
  %23 = load %struct.r5conf*, %struct.r5conf** %22, align 8
  store %struct.r5conf* %23, %struct.r5conf** %13, align 8
  store i32 0, i32* %14, align 4
  %24 = load %struct.bio*, %struct.bio** %8, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %29 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %30)
  %32 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %33 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %32, i32 0, i32 2
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.bio*, %struct.bio** %8, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %39 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  store i32 %37, i32* %44, align 8
  %45 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %46 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %5
  br label %415

50:                                               ; preds = %5
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %55 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %54, i32 0, i32 3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store %struct.bio** %60, %struct.bio*** %12, align 8
  %61 = load %struct.bio**, %struct.bio*** %12, align 8
  %62 = load %struct.bio*, %struct.bio** %61, align 8
  %63 = icmp eq %struct.bio* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  store i32 1, i32* %14, align 4
  br label %65

65:                                               ; preds = %64, %53
  br label %74

66:                                               ; preds = %50
  %67 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %68 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %67, i32 0, i32 3
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  store %struct.bio** %73, %struct.bio*** %12, align 8
  br label %74

74:                                               ; preds = %66, %65
  br label %75

75:                                               ; preds = %102, %74
  %76 = load %struct.bio**, %struct.bio*** %12, align 8
  %77 = load %struct.bio*, %struct.bio** %76, align 8
  %78 = icmp ne %struct.bio* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load %struct.bio**, %struct.bio*** %12, align 8
  %81 = load %struct.bio*, %struct.bio** %80, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.bio*, %struct.bio** %8, align 8
  %86 = getelementptr inbounds %struct.bio, %struct.bio* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %84, %88
  br label %90

90:                                               ; preds = %79, %75
  %91 = phi i1 [ false, %75 ], [ %89, %79 ]
  br i1 %91, label %92, label %106

92:                                               ; preds = %90
  %93 = load %struct.bio**, %struct.bio*** %12, align 8
  %94 = load %struct.bio*, %struct.bio** %93, align 8
  %95 = call i64 @bio_end_sector(%struct.bio* %94)
  %96 = load %struct.bio*, %struct.bio** %8, align 8
  %97 = getelementptr inbounds %struct.bio, %struct.bio* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %95, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %415

102:                                              ; preds = %92
  %103 = load %struct.bio**, %struct.bio*** %12, align 8
  %104 = load %struct.bio*, %struct.bio** %103, align 8
  %105 = getelementptr inbounds %struct.bio, %struct.bio* %104, i32 0, i32 1
  store %struct.bio** %105, %struct.bio*** %12, align 8
  br label %75

106:                                              ; preds = %90
  %107 = load %struct.bio**, %struct.bio*** %12, align 8
  %108 = load %struct.bio*, %struct.bio** %107, align 8
  %109 = icmp ne %struct.bio* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load %struct.bio**, %struct.bio*** %12, align 8
  %112 = load %struct.bio*, %struct.bio** %111, align 8
  %113 = getelementptr inbounds %struct.bio, %struct.bio* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.bio*, %struct.bio** %8, align 8
  %117 = call i64 @bio_end_sector(%struct.bio* %116)
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %415

120:                                              ; preds = %110, %106
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %198

123:                                              ; preds = %120
  %124 = load %struct.r5conf*, %struct.r5conf** %13, align 8
  %125 = call i64 @raid5_has_ppl(%struct.r5conf* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %198

127:                                              ; preds = %123
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %128

128:                                              ; preds = %181, %127
  %129 = load i32, i32* %19, align 4
  %130 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %131 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %184

134:                                              ; preds = %128
  %135 = load i32, i32* %19, align 4
  %136 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %137 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %135, %138
  br i1 %139, label %140, label %180

140:                                              ; preds = %134
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %154, label %144

144:                                              ; preds = %140
  %145 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %146 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %145, i32 0, i32 3
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  %152 = load %struct.bio*, %struct.bio** %151, align 8
  %153 = icmp ne %struct.bio* %152, null
  br i1 %153, label %154, label %180

154:                                              ; preds = %144, %140
  %155 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %156 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %155, i32 0, i32 3
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = load i32, i32* %19, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %15, align 8
  %163 = load i32, i32* %18, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %154
  %166 = load i64, i64* %15, align 8
  %167 = load i64, i64* %16, align 8
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %165, %154
  %170 = load i64, i64* %15, align 8
  store i64 %170, i64* %16, align 8
  br label %171

171:                                              ; preds = %169, %165
  %172 = load i64, i64* %15, align 8
  %173 = load i64, i64* %17, align 8
  %174 = icmp sgt i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load i64, i64* %15, align 8
  store i64 %176, i64* %17, align 8
  br label %177

177:                                              ; preds = %175, %171
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %18, align 4
  br label %180

180:                                              ; preds = %177, %144, %134
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %19, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %19, align 4
  br label %128

184:                                              ; preds = %128
  %185 = load i64, i64* %16, align 8
  %186 = load %struct.r5conf*, %struct.r5conf** %13, align 8
  %187 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %18, align 4
  %190 = sub nsw i32 %189, 1
  %191 = mul nsw i32 %188, %190
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %185, %192
  %194 = load i64, i64* %17, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %184
  br label %415

197:                                              ; preds = %184
  br label %198

198:                                              ; preds = %197, %123, %120
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %201, %198
  %205 = load i32, i32* @STRIPE_BATCH_READY, align 4
  %206 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %207 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %206, i32 0, i32 4
  %208 = call i32 @clear_bit(i32 %205, i32* %207)
  br label %209

209:                                              ; preds = %204, %201
  %210 = load %struct.bio**, %struct.bio*** %12, align 8
  %211 = load %struct.bio*, %struct.bio** %210, align 8
  %212 = icmp ne %struct.bio* %211, null
  br i1 %212, label %213, label %225

213:                                              ; preds = %209
  %214 = load %struct.bio*, %struct.bio** %8, align 8
  %215 = getelementptr inbounds %struct.bio, %struct.bio* %214, i32 0, i32 1
  %216 = load %struct.bio*, %struct.bio** %215, align 8
  %217 = icmp ne %struct.bio* %216, null
  br i1 %217, label %218, label %225

218:                                              ; preds = %213
  %219 = load %struct.bio**, %struct.bio*** %12, align 8
  %220 = load %struct.bio*, %struct.bio** %219, align 8
  %221 = load %struct.bio*, %struct.bio** %8, align 8
  %222 = getelementptr inbounds %struct.bio, %struct.bio* %221, i32 0, i32 1
  %223 = load %struct.bio*, %struct.bio** %222, align 8
  %224 = icmp ne %struct.bio* %220, %223
  br label %225

225:                                              ; preds = %218, %213, %209
  %226 = phi i1 [ false, %213 ], [ false, %209 ], [ %224, %218 ]
  %227 = zext i1 %226 to i32
  %228 = call i32 @BUG_ON(i32 %227)
  %229 = load %struct.bio**, %struct.bio*** %12, align 8
  %230 = load %struct.bio*, %struct.bio** %229, align 8
  %231 = icmp ne %struct.bio* %230, null
  br i1 %231, label %232, label %237

232:                                              ; preds = %225
  %233 = load %struct.bio**, %struct.bio*** %12, align 8
  %234 = load %struct.bio*, %struct.bio** %233, align 8
  %235 = load %struct.bio*, %struct.bio** %8, align 8
  %236 = getelementptr inbounds %struct.bio, %struct.bio* %235, i32 0, i32 1
  store %struct.bio* %234, %struct.bio** %236, align 8
  br label %237

237:                                              ; preds = %232, %225
  %238 = load %struct.bio*, %struct.bio** %8, align 8
  %239 = load %struct.bio**, %struct.bio*** %12, align 8
  store %struct.bio* %238, %struct.bio** %239, align 8
  %240 = load %struct.bio*, %struct.bio** %8, align 8
  %241 = call i32 @bio_inc_remaining(%struct.bio* %240)
  %242 = load %struct.r5conf*, %struct.r5conf** %13, align 8
  %243 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %242, i32 0, i32 2
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = load %struct.bio*, %struct.bio** %8, align 8
  %246 = call i32 @md_write_inc(%struct.TYPE_6__* %244, %struct.bio* %245)
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %342

249:                                              ; preds = %237
  %250 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %251 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %250, i32 0, i32 3
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %251, align 8
  %253 = load i32, i32* %9, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %20, align 8
  %258 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %259 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %258, i32 0, i32 3
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 2
  %265 = load %struct.bio*, %struct.bio** %264, align 8
  store %struct.bio* %265, %struct.bio** %8, align 8
  br label %266

266:                                              ; preds = %300, %249
  %267 = load i64, i64* %20, align 8
  %268 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %269 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %268, i32 0, i32 3
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %269, align 8
  %271 = load i32, i32* %9, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @STRIPE_SECTORS, align 8
  %277 = add nsw i64 %275, %276
  %278 = icmp slt i64 %267, %277
  br i1 %278, label %279, label %289

279:                                              ; preds = %266
  %280 = load %struct.bio*, %struct.bio** %8, align 8
  %281 = icmp ne %struct.bio* %280, null
  br i1 %281, label %282, label %289

282:                                              ; preds = %279
  %283 = load %struct.bio*, %struct.bio** %8, align 8
  %284 = getelementptr inbounds %struct.bio, %struct.bio* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* %20, align 8
  %288 = icmp sle i64 %286, %287
  br label %289

289:                                              ; preds = %282, %279, %266
  %290 = phi i1 [ false, %279 ], [ false, %266 ], [ %288, %282 ]
  br i1 %290, label %291, label %311

291:                                              ; preds = %289
  %292 = load %struct.bio*, %struct.bio** %8, align 8
  %293 = call i64 @bio_end_sector(%struct.bio* %292)
  %294 = load i64, i64* %20, align 8
  %295 = icmp sge i64 %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %291
  %297 = load %struct.bio*, %struct.bio** %8, align 8
  %298 = call i64 @bio_end_sector(%struct.bio* %297)
  store i64 %298, i64* %20, align 8
  br label %299

299:                                              ; preds = %296, %291
  br label %300

300:                                              ; preds = %299
  %301 = load %struct.bio*, %struct.bio** %8, align 8
  %302 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %303 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %302, i32 0, i32 3
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %303, align 8
  %305 = load i32, i32* %9, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = call %struct.bio* @r5_next_bio(%struct.bio* %301, i64 %309)
  store %struct.bio* %310, %struct.bio** %8, align 8
  br label %266

311:                                              ; preds = %289
  %312 = load i64, i64* %20, align 8
  %313 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %314 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %313, i32 0, i32 3
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %314, align 8
  %316 = load i32, i32* %9, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @STRIPE_SECTORS, align 8
  %322 = add nsw i64 %320, %321
  %323 = icmp sge i64 %312, %322
  br i1 %323, label %324, label %341

324:                                              ; preds = %311
  %325 = load i32, i32* @R5_OVERWRITE, align 4
  %326 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %327 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %326, i32 0, i32 3
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %327, align 8
  %329 = load i32, i32* %9, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 1
  %333 = call i32 @test_and_set_bit(i32 %325, i32* %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %340, label %335

335:                                              ; preds = %324
  %336 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %337 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %336, i32 0, i32 8
  %338 = load i32, i32* %337, align 8
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %337, align 8
  br label %340

340:                                              ; preds = %335, %324
  br label %341

341:                                              ; preds = %340, %311
  br label %342

342:                                              ; preds = %341, %237
  %343 = load %struct.bio**, %struct.bio*** %12, align 8
  %344 = load %struct.bio*, %struct.bio** %343, align 8
  %345 = getelementptr inbounds %struct.bio, %struct.bio* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %349 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %348, i32 0, i32 7
  %350 = load i64, i64* %349, align 8
  %351 = load i32, i32* %9, align 4
  %352 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %347, i64 %350, i32 %351)
  %353 = load %struct.r5conf*, %struct.r5conf** %13, align 8
  %354 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %353, i32 0, i32 2
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %403

359:                                              ; preds = %342
  %360 = load i32, i32* %14, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %403

362:                                              ; preds = %359
  %363 = load i32, i32* @STRIPE_BITMAP_PENDING, align 4
  %364 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %365 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %364, i32 0, i32 4
  %366 = call i32 @set_bit(i32 %363, i32* %365)
  %367 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %368 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %367, i32 0, i32 2
  %369 = call i32 @spin_unlock_irq(i32* %368)
  %370 = load %struct.r5conf*, %struct.r5conf** %13, align 8
  %371 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %370, i32 0, i32 2
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %376 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %375, i32 0, i32 7
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* @STRIPE_SECTORS, align 8
  %379 = call i32 @md_bitmap_startwrite(i64 %374, i64 %377, i64 %378, i32 0)
  %380 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %381 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %380, i32 0, i32 2
  %382 = call i32 @spin_lock_irq(i32* %381)
  %383 = load i32, i32* @STRIPE_BITMAP_PENDING, align 4
  %384 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %385 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %384, i32 0, i32 4
  %386 = call i32 @clear_bit(i32 %383, i32* %385)
  %387 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %388 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %387, i32 0, i32 6
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %402, label %391

391:                                              ; preds = %362
  %392 = load %struct.r5conf*, %struct.r5conf** %13, align 8
  %393 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = add nsw i64 %394, 1
  %396 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %397 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %396, i32 0, i32 5
  store i64 %395, i64* %397, align 8
  %398 = load i32, i32* @STRIPE_BIT_DELAY, align 4
  %399 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %400 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %399, i32 0, i32 4
  %401 = call i32 @set_bit(i32 %398, i32* %400)
  br label %402

402:                                              ; preds = %391, %362
  br label %403

403:                                              ; preds = %402, %359, %342
  %404 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %405 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %404, i32 0, i32 2
  %406 = call i32 @spin_unlock_irq(i32* %405)
  %407 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %408 = call i64 @stripe_can_batch(%struct.stripe_head* %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %414

410:                                              ; preds = %403
  %411 = load %struct.r5conf*, %struct.r5conf** %13, align 8
  %412 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %413 = call i32 @stripe_add_to_batch_list(%struct.r5conf* %411, %struct.stripe_head* %412)
  br label %414

414:                                              ; preds = %410, %403
  store i32 1, i32* %6, align 4
  br label %428

415:                                              ; preds = %196, %119, %101, %49
  %416 = load i32, i32* @R5_Overlap, align 4
  %417 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %418 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %417, i32 0, i32 3
  %419 = load %struct.TYPE_5__*, %struct.TYPE_5__** %418, align 8
  %420 = load i32, i32* %9, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i32 0, i32 1
  %424 = call i32 @set_bit(i32 %416, i32* %423)
  %425 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %426 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %425, i32 0, i32 2
  %427 = call i32 @spin_unlock_irq(i32* %426)
  store i32 0, i32* %6, align 4
  br label %428

428:                                              ; preds = %415, %414
  %429 = load i32, i32* %6, align 4
  ret i32 %429
}

declare dso_local i32 @pr_debug(i8*, i64, i64, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @bio_end_sector(%struct.bio*) #1

declare dso_local i64 @raid5_has_ppl(%struct.r5conf*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bio_inc_remaining(%struct.bio*) #1

declare dso_local i32 @md_write_inc(%struct.TYPE_6__*, %struct.bio*) #1

declare dso_local %struct.bio* @r5_next_bio(%struct.bio*, i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @md_bitmap_startwrite(i64, i64, i64, i32) #1

declare dso_local i64 @stripe_can_batch(%struct.stripe_head*) #1

declare dso_local i32 @stripe_add_to_batch_list(%struct.r5conf*, %struct.stripe_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
