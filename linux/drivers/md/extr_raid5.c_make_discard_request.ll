; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_make_discard_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_make_discard_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, %struct.r5conf* }
%struct.r5conf = type { i32, i32, i32, i32, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.bio = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.stripe_head = type { i64, i32, i32, i64, i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.bio*, i64 }

@MaxSector = common dso_local global i64 0, align 8
@STRIPE_SECTORS = common dso_local global i64 0, align 8
@w = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@R5_Overlap = common dso_local global i32 0, align 4
@STRIPE_SYNCING = common dso_local global i32 0, align 4
@STRIPE_DISCARD = common dso_local global i32 0, align 4
@R5_OVERWRITE = common dso_local global i32 0, align 4
@STRIPE_BIT_DELAY = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@STRIPE_DELAYED = common dso_local global i32 0, align 4
@STRIPE_PREREAD_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.bio*)* @make_discard_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_discard_request(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.r5conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stripe_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %11 = load %struct.mddev*, %struct.mddev** %3, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 2
  %13 = load %struct.r5conf*, %struct.r5conf** %12, align 8
  store %struct.r5conf* %13, %struct.r5conf** %5, align 8
  %14 = load %struct.mddev*, %struct.mddev** %3, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MaxSector, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %304

20:                                               ; preds = %2
  %21 = load %struct.bio*, %struct.bio** %4, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* @STRIPE_SECTORS, align 8
  %26 = trunc i64 %25 to i32
  %27 = sub nsw i32 %26, 1
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.bio*, %struct.bio** %4, align 8
  %31 = call i32 @bio_end_sector(%struct.bio* %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %35 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %38 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %41 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %39, %42
  %44 = mul nsw i32 %36, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @DIV_ROUND_UP_SECTOR_T(i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @sector_div(i32 %48, i32 %49)
  %51 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %52 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %57 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %295, %20
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %301

65:                                               ; preds = %61
  %66 = load i32, i32* @w, align 4
  %67 = call i32 @DEFINE_WAIT(i32 %66)
  br label %68

68:                                               ; preds = %149, %91, %65
  %69 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf* %69, i32 %70, i32 0, i32 0, i32 0)
  store %struct.stripe_head* %71, %struct.stripe_head** %8, align 8
  %72 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %73 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %72, i32 0, i32 6
  %74 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %75 = call i32 @prepare_to_wait(i32* %73, i32* @w, i32 %74)
  %76 = load i32, i32* @R5_Overlap, align 4
  %77 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %78 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %77, i32 0, i32 7
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %81 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @set_bit(i32 %76, i32* %84)
  %86 = load i32, i32* @STRIPE_SYNCING, align 4
  %87 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %88 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %87, i32 0, i32 2
  %89 = call i64 @test_bit(i32 %86, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %68
  %92 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %93 = call i32 @raid5_release_stripe(%struct.stripe_head* %92)
  %94 = call i32 (...) @schedule()
  br label %68

95:                                               ; preds = %68
  %96 = load i32, i32* @R5_Overlap, align 4
  %97 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %98 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %97, i32 0, i32 7
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %101 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = call i32 @clear_bit(i32 %96, i32* %104)
  %106 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %107 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %106, i32 0, i32 5
  %108 = call i32 @spin_lock_irq(i32* %107)
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %166, %95
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %112 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %169

115:                                              ; preds = %109
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %119 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %125 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122, %115
  br label %166

129:                                              ; preds = %122
  %130 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %131 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %130, i32 0, i32 7
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load %struct.bio*, %struct.bio** %136, align 8
  %138 = icmp ne %struct.bio* %137, null
  br i1 %138, label %149, label %139

139:                                              ; preds = %129
  %140 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %141 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %140, i32 0, i32 7
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %139, %129
  %150 = load i32, i32* @R5_Overlap, align 4
  %151 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %152 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %151, i32 0, i32 7
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = call i32 @set_bit(i32 %150, i32* %157)
  %159 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %160 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %159, i32 0, i32 5
  %161 = call i32 @spin_unlock_irq(i32* %160)
  %162 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %163 = call i32 @raid5_release_stripe(%struct.stripe_head* %162)
  %164 = call i32 (...) @schedule()
  br label %68

165:                                              ; preds = %139
  br label %166

166:                                              ; preds = %165, %128
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %109

169:                                              ; preds = %109
  %170 = load i32, i32* @STRIPE_DISCARD, align 4
  %171 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %172 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %171, i32 0, i32 2
  %173 = call i32 @set_bit(i32 %170, i32* %172)
  %174 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %175 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %174, i32 0, i32 6
  %176 = call i32 @finish_wait(i32* %175, i32* @w)
  %177 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %178 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %177, i32 0, i32 6
  store i64 0, i64* %178, align 8
  store i32 0, i32* %10, align 4
  br label %179

179:                                              ; preds = %226, %169
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %182 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %229

185:                                              ; preds = %179
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %189 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %187, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %185
  %193 = load i32, i32* %10, align 4
  %194 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %195 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %193, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %192, %185
  br label %226

199:                                              ; preds = %192
  %200 = load %struct.bio*, %struct.bio** %4, align 8
  %201 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %202 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %201, i32 0, i32 7
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  store %struct.bio* %200, %struct.bio** %207, align 8
  %208 = load i32, i32* @R5_OVERWRITE, align 4
  %209 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %210 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %209, i32 0, i32 7
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = call i32 @set_bit(i32 %208, i32* %215)
  %217 = load %struct.bio*, %struct.bio** %4, align 8
  %218 = call i32 @bio_inc_remaining(%struct.bio* %217)
  %219 = load %struct.mddev*, %struct.mddev** %3, align 8
  %220 = load %struct.bio*, %struct.bio** %4, align 8
  %221 = call i32 @md_write_inc(%struct.mddev* %219, %struct.bio* %220)
  %222 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %223 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %222, i32 0, i32 6
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %224, 1
  store i64 %225, i64* %223, align 8
  br label %226

226:                                              ; preds = %199, %198
  %227 = load i32, i32* %10, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %10, align 4
  br label %179

229:                                              ; preds = %179
  %230 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %231 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %230, i32 0, i32 5
  %232 = call i32 @spin_unlock_irq(i32* %231)
  %233 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %234 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %233, i32 0, i32 5
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %273

239:                                              ; preds = %229
  store i32 0, i32* %10, align 4
  br label %240

240:                                              ; preds = %259, %239
  %241 = load i32, i32* %10, align 4
  %242 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %243 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %246 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = sub nsw i32 %244, %247
  %249 = icmp slt i32 %241, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %240
  %251 = load %struct.mddev*, %struct.mddev** %3, align 8
  %252 = getelementptr inbounds %struct.mddev, %struct.mddev* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %255 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = load i64, i64* @STRIPE_SECTORS, align 8
  %258 = call i32 @md_bitmap_startwrite(i32 %253, i32 %256, i64 %257, i32 0)
  br label %259

259:                                              ; preds = %250
  %260 = load i32, i32* %10, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %10, align 4
  br label %240

262:                                              ; preds = %240
  %263 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %264 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %265, 1
  %267 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %268 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %267, i32 0, i32 3
  store i64 %266, i64* %268, align 8
  %269 = load i32, i32* @STRIPE_BIT_DELAY, align 4
  %270 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %271 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %270, i32 0, i32 2
  %272 = call i32 @set_bit(i32 %269, i32* %271)
  br label %273

273:                                              ; preds = %262, %229
  %274 = load i32, i32* @STRIPE_HANDLE, align 4
  %275 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %276 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %275, i32 0, i32 2
  %277 = call i32 @set_bit(i32 %274, i32* %276)
  %278 = load i32, i32* @STRIPE_DELAYED, align 4
  %279 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %280 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %279, i32 0, i32 2
  %281 = call i32 @clear_bit(i32 %278, i32* %280)
  %282 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %283 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %284 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %283, i32 0, i32 2
  %285 = call i32 @test_and_set_bit(i32 %282, i32* %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %273
  %288 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %289 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %288, i32 0, i32 3
  %290 = call i32 @atomic_inc(i32* %289)
  br label %291

291:                                              ; preds = %287, %273
  %292 = load %struct.mddev*, %struct.mddev** %3, align 8
  %293 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %294 = call i32 @release_stripe_plug(%struct.mddev* %292, %struct.stripe_head* %293)
  br label %295

295:                                              ; preds = %291
  %296 = load i64, i64* @STRIPE_SECTORS, align 8
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = add nsw i64 %298, %296
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %6, align 4
  br label %61

301:                                              ; preds = %61
  %302 = load %struct.bio*, %struct.bio** %4, align 8
  %303 = call i32 @bio_endio(%struct.bio* %302)
  br label %304

304:                                              ; preds = %301, %19
  ret void
}

declare dso_local i32 @bio_end_sector(%struct.bio*) #1

declare dso_local i32 @DIV_ROUND_UP_SECTOR_T(i32, i32) #1

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf*, i32, i32, i32, i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @raid5_release_stripe(%struct.stripe_head*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @bio_inc_remaining(%struct.bio*) #1

declare dso_local i32 @md_write_inc(%struct.mddev*, %struct.bio*) #1

declare dso_local i32 @md_bitmap_startwrite(i32, i32, i64, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @release_stripe_plug(%struct.mddev*, %struct.stripe_head*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
