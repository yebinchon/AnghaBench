; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_analyse_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_analyse_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i64, i32, %struct.r5dev*, i32, %struct.r5conf* }
%struct.r5dev = type { i64, i32, i64, i64 }
%struct.r5conf = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.stripe_head_state = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.md_rdev*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.md_rdev = type { i64, i32, i32 }

@STRIPE_EXPAND_SOURCE = common dso_local global i32 0, align 4
@STRIPE_EXPAND_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"check %d: state 0x%lx read %p write %p written %p\0A\00", align 1
@R5_UPTODATE = common dso_local global i32 0, align 4
@STRIPE_BIOFILL_RUN = common dso_local global i32 0, align 4
@R5_Wantfill = common dso_local global i32 0, align 4
@R5_LOCKED = common dso_local global i32 0, align 4
@R5_Wantcompute = common dso_local global i32 0, align 4
@R5_OVERWRITE = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@STRIPE_SECTORS = common dso_local global i64 0, align 8
@R5_ReadRepl = common dso_local global i32 0, align 4
@R5_NeedReplace = common dso_local global i32 0, align 4
@Blocked = common dso_local global i32 0, align 4
@BlockedBadBlocks = common dso_local global i32 0, align 4
@R5_Insync = common dso_local global i32 0, align 4
@WriteErrorSeen = common dso_local global i32 0, align 4
@R5_ReadError = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@R5_Expanded = common dso_local global i32 0, align 4
@R5_WriteError = common dso_local global i32 0, align 4
@R5_MadeGood = common dso_local global i32 0, align 4
@R5_MadeGoodRepl = common dso_local global i32 0, align 4
@R5_ReWrite = common dso_local global i32 0, align 4
@R5_InJournal = common dso_local global i32 0, align 4
@STRIPE_SYNCING = common dso_local global i32 0, align 4
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*, %struct.stripe_head_state*)* @analyse_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyse_stripe(%struct.stripe_head* %0, %struct.stripe_head_state* %1) #0 {
  %3 = alloca %struct.stripe_head*, align 8
  %4 = alloca %struct.stripe_head_state*, align 8
  %5 = alloca %struct.r5conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r5dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.md_rdev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.md_rdev*, align 8
  %15 = alloca %struct.md_rdev*, align 8
  %16 = alloca %struct.md_rdev*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %3, align 8
  store %struct.stripe_head_state* %1, %struct.stripe_head_state** %4, align 8
  %17 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %18 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %17, i32 0, i32 5
  %19 = load %struct.r5conf*, %struct.r5conf** %18, align 8
  store %struct.r5conf* %19, %struct.r5conf** %5, align 8
  %20 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %21 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %23 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %24 = call i32 @memset(%struct.stripe_head_state* %23, i32 0, i32 88)
  %25 = load i32, i32* @STRIPE_EXPAND_SOURCE, align 4
  %26 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %27 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %26, i32 0, i32 2
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %32 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %30, %2
  %37 = phi i1 [ false, %2 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %40 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @STRIPE_EXPAND_READY, align 4
  %42 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %43 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %42, i32 0, i32 2
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %48 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %36
  %53 = phi i1 [ false, %36 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %56 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %58 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 -1, i32* %60, align 4
  %61 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %62 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 -1, i32* %64, align 4
  %65 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %66 = call i32 @r5l_log_disk_error(%struct.r5conf* %65)
  %67 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %68 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %67, i32 0, i32 18
  store i32 %66, i32* %68, align 4
  %69 = call i32 (...) @rcu_read_lock()
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %642, %52
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %8, align 4
  %74 = icmp ne i32 %72, 0
  br i1 %74, label %75, label %643

75:                                               ; preds = %71
  store i32 0, i32* %13, align 4
  %76 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %77 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %76, i32 0, i32 3
  %78 = load %struct.r5dev*, %struct.r5dev** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %78, i64 %80
  store %struct.r5dev* %81, %struct.r5dev** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %84 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %87 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %90 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %93 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %85, i64 %88, i64 %91, i64 %94)
  %96 = load i32, i32* @R5_UPTODATE, align 4
  %97 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %98 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %97, i32 0, i32 1
  %99 = call i64 @test_bit(i32 %96, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %75
  %102 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %103 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load i32, i32* @STRIPE_BIOFILL_RUN, align 4
  %108 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %109 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %108, i32 0, i32 2
  %110 = call i64 @test_bit(i32 %107, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* @R5_Wantfill, align 4
  %114 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %115 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %114, i32 0, i32 1
  %116 = call i32 @set_bit(i32 %113, i32* %115)
  br label %117

117:                                              ; preds = %112, %106, %101, %75
  %118 = load i32, i32* @R5_LOCKED, align 4
  %119 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %120 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %119, i32 0, i32 1
  %121 = call i64 @test_bit(i32 %118, i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %125 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %124, i32 0, i32 17
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %123, %117
  %129 = load i32, i32* @R5_UPTODATE, align 4
  %130 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %131 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %130, i32 0, i32 1
  %132 = call i64 @test_bit(i32 %129, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %136 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %135, i32 0, i32 16
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %134, %128
  %140 = load i32, i32* @R5_Wantcompute, align 4
  %141 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %142 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %141, i32 0, i32 1
  %143 = call i64 @test_bit(i32 %140, i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %139
  %146 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %147 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  %150 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %151 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = icmp sgt i32 %152, 2
  %154 = zext i1 %153 to i32
  %155 = call i32 @BUG_ON(i32 %154)
  br label %156

156:                                              ; preds = %145, %139
  %157 = load i32, i32* @R5_Wantfill, align 4
  %158 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %159 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %158, i32 0, i32 1
  %160 = call i64 @test_bit(i32 %157, i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %164 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %163, i32 0, i32 15
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 8
  br label %178

167:                                              ; preds = %156
  %168 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %169 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %174 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %173, i32 0, i32 14
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %172, %167
  br label %178

178:                                              ; preds = %177, %162
  %179 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %180 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %199

183:                                              ; preds = %178
  %184 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %185 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %184, i32 0, i32 13
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 8
  %188 = load i32, i32* @R5_OVERWRITE, align 4
  %189 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %190 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %189, i32 0, i32 1
  %191 = call i64 @test_bit(i32 %188, i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %183
  %194 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %195 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %194, i32 0, i32 12
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %193, %183
  br label %199

199:                                              ; preds = %198, %178
  %200 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %201 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %206 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %205, i32 0, i32 11
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %204, %199
  %210 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %211 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %210, i32 0, i32 1
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %211, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call %struct.md_rdev* @rcu_dereference(i32 %217)
  store %struct.md_rdev* %218, %struct.md_rdev** %10, align 8
  %219 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %220 = icmp ne %struct.md_rdev* %219, null
  br i1 %220, label %221, label %250

221:                                              ; preds = %209
  %222 = load i32, i32* @Faulty, align 4
  %223 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %224 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %223, i32 0, i32 1
  %225 = call i64 @test_bit(i32 %222, i32* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %250, label %227

227:                                              ; preds = %221
  %228 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %229 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %232 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @STRIPE_SECTORS, align 8
  %235 = add nsw i64 %233, %234
  %236 = icmp sge i64 %230, %235
  br i1 %236, label %237, label %250

237:                                              ; preds = %227
  %238 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %239 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %240 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @STRIPE_SECTORS, align 8
  %243 = call i32 @is_badblock(%struct.md_rdev* %238, i64 %241, i64 %242, i32* %11, i32* %12)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %237
  %246 = load i32, i32* @R5_ReadRepl, align 4
  %247 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %248 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %247, i32 0, i32 1
  %249 = call i32 @set_bit(i32 %246, i32* %248)
  br label %283

250:                                              ; preds = %237, %227, %221, %209
  %251 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %252 = icmp ne %struct.md_rdev* %251, null
  br i1 %252, label %253, label %264

253:                                              ; preds = %250
  %254 = load i32, i32* @Faulty, align 4
  %255 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %256 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %255, i32 0, i32 1
  %257 = call i64 @test_bit(i32 %254, i32* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %253
  %260 = load i32, i32* @R5_NeedReplace, align 4
  %261 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %262 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %261, i32 0, i32 1
  %263 = call i32 @set_bit(i32 %260, i32* %262)
  br label %269

264:                                              ; preds = %253, %250
  %265 = load i32, i32* @R5_NeedReplace, align 4
  %266 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %267 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %266, i32 0, i32 1
  %268 = call i32 @clear_bit(i32 %265, i32* %267)
  br label %269

269:                                              ; preds = %264, %259
  %270 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %271 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %270, i32 0, i32 1
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %271, align 8
  %273 = load i32, i32* %8, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call %struct.md_rdev* @rcu_dereference(i32 %277)
  store %struct.md_rdev* %278, %struct.md_rdev** %10, align 8
  %279 = load i32, i32* @R5_ReadRepl, align 4
  %280 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %281 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %280, i32 0, i32 1
  %282 = call i32 @clear_bit(i32 %279, i32* %281)
  br label %283

283:                                              ; preds = %269, %245
  %284 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %285 = icmp ne %struct.md_rdev* %284, null
  br i1 %285, label %286, label %293

286:                                              ; preds = %283
  %287 = load i32, i32* @Faulty, align 4
  %288 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %289 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %288, i32 0, i32 1
  %290 = call i64 @test_bit(i32 %287, i32* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %286
  store %struct.md_rdev* null, %struct.md_rdev** %10, align 8
  br label %293

293:                                              ; preds = %292, %286, %283
  %294 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %295 = icmp ne %struct.md_rdev* %294, null
  br i1 %295, label %296, label %332

296:                                              ; preds = %293
  %297 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %298 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %299 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @STRIPE_SECTORS, align 8
  %302 = call i32 @is_badblock(%struct.md_rdev* %297, i64 %300, i64 %301, i32* %11, i32* %12)
  store i32 %302, i32* %13, align 4
  %303 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %304 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %303, i32 0, i32 10
  %305 = load %struct.md_rdev*, %struct.md_rdev** %304, align 8
  %306 = icmp eq %struct.md_rdev* %305, null
  br i1 %306, label %307, label %331

307:                                              ; preds = %296
  %308 = load i32, i32* @Blocked, align 4
  %309 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %310 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %309, i32 0, i32 1
  %311 = call i64 @test_bit(i32 %308, i32* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %307
  %314 = load i32, i32* %13, align 4
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %316, label %331

316:                                              ; preds = %313, %307
  %317 = load i32, i32* %13, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %316
  %320 = load i32, i32* @BlockedBadBlocks, align 4
  %321 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %322 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %321, i32 0, i32 1
  %323 = call i32 @set_bit(i32 %320, i32* %322)
  br label %324

324:                                              ; preds = %319, %316
  %325 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %326 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %327 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %326, i32 0, i32 10
  store %struct.md_rdev* %325, %struct.md_rdev** %327, align 8
  %328 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %329 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %328, i32 0, i32 2
  %330 = call i32 @atomic_inc(i32* %329)
  br label %331

331:                                              ; preds = %324, %313, %296
  br label %332

332:                                              ; preds = %331, %293
  %333 = load i32, i32* @R5_Insync, align 4
  %334 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %335 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %334, i32 0, i32 1
  %336 = call i32 @clear_bit(i32 %333, i32* %335)
  %337 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %338 = icmp ne %struct.md_rdev* %337, null
  br i1 %338, label %340, label %339

339:                                              ; preds = %332
  br label %412

340:                                              ; preds = %332
  %341 = load i32, i32* %13, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %365

343:                                              ; preds = %340
  %344 = load i32, i32* @WriteErrorSeen, align 4
  %345 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %346 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %345, i32 0, i32 1
  %347 = call i64 @test_bit(i32 %344, i32* %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %364, label %349

349:                                              ; preds = %343
  %350 = load i32, i32* @R5_UPTODATE, align 4
  %351 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %352 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %351, i32 0, i32 1
  %353 = call i64 @test_bit(i32 %350, i32* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %364

355:                                              ; preds = %349
  %356 = load i32, i32* @R5_Insync, align 4
  %357 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %358 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %357, i32 0, i32 1
  %359 = call i32 @set_bit(i32 %356, i32* %358)
  %360 = load i32, i32* @R5_ReadError, align 4
  %361 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %362 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %361, i32 0, i32 1
  %363 = call i32 @set_bit(i32 %360, i32* %362)
  br label %364

364:                                              ; preds = %355, %349, %343
  br label %411

365:                                              ; preds = %340
  %366 = load i32, i32* @In_sync, align 4
  %367 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %368 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %367, i32 0, i32 1
  %369 = call i64 @test_bit(i32 %366, i32* %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %376

371:                                              ; preds = %365
  %372 = load i32, i32* @R5_Insync, align 4
  %373 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %374 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %373, i32 0, i32 1
  %375 = call i32 @set_bit(i32 %372, i32* %374)
  br label %410

376:                                              ; preds = %365
  %377 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %378 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %377, i32 0, i32 1
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @STRIPE_SECTORS, align 8
  %381 = add nsw i64 %379, %380
  %382 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %383 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = icmp sle i64 %381, %384
  br i1 %385, label %386, label %391

386:                                              ; preds = %376
  %387 = load i32, i32* @R5_Insync, align 4
  %388 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %389 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %388, i32 0, i32 1
  %390 = call i32 @set_bit(i32 %387, i32* %389)
  br label %409

391:                                              ; preds = %376
  %392 = load i32, i32* @R5_UPTODATE, align 4
  %393 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %394 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %393, i32 0, i32 1
  %395 = call i64 @test_bit(i32 %392, i32* %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %408

397:                                              ; preds = %391
  %398 = load i32, i32* @R5_Expanded, align 4
  %399 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %400 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %399, i32 0, i32 1
  %401 = call i64 @test_bit(i32 %398, i32* %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %408

403:                                              ; preds = %397
  %404 = load i32, i32* @R5_Insync, align 4
  %405 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %406 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %405, i32 0, i32 1
  %407 = call i32 @set_bit(i32 %404, i32* %406)
  br label %408

408:                                              ; preds = %403, %397, %391
  br label %409

409:                                              ; preds = %408, %386
  br label %410

410:                                              ; preds = %409, %371
  br label %411

411:                                              ; preds = %410, %364
  br label %412

412:                                              ; preds = %411, %339
  %413 = load i32, i32* @R5_WriteError, align 4
  %414 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %415 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %414, i32 0, i32 1
  %416 = call i64 @test_bit(i32 %413, i32* %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %457

418:                                              ; preds = %412
  %419 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %420 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %419, i32 0, i32 1
  %421 = load %struct.TYPE_3__*, %struct.TYPE_3__** %420, align 8
  %422 = load i32, i32* %8, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %421, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = call %struct.md_rdev* @rcu_dereference(i32 %426)
  store %struct.md_rdev* %427, %struct.md_rdev** %14, align 8
  %428 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %429 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %430 = icmp eq %struct.md_rdev* %428, %429
  br i1 %430, label %431, label %436

431:                                              ; preds = %418
  %432 = load i32, i32* @R5_Insync, align 4
  %433 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %434 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %433, i32 0, i32 1
  %435 = call i32 @clear_bit(i32 %432, i32* %434)
  br label %436

436:                                              ; preds = %431, %418
  %437 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %438 = icmp ne %struct.md_rdev* %437, null
  br i1 %438, label %439, label %451

439:                                              ; preds = %436
  %440 = load i32, i32* @Faulty, align 4
  %441 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %442 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %441, i32 0, i32 1
  %443 = call i64 @test_bit(i32 %440, i32* %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %451, label %445

445:                                              ; preds = %439
  %446 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %447 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %446, i32 0, i32 4
  store i32 1, i32* %447, align 4
  %448 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %449 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %448, i32 0, i32 2
  %450 = call i32 @atomic_inc(i32* %449)
  br label %456

451:                                              ; preds = %439, %436
  %452 = load i32, i32* @R5_WriteError, align 4
  %453 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %454 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %453, i32 0, i32 1
  %455 = call i32 @clear_bit(i32 %452, i32* %454)
  br label %456

456:                                              ; preds = %451, %445
  br label %457

457:                                              ; preds = %456, %412
  %458 = load i32, i32* @R5_MadeGood, align 4
  %459 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %460 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %459, i32 0, i32 1
  %461 = call i64 @test_bit(i32 %458, i32* %460)
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %493

463:                                              ; preds = %457
  %464 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %465 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %464, i32 0, i32 1
  %466 = load %struct.TYPE_3__*, %struct.TYPE_3__** %465, align 8
  %467 = load i32, i32* %8, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %466, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = call %struct.md_rdev* @rcu_dereference(i32 %471)
  store %struct.md_rdev* %472, %struct.md_rdev** %15, align 8
  %473 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %474 = icmp ne %struct.md_rdev* %473, null
  br i1 %474, label %475, label %487

475:                                              ; preds = %463
  %476 = load i32, i32* @Faulty, align 4
  %477 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %478 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %477, i32 0, i32 1
  %479 = call i64 @test_bit(i32 %476, i32* %478)
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %487, label %481

481:                                              ; preds = %475
  %482 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %483 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %482, i32 0, i32 4
  store i32 1, i32* %483, align 4
  %484 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %485 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %484, i32 0, i32 2
  %486 = call i32 @atomic_inc(i32* %485)
  br label %492

487:                                              ; preds = %475, %463
  %488 = load i32, i32* @R5_MadeGood, align 4
  %489 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %490 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %489, i32 0, i32 1
  %491 = call i32 @clear_bit(i32 %488, i32* %490)
  br label %492

492:                                              ; preds = %487, %481
  br label %493

493:                                              ; preds = %492, %457
  %494 = load i32, i32* @R5_MadeGoodRepl, align 4
  %495 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %496 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %495, i32 0, i32 1
  %497 = call i64 @test_bit(i32 %494, i32* %496)
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %529

499:                                              ; preds = %493
  %500 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %501 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %500, i32 0, i32 1
  %502 = load %struct.TYPE_3__*, %struct.TYPE_3__** %501, align 8
  %503 = load i32, i32* %8, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %502, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 4
  %508 = call %struct.md_rdev* @rcu_dereference(i32 %507)
  store %struct.md_rdev* %508, %struct.md_rdev** %16, align 8
  %509 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %510 = icmp ne %struct.md_rdev* %509, null
  br i1 %510, label %511, label %523

511:                                              ; preds = %499
  %512 = load i32, i32* @Faulty, align 4
  %513 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %514 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %513, i32 0, i32 1
  %515 = call i64 @test_bit(i32 %512, i32* %514)
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %523, label %517

517:                                              ; preds = %511
  %518 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %519 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %518, i32 0, i32 4
  store i32 1, i32* %519, align 4
  %520 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %521 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %520, i32 0, i32 2
  %522 = call i32 @atomic_inc(i32* %521)
  br label %528

523:                                              ; preds = %511, %499
  %524 = load i32, i32* @R5_MadeGoodRepl, align 4
  %525 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %526 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %525, i32 0, i32 1
  %527 = call i32 @clear_bit(i32 %524, i32* %526)
  br label %528

528:                                              ; preds = %523, %517
  br label %529

529:                                              ; preds = %528, %493
  %530 = load i32, i32* @R5_Insync, align 4
  %531 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %532 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %531, i32 0, i32 1
  %533 = call i64 @test_bit(i32 %530, i32* %532)
  %534 = icmp ne i64 %533, 0
  br i1 %534, label %544, label %535

535:                                              ; preds = %529
  %536 = load i32, i32* @R5_ReadError, align 4
  %537 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %538 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %537, i32 0, i32 1
  %539 = call i32 @clear_bit(i32 %536, i32* %538)
  %540 = load i32, i32* @R5_ReWrite, align 4
  %541 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %542 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %541, i32 0, i32 1
  %543 = call i32 @clear_bit(i32 %540, i32* %542)
  br label %544

544:                                              ; preds = %535, %529
  %545 = load i32, i32* @R5_ReadError, align 4
  %546 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %547 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %546, i32 0, i32 1
  %548 = call i64 @test_bit(i32 %545, i32* %547)
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %555

550:                                              ; preds = %544
  %551 = load i32, i32* @R5_Insync, align 4
  %552 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %553 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %552, i32 0, i32 1
  %554 = call i32 @clear_bit(i32 %551, i32* %553)
  br label %555

555:                                              ; preds = %550, %544
  %556 = load i32, i32* @R5_Insync, align 4
  %557 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %558 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %557, i32 0, i32 1
  %559 = call i64 @test_bit(i32 %556, i32* %558)
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %615, label %561

561:                                              ; preds = %555
  %562 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %563 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %562, i32 0, i32 5
  %564 = load i32, i32* %563, align 8
  %565 = icmp slt i32 %564, 2
  br i1 %565, label %566, label %576

566:                                              ; preds = %561
  %567 = load i32, i32* %8, align 4
  %568 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %569 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %568, i32 0, i32 2
  %570 = load i32*, i32** %569, align 8
  %571 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %572 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %571, i32 0, i32 5
  %573 = load i32, i32* %572, align 8
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32, i32* %570, i64 %574
  store i32 %567, i32* %575, align 4
  br label %576

576:                                              ; preds = %566, %561
  %577 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %578 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %577, i32 0, i32 5
  %579 = load i32, i32* %578, align 8
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* %578, align 8
  %581 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %582 = icmp ne %struct.md_rdev* %581, null
  br i1 %582, label %583, label %590

583:                                              ; preds = %576
  %584 = load i32, i32* @Faulty, align 4
  %585 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %586 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %585, i32 0, i32 1
  %587 = call i64 @test_bit(i32 %584, i32* %586)
  %588 = icmp ne i64 %587, 0
  br i1 %588, label %590, label %589

589:                                              ; preds = %583
  store i32 1, i32* %9, align 4
  br label %614

590:                                              ; preds = %583, %576
  %591 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %592 = icmp ne %struct.md_rdev* %591, null
  br i1 %592, label %613, label %593

593:                                              ; preds = %590
  %594 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %595 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %594, i32 0, i32 1
  %596 = load %struct.TYPE_3__*, %struct.TYPE_3__** %595, align 8
  %597 = load i32, i32* %8, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %596, i64 %598
  %600 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 4
  %602 = call %struct.md_rdev* @rcu_dereference(i32 %601)
  store %struct.md_rdev* %602, %struct.md_rdev** %10, align 8
  %603 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %604 = icmp ne %struct.md_rdev* %603, null
  br i1 %604, label %605, label %612

605:                                              ; preds = %593
  %606 = load i32, i32* @Faulty, align 4
  %607 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %608 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %607, i32 0, i32 1
  %609 = call i64 @test_bit(i32 %606, i32* %608)
  %610 = icmp ne i64 %609, 0
  br i1 %610, label %612, label %611

611:                                              ; preds = %605
  store i32 1, i32* %9, align 4
  br label %612

612:                                              ; preds = %611, %605, %593
  br label %613

613:                                              ; preds = %612, %590
  br label %614

614:                                              ; preds = %613, %589
  br label %615

615:                                              ; preds = %614, %555
  %616 = load i32, i32* @R5_InJournal, align 4
  %617 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %618 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %617, i32 0, i32 1
  %619 = call i64 @test_bit(i32 %616, i32* %618)
  %620 = icmp ne i64 %619, 0
  br i1 %620, label %621, label %626

621:                                              ; preds = %615
  %622 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %623 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %622, i32 0, i32 9
  %624 = load i32, i32* %623, align 8
  %625 = add nsw i32 %624, 1
  store i32 %625, i32* %623, align 8
  br label %626

626:                                              ; preds = %621, %615
  %627 = load i32, i32* @R5_InJournal, align 4
  %628 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %629 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %628, i32 0, i32 1
  %630 = call i64 @test_bit(i32 %627, i32* %629)
  %631 = icmp ne i64 %630, 0
  br i1 %631, label %632, label %642

632:                                              ; preds = %626
  %633 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %634 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %633, i32 0, i32 0
  %635 = load i64, i64* %634, align 8
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %642

637:                                              ; preds = %632
  %638 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %639 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %638, i32 0, i32 8
  %640 = load i32, i32* %639, align 4
  %641 = add nsw i32 %640, 1
  store i32 %641, i32* %639, align 4
  br label %642

642:                                              ; preds = %637, %632, %626
  br label %71

643:                                              ; preds = %71
  %644 = load i32, i32* @STRIPE_SYNCING, align 4
  %645 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %646 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %645, i32 0, i32 2
  %647 = call i64 @test_bit(i32 %644, i32* %646)
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %677

649:                                              ; preds = %643
  %650 = load i32, i32* %9, align 4
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %670, label %652

652:                                              ; preds = %649
  %653 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %654 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %653, i32 0, i32 1
  %655 = load i64, i64* %654, align 8
  %656 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %657 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %656, i32 0, i32 0
  %658 = load %struct.TYPE_4__*, %struct.TYPE_4__** %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %658, i32 0, i32 0
  %660 = load i64, i64* %659, align 8
  %661 = icmp sge i64 %655, %660
  br i1 %661, label %670, label %662

662:                                              ; preds = %652
  %663 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %664 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %665 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %664, i32 0, i32 0
  %666 = load %struct.TYPE_4__*, %struct.TYPE_4__** %665, align 8
  %667 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %666, i32 0, i32 1
  %668 = call i64 @test_bit(i32 %663, i32* %667)
  %669 = icmp ne i64 %668, 0
  br i1 %669, label %670, label %673

670:                                              ; preds = %662, %652, %649
  %671 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %672 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %671, i32 0, i32 6
  store i32 1, i32* %672, align 4
  br label %676

673:                                              ; preds = %662
  %674 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %675 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %674, i32 0, i32 7
  store i32 1, i32* %675, align 8
  br label %676

676:                                              ; preds = %673, %670
  br label %677

677:                                              ; preds = %676, %643
  %678 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @memset(%struct.stripe_head_state*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @r5l_log_disk_error(%struct.r5conf*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @is_badblock(%struct.md_rdev*, i64, i64, i32*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
