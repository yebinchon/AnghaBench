; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i32, i64, %struct.r5conf* }
%struct.r5conf = type { i64, i32, i32, i32, i32, i32 }
%struct.bio = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.stripe_head = type { i32, %struct.stripe_head* }

@w = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@STRIPE_SECTORS = common dso_local global i64 0, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"raid456: raid5_make_request, sector %llu logical %llu\0A\00", align 1
@REQ_RAHEAD = common dso_local global i32 0, align 4
@STRIPE_EXPANDING = common dso_local global i32 0, align 4
@STRIPE_R5C_PREFLUSH = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@STRIPE_DELAYED = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@STRIPE_PREREAD_ACTIVE = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.bio*)* @raid5_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid5_make_request(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stripe_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %19 = load %struct.mddev*, %struct.mddev** %4, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 4
  %21 = load %struct.r5conf*, %struct.r5conf** %20, align 8
  store %struct.r5conf* %21, %struct.r5conf** %6, align 8
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = call i32 @bio_data_dir(%struct.bio* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @w, align 4
  %25 = call i32 @DEFINE_WAIT(i32 %24)
  store i32 0, i32* %14, align 4
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @REQ_PREFLUSH, align 4
  %30 = and i32 %28, %29
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %2
  %34 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %35 = load %struct.bio*, %struct.bio** %5, align 8
  %36 = call i32 @log_handle_flush_request(%struct.r5conf* %34, %struct.bio* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %359

40:                                               ; preds = %33
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.mddev*, %struct.mddev** %4, align 8
  %47 = load %struct.bio*, %struct.bio** %5, align 8
  %48 = call i32 @md_flush_request(%struct.mddev* %46, %struct.bio* %47)
  store i32 1, i32* %3, align 4
  br label %359

49:                                               ; preds = %40
  %50 = load %struct.bio*, %struct.bio** %5, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @REQ_PREFLUSH, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %49, %2
  %56 = load %struct.mddev*, %struct.mddev** %4, align 8
  %57 = load %struct.bio*, %struct.bio** %5, align 8
  %58 = call i32 @md_write_start(%struct.mddev* %56, %struct.bio* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %359

61:                                               ; preds = %55
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @READ, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load %struct.mddev*, %struct.mddev** %4, align 8
  %67 = getelementptr inbounds %struct.mddev, %struct.mddev* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load %struct.mddev*, %struct.mddev** %4, align 8
  %72 = getelementptr inbounds %struct.mddev, %struct.mddev* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @MaxSector, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load %struct.mddev*, %struct.mddev** %4, align 8
  %78 = load %struct.bio*, %struct.bio** %5, align 8
  %79 = call %struct.bio* @chunk_aligned_read(%struct.mddev* %77, %struct.bio* %78)
  store %struct.bio* %79, %struct.bio** %5, align 8
  %80 = load %struct.bio*, %struct.bio** %5, align 8
  %81 = icmp ne %struct.bio* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %359

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %70, %65, %61
  %85 = load %struct.bio*, %struct.bio** %5, align 8
  %86 = call i64 @bio_op(%struct.bio* %85)
  %87 = load i64, i64* @REQ_OP_DISCARD, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load %struct.mddev*, %struct.mddev** %4, align 8
  %94 = load %struct.bio*, %struct.bio** %5, align 8
  %95 = call i32 @make_discard_request(%struct.mddev* %93, %struct.bio* %94)
  %96 = load %struct.mddev*, %struct.mddev** %4, align 8
  %97 = call i32 @md_write_end(%struct.mddev* %96)
  store i32 1, i32* %3, align 4
  br label %359

98:                                               ; preds = %84
  %99 = load %struct.bio*, %struct.bio** %5, align 8
  %100 = getelementptr inbounds %struct.bio, %struct.bio* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* @STRIPE_SECTORS, align 8
  %104 = trunc i64 %103 to i32
  %105 = sub nsw i32 %104, 1
  %106 = xor i32 %105, -1
  %107 = and i32 %102, %106
  store i32 %107, i32* %9, align 4
  %108 = load %struct.bio*, %struct.bio** %5, align 8
  %109 = call i32 @bio_end_sector(%struct.bio* %108)
  store i32 %109, i32* %10, align 4
  %110 = load %struct.bio*, %struct.bio** %5, align 8
  %111 = getelementptr inbounds %struct.bio, %struct.bio* %110, i32 0, i32 2
  store i32* null, i32** %111, align 8
  %112 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %113 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %112, i32 0, i32 2
  %114 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %115 = call i32 @prepare_to_wait(i32* %113, i32* @w, i32 %114)
  br label %116

116:                                              ; preds = %340, %98
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %346

120:                                              ; preds = %116
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %273, %256, %245, %181, %120
  %122 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %123 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %122, i32 0, i32 4
  %124 = call i32 @read_seqcount_begin(i32* %123)
  store i32 %124, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %129 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %128, i32 0, i32 2
  %130 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %131 = call i32 @prepare_to_wait(i32* %129, i32* @w, i32 %130)
  br label %132

132:                                              ; preds = %127, %121
  %133 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %134 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @MaxSector, align 8
  %137 = icmp ne i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %191

141:                                              ; preds = %132
  %142 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %143 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %142, i32 0, i32 5
  %144 = call i32 @spin_lock_irq(i32* %143)
  %145 = load %struct.mddev*, %struct.mddev** %4, align 8
  %146 = getelementptr inbounds %struct.mddev, %struct.mddev* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %141
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %153 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp slt i64 %151, %154
  br i1 %155, label %163, label %164

156:                                              ; preds = %141
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %160 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp sge i64 %158, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %156, %149
  store i32 1, i32* %16, align 4
  br label %187

164:                                              ; preds = %156, %149
  %165 = load %struct.mddev*, %struct.mddev** %4, align 8
  %166 = getelementptr inbounds %struct.mddev, %struct.mddev* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %172 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %181, label %186

175:                                              ; preds = %164
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %178 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp sge i32 %176, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %175, %169
  %182 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %183 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %182, i32 0, i32 5
  %184 = call i32 @spin_unlock_irq(i32* %183)
  %185 = call i32 (...) @schedule()
  store i32 1, i32* %13, align 4
  br label %121

186:                                              ; preds = %175, %169
  br label %187

187:                                              ; preds = %186, %163
  %188 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %189 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %188, i32 0, i32 5
  %190 = call i32 @spin_unlock_irq(i32* %189)
  br label %191

191:                                              ; preds = %187, %132
  %192 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %16, align 4
  %195 = call i32 @raid5_compute_sector(%struct.r5conf* %192, i32 %193, i32 %194, i32* %7, i32* null)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %197, i64 %199)
  %201 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %16, align 4
  %204 = load %struct.bio*, %struct.bio** %5, align 8
  %205 = getelementptr inbounds %struct.bio, %struct.bio* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @REQ_RAHEAD, align 4
  %208 = and i32 %206, %207
  %209 = call %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf* %201, i32 %202, i32 %203, i32 %208, i32 0)
  store %struct.stripe_head* %209, %struct.stripe_head** %11, align 8
  %210 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %211 = icmp ne %struct.stripe_head* %210, null
  br i1 %211, label %212, label %335

212:                                              ; preds = %191
  %213 = load i32, i32* %16, align 4
  %214 = call i64 @unlikely(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %250

216:                                              ; preds = %212
  store i32 0, i32* %18, align 4
  %217 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %218 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %217, i32 0, i32 5
  %219 = call i32 @spin_lock_irq(i32* %218)
  %220 = load %struct.mddev*, %struct.mddev** %4, align 8
  %221 = getelementptr inbounds %struct.mddev, %struct.mddev* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %216
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %228 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp sge i64 %226, %229
  br i1 %230, label %238, label %239

231:                                              ; preds = %216
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %235 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp slt i64 %233, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %231, %224
  store i32 1, i32* %18, align 4
  br label %239

239:                                              ; preds = %238, %231, %224
  %240 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %241 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %240, i32 0, i32 5
  %242 = call i32 @spin_unlock_irq(i32* %241)
  %243 = load i32, i32* %18, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %239
  %246 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %247 = call i32 @raid5_release_stripe(%struct.stripe_head* %246)
  %248 = call i32 (...) @schedule()
  store i32 1, i32* %13, align 4
  br label %121

249:                                              ; preds = %239
  br label %250

250:                                              ; preds = %249, %212
  %251 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %252 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %251, i32 0, i32 4
  %253 = load i32, i32* %17, align 4
  %254 = call i64 @read_seqcount_retry(i32* %252, i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %250
  %257 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %258 = call i32 @raid5_release_stripe(%struct.stripe_head* %257)
  br label %121

259:                                              ; preds = %250
  %260 = load i32, i32* @STRIPE_EXPANDING, align 4
  %261 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %262 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %261, i32 0, i32 0
  %263 = call i64 @test_bit(i32 %260, i32* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %273, label %265

265:                                              ; preds = %259
  %266 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %267 = load %struct.bio*, %struct.bio** %5, align 8
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* %12, align 4
  %270 = load i32, i32* %16, align 4
  %271 = call i32 @add_stripe_bio(%struct.stripe_head* %266, %struct.bio* %267, i32 %268, i32 %269, i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %281, label %273

273:                                              ; preds = %265, %259
  %274 = load %struct.mddev*, %struct.mddev** %4, align 8
  %275 = getelementptr inbounds %struct.mddev, %struct.mddev* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @md_wakeup_thread(i32 %276)
  %278 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %279 = call i32 @raid5_release_stripe(%struct.stripe_head* %278)
  %280 = call i32 (...) @schedule()
  store i32 1, i32* %13, align 4
  br label %121

281:                                              ; preds = %265
  %282 = load i32, i32* %14, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %281
  %285 = load i32, i32* @STRIPE_R5C_PREFLUSH, align 4
  %286 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %287 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %286, i32 0, i32 0
  %288 = call i32 @set_bit(i32 %285, i32* %287)
  store i32 0, i32* %14, align 4
  br label %289

289:                                              ; preds = %284, %281
  %290 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %291 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %290, i32 0, i32 1
  %292 = load %struct.stripe_head*, %struct.stripe_head** %291, align 8
  %293 = icmp ne %struct.stripe_head* %292, null
  br i1 %293, label %299, label %294

294:                                              ; preds = %289
  %295 = load i32, i32* @STRIPE_HANDLE, align 4
  %296 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %297 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %296, i32 0, i32 0
  %298 = call i32 @set_bit(i32 %295, i32* %297)
  br label %299

299:                                              ; preds = %294, %289
  %300 = load i32, i32* @STRIPE_DELAYED, align 4
  %301 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %302 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %301, i32 0, i32 0
  %303 = call i32 @clear_bit(i32 %300, i32* %302)
  %304 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %305 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %304, i32 0, i32 1
  %306 = load %struct.stripe_head*, %struct.stripe_head** %305, align 8
  %307 = icmp ne %struct.stripe_head* %306, null
  br i1 %307, label %308, label %314

308:                                              ; preds = %299
  %309 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %310 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %311 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %310, i32 0, i32 1
  %312 = load %struct.stripe_head*, %struct.stripe_head** %311, align 8
  %313 = icmp eq %struct.stripe_head* %309, %312
  br i1 %313, label %314, label %331

314:                                              ; preds = %308, %299
  %315 = load %struct.bio*, %struct.bio** %5, align 8
  %316 = getelementptr inbounds %struct.bio, %struct.bio* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @REQ_SYNC, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %331

321:                                              ; preds = %314
  %322 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %323 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %324 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %323, i32 0, i32 0
  %325 = call i32 @test_and_set_bit(i32 %322, i32* %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %331, label %327

327:                                              ; preds = %321
  %328 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %329 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %328, i32 0, i32 3
  %330 = call i32 @atomic_inc(i32* %329)
  br label %331

331:                                              ; preds = %327, %321, %314, %308
  %332 = load %struct.mddev*, %struct.mddev** %4, align 8
  %333 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %334 = call i32 @release_stripe_plug(%struct.mddev* %332, %struct.stripe_head* %333)
  br label %339

335:                                              ; preds = %191
  %336 = load i32, i32* @BLK_STS_IOERR, align 4
  %337 = load %struct.bio*, %struct.bio** %5, align 8
  %338 = getelementptr inbounds %struct.bio, %struct.bio* %337, i32 0, i32 1
  store i32 %336, i32* %338, align 4
  br label %346

339:                                              ; preds = %331
  br label %340

340:                                              ; preds = %339
  %341 = load i64, i64* @STRIPE_SECTORS, align 8
  %342 = load i32, i32* %9, align 4
  %343 = sext i32 %342 to i64
  %344 = add nsw i64 %343, %341
  %345 = trunc i64 %344 to i32
  store i32 %345, i32* %9, align 4
  br label %116

346:                                              ; preds = %335, %116
  %347 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %348 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %347, i32 0, i32 2
  %349 = call i32 @finish_wait(i32* %348, i32* @w)
  %350 = load i32, i32* %12, align 4
  %351 = load i32, i32* @WRITE, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %356

353:                                              ; preds = %346
  %354 = load %struct.mddev*, %struct.mddev** %4, align 8
  %355 = call i32 @md_write_end(%struct.mddev* %354)
  br label %356

356:                                              ; preds = %353, %346
  %357 = load %struct.bio*, %struct.bio** %5, align 8
  %358 = call i32 @bio_endio(%struct.bio* %357)
  store i32 1, i32* %3, align 4
  br label %359

359:                                              ; preds = %356, %92, %82, %60, %45, %39
  %360 = load i32, i32* %3, align 4
  ret i32 %360
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @log_handle_flush_request(%struct.r5conf*, %struct.bio*) #1

declare dso_local i32 @md_flush_request(%struct.mddev*, %struct.bio*) #1

declare dso_local i32 @md_write_start(%struct.mddev*, %struct.bio*) #1

declare dso_local %struct.bio* @chunk_aligned_read(%struct.mddev*, %struct.bio*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @make_discard_request(%struct.mddev*, %struct.bio*) #1

declare dso_local i32 @md_write_end(%struct.mddev*) #1

declare dso_local i32 @bio_end_sector(%struct.bio*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @raid5_compute_sector(%struct.r5conf*, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf*, i32, i32, i32, i32) #1

declare dso_local i32 @raid5_release_stripe(%struct.stripe_head*) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @add_stripe_bio(%struct.stripe_head*, %struct.bio*, i32, i32, i32) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @release_stripe_plug(%struct.mddev*, %struct.stripe_head*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
