; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_handle_failed_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_handle_failed_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i64, %struct.TYPE_10__*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.stripe_head = type { i32, %struct.TYPE_9__*, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i64, i32, %struct.bio*, i32, i32, %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.stripe_head_state = type { i64, i64, i64, i32 }
%struct.md_rdev = type { i32, i32 }

@R5_ReadError = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@STRIPE_SECTORS = common dso_local global i64 0, align 8
@R5_Overlap = common dso_local global i32 0, align 4
@R5_SkipCopy = common dso_local global i32 0, align 4
@R5_UPTODATE = common dso_local global i32 0, align 4
@R5_Wantfill = common dso_local global i32 0, align 4
@R5_Insync = common dso_local global i32 0, align 4
@R5_LOCKED = common dso_local global i32 0, align 4
@STRIPE_FULL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*, i32)* @handle_failed_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_failed_stripe(%struct.r5conf* %0, %struct.stripe_head* %1, %struct.stripe_head_state* %2, i32 %3) #0 {
  %5 = alloca %struct.r5conf*, align 8
  %6 = alloca %struct.stripe_head*, align 8
  %7 = alloca %struct.stripe_head_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.md_rdev*, align 8
  %13 = alloca %struct.bio*, align 8
  %14 = alloca %struct.bio*, align 8
  %15 = alloca %struct.bio*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %5, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %6, align 8
  store %struct.stripe_head_state* %2, %struct.stripe_head_state** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %17 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %421, %4
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %9, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %431

25:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  %26 = load i32, i32* @R5_ReadError, align 4
  %27 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %28 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %26, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %91

36:                                               ; preds = %25
  %37 = call i32 (...) @rcu_read_lock()
  %38 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %39 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %38, i32 0, i32 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.md_rdev* @rcu_dereference(i32 %45)
  store %struct.md_rdev* %46, %struct.md_rdev** %12, align 8
  %47 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %48 = icmp ne %struct.md_rdev* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %36
  %50 = load i32, i32* @In_sync, align 4
  %51 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %52 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %51, i32 0, i32 1
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load i32, i32* @Faulty, align 4
  %57 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %58 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %57, i32 0, i32 1
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %63 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %62, i32 0, i32 0
  %64 = call i32 @atomic_inc(i32* %63)
  br label %66

65:                                               ; preds = %55, %49, %36
  store %struct.md_rdev* null, %struct.md_rdev** %12, align 8
  br label %66

66:                                               ; preds = %65, %61
  %67 = call i32 (...) @rcu_read_unlock()
  %68 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %69 = icmp ne %struct.md_rdev* %68, null
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %72 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %73 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* @STRIPE_SECTORS, align 8
  %76 = call i32 @rdev_set_badblocks(%struct.md_rdev* %71, i32 %74, i64 %75, i32 0)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %70
  %79 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %80 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %83 = call i32 @md_error(%struct.TYPE_10__* %81, %struct.md_rdev* %82)
  br label %84

84:                                               ; preds = %78, %70
  %85 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %86 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %87 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = call i32 @rdev_dec_pending(%struct.md_rdev* %85, %struct.TYPE_10__* %88)
  br label %90

90:                                               ; preds = %84, %66
  br label %91

91:                                               ; preds = %90, %25
  %92 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %93 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %92, i32 0, i32 3
  %94 = call i32 @spin_lock_irq(i32* %93)
  %95 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %96 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 6
  %102 = load %struct.bio*, %struct.bio** %101, align 8
  store %struct.bio* %102, %struct.bio** %10, align 8
  %103 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %104 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %103, i32 0, i32 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 6
  store %struct.bio* null, %struct.bio** %109, align 8
  %110 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %111 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %110, i32 0, i32 4
  store i64 0, i64* %111, align 8
  %112 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %113 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %112, i32 0, i32 3
  %114 = call i32 @spin_unlock_irq(i32* %113)
  %115 = load %struct.bio*, %struct.bio** %10, align 8
  %116 = icmp ne %struct.bio* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %91
  store i32 1, i32* %11, align 4
  br label %118

118:                                              ; preds = %117, %91
  %119 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %120 = call i32 @log_stripe_write_finished(%struct.stripe_head* %119)
  %121 = load i32, i32* @R5_Overlap, align 4
  %122 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %123 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %122, i32 0, i32 1
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = call i64 @test_and_clear_bit(i32 %121, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %118
  %132 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %133 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %132, i32 0, i32 3
  %134 = call i32 @wake_up(i32* %133)
  br label %135

135:                                              ; preds = %131, %118
  br label %136

136:                                              ; preds = %157, %135
  %137 = load %struct.bio*, %struct.bio** %10, align 8
  %138 = icmp ne %struct.bio* %137, null
  br i1 %138, label %139, label %155

139:                                              ; preds = %136
  %140 = load %struct.bio*, %struct.bio** %10, align 8
  %141 = getelementptr inbounds %struct.bio, %struct.bio* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %145 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %144, i32 0, i32 1
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @STRIPE_SECTORS, align 8
  %153 = add nsw i64 %151, %152
  %154 = icmp slt i64 %143, %153
  br label %155

155:                                              ; preds = %139, %136
  %156 = phi i1 [ false, %136 ], [ %154, %139 ]
  br i1 %156, label %157, label %175

157:                                              ; preds = %155
  %158 = load %struct.bio*, %struct.bio** %10, align 8
  %159 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %160 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %159, i32 0, i32 1
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call %struct.bio* @r5_next_bio(%struct.bio* %158, i64 %166)
  store %struct.bio* %167, %struct.bio** %13, align 8
  %168 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %169 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %168, i32 0, i32 1
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = call i32 @md_write_end(%struct.TYPE_10__* %170)
  %172 = load %struct.bio*, %struct.bio** %10, align 8
  %173 = call i32 @bio_io_error(%struct.bio* %172)
  %174 = load %struct.bio*, %struct.bio** %13, align 8
  store %struct.bio* %174, %struct.bio** %10, align 8
  br label %136

175:                                              ; preds = %155
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %180 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %179, i32 0, i32 1
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %185 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i64, i64* @STRIPE_SECTORS, align 8
  %188 = call i32 @md_bitmap_endwrite(i32 %183, i32 %186, i64 %187, i32 0, i32 0)
  br label %189

189:                                              ; preds = %178, %175
  store i32 0, i32* %11, align 4
  %190 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %191 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %190, i32 0, i32 1
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 5
  %197 = load %struct.bio*, %struct.bio** %196, align 8
  store %struct.bio* %197, %struct.bio** %10, align 8
  %198 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %199 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %198, i32 0, i32 1
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 5
  store %struct.bio* null, %struct.bio** %204, align 8
  %205 = load i32, i32* @R5_SkipCopy, align 4
  %206 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %207 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %206, i32 0, i32 1
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = call i64 @test_and_clear_bit(i32 %205, i32* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %241

215:                                              ; preds = %189
  %216 = load i32, i32* @R5_UPTODATE, align 4
  %217 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %218 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %217, i32 0, i32 1
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = call i64 @test_bit(i32 %216, i32* %223)
  %225 = call i32 @WARN_ON(i64 %224)
  %226 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %227 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %226, i32 0, i32 1
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %235 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %234, i32 0, i32 1
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 4
  store i32 %233, i32* %240, align 4
  br label %241

241:                                              ; preds = %215, %189
  %242 = load %struct.bio*, %struct.bio** %10, align 8
  %243 = icmp ne %struct.bio* %242, null
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  store i32 1, i32* %11, align 4
  br label %245

245:                                              ; preds = %244, %241
  br label %246

246:                                              ; preds = %267, %245
  %247 = load %struct.bio*, %struct.bio** %10, align 8
  %248 = icmp ne %struct.bio* %247, null
  br i1 %248, label %249, label %265

249:                                              ; preds = %246
  %250 = load %struct.bio*, %struct.bio** %10, align 8
  %251 = getelementptr inbounds %struct.bio, %struct.bio* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %255 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %254, i32 0, i32 1
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %255, align 8
  %257 = load i32, i32* %9, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @STRIPE_SECTORS, align 8
  %263 = add nsw i64 %261, %262
  %264 = icmp slt i64 %253, %263
  br label %265

265:                                              ; preds = %249, %246
  %266 = phi i1 [ false, %246 ], [ %264, %249 ]
  br i1 %266, label %267, label %285

267:                                              ; preds = %265
  %268 = load %struct.bio*, %struct.bio** %10, align 8
  %269 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %270 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %269, i32 0, i32 1
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = call %struct.bio* @r5_next_bio(%struct.bio* %268, i64 %276)
  store %struct.bio* %277, %struct.bio** %14, align 8
  %278 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %279 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %278, i32 0, i32 1
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %279, align 8
  %281 = call i32 @md_write_end(%struct.TYPE_10__* %280)
  %282 = load %struct.bio*, %struct.bio** %10, align 8
  %283 = call i32 @bio_io_error(%struct.bio* %282)
  %284 = load %struct.bio*, %struct.bio** %14, align 8
  store %struct.bio* %284, %struct.bio** %10, align 8
  br label %246

285:                                              ; preds = %265
  %286 = load i32, i32* @R5_Wantfill, align 4
  %287 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %288 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %287, i32 0, i32 1
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %288, align 8
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 1
  %294 = call i64 @test_bit(i32 %286, i32* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %407, label %296

296:                                              ; preds = %285
  %297 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %298 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %301 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = icmp sgt i64 %299, %302
  br i1 %303, label %304, label %407

304:                                              ; preds = %296
  %305 = load i32, i32* @R5_Insync, align 4
  %306 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %307 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %306, i32 0, i32 1
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %307, align 8
  %309 = load i32, i32* %9, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 1
  %313 = call i64 @test_bit(i32 %305, i32* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %326

315:                                              ; preds = %304
  %316 = load i32, i32* @R5_ReadError, align 4
  %317 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %318 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %317, i32 0, i32 1
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %318, align 8
  %320 = load i32, i32* %9, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 1
  %324 = call i64 @test_bit(i32 %316, i32* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %407

326:                                              ; preds = %315, %304
  %327 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %328 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %327, i32 0, i32 3
  %329 = call i32 @spin_lock_irq(i32* %328)
  %330 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %331 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %330, i32 0, i32 1
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %331, align 8
  %333 = load i32, i32* %9, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 2
  %337 = load %struct.bio*, %struct.bio** %336, align 8
  store %struct.bio* %337, %struct.bio** %10, align 8
  %338 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %339 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %338, i32 0, i32 1
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %339, align 8
  %341 = load i32, i32* %9, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 2
  store %struct.bio* null, %struct.bio** %344, align 8
  %345 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %346 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %345, i32 0, i32 3
  %347 = call i32 @spin_unlock_irq(i32* %346)
  %348 = load i32, i32* @R5_Overlap, align 4
  %349 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %350 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %349, i32 0, i32 1
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %350, align 8
  %352 = load i32, i32* %9, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 1
  %356 = call i64 @test_and_clear_bit(i32 %348, i32* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %326
  %359 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %360 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %359, i32 0, i32 3
  %361 = call i32 @wake_up(i32* %360)
  br label %362

362:                                              ; preds = %358, %326
  %363 = load %struct.bio*, %struct.bio** %10, align 8
  %364 = icmp ne %struct.bio* %363, null
  br i1 %364, label %365, label %370

365:                                              ; preds = %362
  %366 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %367 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 8
  %369 = add nsw i32 %368, -1
  store i32 %369, i32* %367, align 8
  br label %370

370:                                              ; preds = %365, %362
  br label %371

371:                                              ; preds = %392, %370
  %372 = load %struct.bio*, %struct.bio** %10, align 8
  %373 = icmp ne %struct.bio* %372, null
  br i1 %373, label %374, label %390

374:                                              ; preds = %371
  %375 = load %struct.bio*, %struct.bio** %10, align 8
  %376 = getelementptr inbounds %struct.bio, %struct.bio* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %380 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %379, i32 0, i32 1
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** %380, align 8
  %382 = load i32, i32* %9, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @STRIPE_SECTORS, align 8
  %388 = add nsw i64 %386, %387
  %389 = icmp slt i64 %378, %388
  br label %390

390:                                              ; preds = %374, %371
  %391 = phi i1 [ false, %371 ], [ %389, %374 ]
  br i1 %391, label %392, label %406

392:                                              ; preds = %390
  %393 = load %struct.bio*, %struct.bio** %10, align 8
  %394 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %395 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %394, i32 0, i32 1
  %396 = load %struct.TYPE_9__*, %struct.TYPE_9__** %395, align 8
  %397 = load i32, i32* %9, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %396, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = call %struct.bio* @r5_next_bio(%struct.bio* %393, i64 %401)
  store %struct.bio* %402, %struct.bio** %15, align 8
  %403 = load %struct.bio*, %struct.bio** %10, align 8
  %404 = call i32 @bio_io_error(%struct.bio* %403)
  %405 = load %struct.bio*, %struct.bio** %15, align 8
  store %struct.bio* %405, %struct.bio** %10, align 8
  br label %371

406:                                              ; preds = %390
  br label %407

407:                                              ; preds = %406, %315, %296, %285
  %408 = load i32, i32* %11, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %421

410:                                              ; preds = %407
  %411 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %412 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %411, i32 0, i32 1
  %413 = load %struct.TYPE_10__*, %struct.TYPE_10__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %417 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 8
  %419 = load i64, i64* @STRIPE_SECTORS, align 8
  %420 = call i32 @md_bitmap_endwrite(i32 %415, i32 %418, i64 %419, i32 0, i32 0)
  br label %421

421:                                              ; preds = %410, %407
  %422 = load i32, i32* @R5_LOCKED, align 4
  %423 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %424 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %423, i32 0, i32 1
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %424, align 8
  %426 = load i32, i32* %9, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i32 0, i32 1
  %430 = call i32 @clear_bit(i32 %422, i32* %429)
  br label %21

431:                                              ; preds = %21
  %432 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %433 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %432, i32 0, i32 2
  store i64 0, i64* %433, align 8
  %434 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %435 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %434, i32 0, i32 1
  store i64 0, i64* %435, align 8
  %436 = load i32, i32* @STRIPE_FULL_WRITE, align 4
  %437 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %438 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %437, i32 0, i32 0
  %439 = call i64 @test_and_clear_bit(i32 %436, i32* %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %454

441:                                              ; preds = %431
  %442 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %443 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %442, i32 0, i32 2
  %444 = call i64 @atomic_dec_and_test(i32* %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %453

446:                                              ; preds = %441
  %447 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %448 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %447, i32 0, i32 1
  %449 = load %struct.TYPE_10__*, %struct.TYPE_10__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  %452 = call i32 @md_wakeup_thread(i32 %451)
  br label %453

453:                                              ; preds = %446, %441
  br label %454

454:                                              ; preds = %453, %431
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rdev_set_badblocks(%struct.md_rdev*, i32, i64, i32) #1

declare dso_local i32 @md_error(%struct.TYPE_10__*, %struct.md_rdev*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.TYPE_10__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @log_stripe_write_finished(%struct.stripe_head*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local %struct.bio* @r5_next_bio(%struct.bio*, i64) #1

declare dso_local i32 @md_write_end(%struct.TYPE_10__*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @md_bitmap_endwrite(i32, i32, i64, i32, i32) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
