; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_handle_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_handle_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i64, i64, i64, i64, i64, %struct.r5dev*, i64, i32, i32, i32, i32, %struct.r5conf* }
%struct.r5dev = type { i64, i64 }
%struct.r5conf = type { i32, i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i32, i64 }
%struct.TYPE_6__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32 }
%struct.stripe_head_state = type { i32, i32, i64*, i64, i32, i32, i32, i32, i64, i64, %struct.md_rdev*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@STRIPE_HANDLE = common dso_local global i32 0, align 4
@STRIPE_ACTIVE = common dso_local global i32 0, align 4
@STRIPE_BATCH_ERR = common dso_local global i32 0, align 4
@STRIPE_SYNC_REQUESTED = common dso_local global i32 0, align 4
@STRIPE_R5C_PARTIAL_STRIPE = common dso_local global i32 0, align 4
@STRIPE_R5C_FULL_STRIPE = common dso_local global i32 0, align 4
@STRIPE_DISCARD = common dso_local global i32 0, align 4
@STRIPE_SYNCING = common dso_local global i32 0, align 4
@STRIPE_INSYNC = common dso_local global i32 0, align 4
@STRIPE_REPLACED = common dso_local global i32 0, align 4
@STRIPE_DELAYED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"handling stripe %llu, state=%#lx cnt=%d, pd_idx=%d, qd_idx=%d\0A, check:%d, reconstruct:%d\0A\00", align 1
@STRIPE_LOG_TRAPPED = common dso_local global i32 0, align 4
@MD_SB_CHANGE_PENDING = common dso_local global i32 0, align 4
@STRIPE_BIOFILL_RUN = common dso_local global i32 0, align 4
@STRIPE_OP_BIOFILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"locked=%d uptodate=%d to_read=%d to_write=%d failed=%d failed_num=%d,%d\0A\00", align 1
@reconstruct_state_prexor_drain_result = common dso_local global i64 0, align 8
@reconstruct_state_drain_result = common dso_local global i64 0, align 8
@reconstruct_state_idle = common dso_local global i8* null, align 8
@R5_UPTODATE = common dso_local global i32 0, align 4
@R5_Discard = common dso_local global i32 0, align 4
@R5_LOCKED = common dso_local global i32 0, align 4
@R5_InJournal = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Writing block %d\0A\00", align 1
@R5_Wantwrite = common dso_local global i32 0, align 4
@R5_Insync = common dso_local global i32 0, align 4
@STRIPE_PREREAD_ACTIVE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@STRIPE_R5C_CACHING = common dso_local global i32 0, align 4
@STRIPE_COMPUTE_RUN = common dso_local global i32 0, align 4
@R5_NeedReplace = common dso_local global i32 0, align 4
@R5_WantReplace = common dso_local global i32 0, align 4
@STRIPE_SECTORS = common dso_local global i32 0, align 4
@R5_Overlap = common dso_local global i32 0, align 4
@R5_ReadError = common dso_local global i32 0, align 4
@R5_ReWrite = common dso_local global i32 0, align 4
@R5_Wantread = common dso_local global i32 0, align 4
@reconstruct_state_result = common dso_local global i64 0, align 8
@STRIPE_EXPAND_SOURCE = common dso_local global i32 0, align 4
@STRIPE_EXPANDING = common dso_local global i32 0, align 4
@STRIPE_EXPAND_READY = common dso_local global i32 0, align 4
@R5_WriteError = common dso_local global i32 0, align 4
@R5_MadeGood = common dso_local global i32 0, align 4
@R5_MadeGoodRepl = common dso_local global i32 0, align 4
@IO_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*)* @handle_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_stripe(%struct.stripe_head* %0) #0 {
  %2 = alloca %struct.stripe_head*, align 8
  %3 = alloca %struct.stripe_head_state, align 8
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.r5dev*, align 8
  %9 = alloca %struct.r5dev*, align 8
  %10 = alloca %struct.r5dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.r5dev*, align 8
  %13 = alloca %struct.stripe_head*, align 8
  %14 = alloca %struct.md_rdev*, align 8
  %15 = alloca %struct.r5dev*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %2, align 8
  %16 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %17 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %16, i32 0, i32 12
  %18 = load %struct.r5conf*, %struct.r5conf** %17, align 8
  store %struct.r5conf* %18, %struct.r5conf** %4, align 8
  %19 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %20 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @STRIPE_HANDLE, align 4
  %23 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %24 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %23, i32 0, i32 4
  %25 = call i32 @clear_bit(i32 %22, i64* %24)
  %26 = load i32, i32* @STRIPE_ACTIVE, align 4
  %27 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %28 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %27, i32 0, i32 4
  %29 = call i64 @test_and_set_bit_lock(i32 %26, i64* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load i32, i32* @STRIPE_HANDLE, align 4
  %33 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %34 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %33, i32 0, i32 4
  %35 = call i32 @set_bit(i32 %32, i64* %34)
  br label %1360

36:                                               ; preds = %1
  %37 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %38 = call i64 @clear_batch_ready(%struct.stripe_head* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @STRIPE_ACTIVE, align 4
  %42 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %43 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %42, i32 0, i32 4
  %44 = call i32 @clear_bit_unlock(i32 %41, i64* %43)
  br label %1360

45:                                               ; preds = %36
  %46 = load i32, i32* @STRIPE_BATCH_ERR, align 4
  %47 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %48 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %47, i32 0, i32 4
  %49 = call i64 @test_and_clear_bit(i32 %46, i64* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %53 = call i32 @break_stripe_batch_list(%struct.stripe_head* %52, i32 0)
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i32, i32* @STRIPE_SYNC_REQUESTED, align 4
  %56 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %57 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %56, i32 0, i32 4
  %58 = call i64 @test_bit(i32 %55, i64* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %109

60:                                               ; preds = %54
  %61 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %62 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %109, label %65

65:                                               ; preds = %60
  %66 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %67 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %66, i32 0, i32 10
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load i32, i32* @STRIPE_R5C_PARTIAL_STRIPE, align 4
  %70 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %71 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %70, i32 0, i32 4
  %72 = call i64 @test_bit(i32 %69, i64* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %105, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @STRIPE_R5C_FULL_STRIPE, align 4
  %76 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %77 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %76, i32 0, i32 4
  %78 = call i64 @test_bit(i32 %75, i64* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @STRIPE_DISCARD, align 4
  %82 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %83 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %82, i32 0, i32 4
  %84 = call i64 @test_bit(i32 %81, i64* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @STRIPE_SYNC_REQUESTED, align 4
  %88 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %89 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %88, i32 0, i32 4
  %90 = call i64 @test_and_clear_bit(i32 %87, i64* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = load i32, i32* @STRIPE_SYNCING, align 4
  %94 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %95 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %94, i32 0, i32 4
  %96 = call i32 @set_bit(i32 %93, i64* %95)
  %97 = load i32, i32* @STRIPE_INSYNC, align 4
  %98 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %99 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %98, i32 0, i32 4
  %100 = call i32 @clear_bit(i32 %97, i64* %99)
  %101 = load i32, i32* @STRIPE_REPLACED, align 4
  %102 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %103 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %102, i32 0, i32 4
  %104 = call i32 @clear_bit(i32 %101, i64* %103)
  br label %105

105:                                              ; preds = %92, %86, %80, %74, %65
  %106 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %107 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %106, i32 0, i32 10
  %108 = call i32 @spin_unlock(i32* %107)
  br label %109

109:                                              ; preds = %105, %60, %54
  %110 = load i32, i32* @STRIPE_DELAYED, align 4
  %111 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %112 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %111, i32 0, i32 4
  %113 = call i32 @clear_bit(i32 %110, i64* %112)
  %114 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %115 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %119 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %122 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %121, i32 0, i32 9
  %123 = call i64 @atomic_read(i32* %122)
  %124 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %125 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %128 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %131 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %130, i32 0, i32 7
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %134 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %117, i64 %120, i64 %123, i64 %126, i64 %129, i64 %132, i64 %135)
  %137 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %138 = call i32 @analyse_stripe(%struct.stripe_head* %137, %struct.stripe_head_state* %3)
  %139 = load i32, i32* @STRIPE_LOG_TRAPPED, align 4
  %140 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %141 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %140, i32 0, i32 4
  %142 = call i64 @test_bit(i32 %139, i64* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %109
  br label %1180

145:                                              ; preds = %109
  %146 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 9
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %151 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %152 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %151, i32 0, i32 3
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 3
  %155 = call i64 @test_bit(i32 %150, i64* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %149, %145
  %158 = load i32, i32* @STRIPE_HANDLE, align 4
  %159 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %160 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %159, i32 0, i32 4
  %161 = call i32 @set_bit(i32 %158, i64* %160)
  br label %1180

162:                                              ; preds = %149
  %163 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 10
  %164 = load %struct.md_rdev*, %struct.md_rdev** %163, align 8
  %165 = call i64 @unlikely(%struct.md_rdev* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %204

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 15
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %191, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 12
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %191, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 13
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 14
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %191, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 16
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 20
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %187, %183, %179, %175, %171, %167
  %192 = load i32, i32* @STRIPE_HANDLE, align 4
  %193 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %194 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %193, i32 0, i32 4
  %195 = call i32 @set_bit(i32 %192, i64* %194)
  br label %1180

196:                                              ; preds = %187
  %197 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 10
  %198 = load %struct.md_rdev*, %struct.md_rdev** %197, align 8
  %199 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %200 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %199, i32 0, i32 3
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = call i32 @rdev_dec_pending(%struct.md_rdev* %198, %struct.TYPE_7__* %201)
  %203 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 10
  store %struct.md_rdev* null, %struct.md_rdev** %203, align 8
  br label %204

204:                                              ; preds = %196, %162
  %205 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 22
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %204
  %209 = load i32, i32* @STRIPE_BIOFILL_RUN, align 4
  %210 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %211 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %210, i32 0, i32 4
  %212 = call i64 @test_bit(i32 %209, i64* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %208
  %215 = load i32, i32* @STRIPE_OP_BIOFILL, align 4
  %216 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 8
  %217 = call i32 @set_bit(i32 %215, i64* %216)
  %218 = load i32, i32* @STRIPE_BIOFILL_RUN, align 4
  %219 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %220 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %219, i32 0, i32 4
  %221 = call i32 @set_bit(i32 %218, i64* %220)
  br label %222

222:                                              ; preds = %214, %208, %204
  %223 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %224 = load i32, i32* %223, align 8
  %225 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 18
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 16
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 2
  %234 = load i64*, i64** %233, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 0
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 2
  %238 = load i64*, i64** %237, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 1
  %240 = load i64, i64* %239, align 8
  %241 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %224, i32 %226, i64 %228, i64 %230, i32 %232, i64 %236, i64 %240)
  %242 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %245 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp sgt i32 %243, %246
  br i1 %247, label %256, label %248

248:                                              ; preds = %222
  %249 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 21
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %289

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %289

256:                                              ; preds = %252, %222
  %257 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %258 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %257, i32 0, i32 7
  store i64 0, i64* %258, align 8
  %259 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %260 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %259, i32 0, i32 3
  store i64 0, i64* %260, align 8
  %261 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %262 = call i32 @break_stripe_batch_list(%struct.stripe_head* %261, i32 0)
  %263 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 18
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 16
  %266 = load i64, i64* %265, align 8
  %267 = add nsw i64 %264, %266
  %268 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 20
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %267, %269
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %256
  %273 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %274 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %275 = load i32, i32* %7, align 4
  %276 = call i32 @handle_failed_stripe(%struct.r5conf* %273, %struct.stripe_head* %274, %struct.stripe_head_state* %3, i32 %275)
  br label %277

277:                                              ; preds = %272, %256
  %278 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 15
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 14
  %281 = load i64, i64* %280, align 8
  %282 = add nsw i64 %279, %281
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %277
  %285 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %286 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %287 = call i32 @handle_failed_sync(%struct.r5conf* %285, %struct.stripe_head* %286, %struct.stripe_head_state* %3)
  br label %288

288:                                              ; preds = %284, %277
  br label %289

289:                                              ; preds = %288, %252, %248
  store i32 0, i32* %6, align 4
  %290 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %291 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @reconstruct_state_prexor_drain_result, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %289
  store i32 1, i32* %6, align 4
  br label %296

296:                                              ; preds = %295, %289
  %297 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %298 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @reconstruct_state_drain_result, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %308, label %302

302:                                              ; preds = %296
  %303 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %304 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %303, i32 0, i32 3
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @reconstruct_state_prexor_drain_result, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %471

308:                                              ; preds = %302, %296
  %309 = load i8*, i8** @reconstruct_state_idle, align 8
  %310 = ptrtoint i8* %309 to i64
  %311 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %312 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %311, i32 0, i32 3
  store i64 %310, i64* %312, align 8
  %313 = load i32, i32* @R5_UPTODATE, align 4
  %314 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %315 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %314, i32 0, i32 6
  %316 = load %struct.r5dev*, %struct.r5dev** %315, align 8
  %317 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %318 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %316, i64 %319
  %321 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %320, i32 0, i32 0
  %322 = call i64 @test_bit(i32 %313, i64* %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %337, label %324

324:                                              ; preds = %308
  %325 = load i32, i32* @R5_Discard, align 4
  %326 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %327 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %326, i32 0, i32 6
  %328 = load %struct.r5dev*, %struct.r5dev** %327, align 8
  %329 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %330 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %328, i64 %331
  %333 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %332, i32 0, i32 0
  %334 = call i64 @test_bit(i32 %325, i64* %333)
  %335 = icmp ne i64 %334, 0
  %336 = xor i1 %335, true
  br label %337

337:                                              ; preds = %324, %308
  %338 = phi i1 [ false, %308 ], [ %336, %324 ]
  %339 = zext i1 %338 to i32
  %340 = call i32 @BUG_ON(i32 %339)
  %341 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %342 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %341, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = icmp uge i64 %343, 0
  br i1 %344, label %345, label %370

345:                                              ; preds = %337
  %346 = load i32, i32* @R5_UPTODATE, align 4
  %347 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %348 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %347, i32 0, i32 6
  %349 = load %struct.r5dev*, %struct.r5dev** %348, align 8
  %350 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %351 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %350, i32 0, i32 2
  %352 = load i64, i64* %351, align 8
  %353 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %349, i64 %352
  %354 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %353, i32 0, i32 0
  %355 = call i64 @test_bit(i32 %346, i64* %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %370, label %357

357:                                              ; preds = %345
  %358 = load i32, i32* @R5_Discard, align 4
  %359 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %360 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %359, i32 0, i32 6
  %361 = load %struct.r5dev*, %struct.r5dev** %360, align 8
  %362 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %363 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  %365 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %361, i64 %364
  %366 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %365, i32 0, i32 0
  %367 = call i64 @test_bit(i32 %358, i64* %366)
  %368 = icmp ne i64 %367, 0
  %369 = xor i1 %368, true
  br label %370

370:                                              ; preds = %357, %345, %337
  %371 = phi i1 [ false, %345 ], [ false, %337 ], [ %369, %357 ]
  %372 = zext i1 %371 to i32
  %373 = call i32 @BUG_ON(i32 %372)
  %374 = load i32, i32* %7, align 4
  store i32 %374, i32* %5, align 4
  br label %375

375:                                              ; preds = %461, %430, %425, %370
  %376 = load i32, i32* %5, align 4
  %377 = add nsw i32 %376, -1
  store i32 %377, i32* %5, align 4
  %378 = icmp ne i32 %376, 0
  br i1 %378, label %379, label %462

379:                                              ; preds = %375
  %380 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %381 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %380, i32 0, i32 6
  %382 = load %struct.r5dev*, %struct.r5dev** %381, align 8
  %383 = load i32, i32* %5, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %382, i64 %384
  store %struct.r5dev* %385, %struct.r5dev** %10, align 8
  %386 = load i32, i32* @R5_LOCKED, align 4
  %387 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %388 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %387, i32 0, i32 0
  %389 = call i64 @test_bit(i32 %386, i64* %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %461

391:                                              ; preds = %379
  %392 = load i32, i32* %5, align 4
  %393 = sext i32 %392 to i64
  %394 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %395 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = icmp eq i64 %393, %396
  br i1 %397, label %416, label %398

398:                                              ; preds = %391
  %399 = load i32, i32* %5, align 4
  %400 = sext i32 %399 to i64
  %401 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %402 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %401, i32 0, i32 2
  %403 = load i64, i64* %402, align 8
  %404 = icmp eq i64 %400, %403
  br i1 %404, label %416, label %405

405:                                              ; preds = %398
  %406 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %407 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %416, label %410

410:                                              ; preds = %405
  %411 = load i32, i32* @R5_InJournal, align 4
  %412 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %413 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %412, i32 0, i32 0
  %414 = call i64 @test_bit(i32 %411, i64* %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %461

416:                                              ; preds = %410, %405, %398, %391
  %417 = load i32, i32* %5, align 4
  %418 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %417)
  %419 = load i32, i32* @R5_Wantwrite, align 4
  %420 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %421 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %420, i32 0, i32 0
  %422 = call i32 @set_bit(i32 %419, i64* %421)
  %423 = load i32, i32* %6, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %416
  br label %375

426:                                              ; preds = %416
  %427 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = icmp sgt i32 %428, 1
  br i1 %429, label %430, label %431

430:                                              ; preds = %426
  br label %375

431:                                              ; preds = %426
  %432 = load i32, i32* @R5_Insync, align 4
  %433 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %434 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %433, i32 0, i32 0
  %435 = call i64 @test_bit(i32 %432, i64* %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %455

437:                                              ; preds = %431
  %438 = load i32, i32* %5, align 4
  %439 = sext i32 %438 to i64
  %440 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %441 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %440, i32 0, i32 1
  %442 = load i64, i64* %441, align 8
  %443 = icmp eq i64 %439, %442
  br i1 %443, label %451, label %444

444:                                              ; preds = %437
  %445 = load i32, i32* %5, align 4
  %446 = sext i32 %445 to i64
  %447 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %448 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %447, i32 0, i32 2
  %449 = load i64, i64* %448, align 8
  %450 = icmp eq i64 %446, %449
  br i1 %450, label %451, label %460

451:                                              ; preds = %444, %437
  %452 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %460

455:                                              ; preds = %451, %431
  %456 = load i32, i32* @STRIPE_INSYNC, align 4
  %457 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %458 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %457, i32 0, i32 4
  %459 = call i32 @set_bit(i32 %456, i64* %458)
  br label %460

460:                                              ; preds = %455, %451, %444
  br label %461

461:                                              ; preds = %460, %410, %379
  br label %375

462:                                              ; preds = %375
  %463 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %464 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %465 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %464, i32 0, i32 4
  %466 = call i64 @test_and_clear_bit(i32 %463, i64* %465)
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %470

468:                                              ; preds = %462
  %469 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 4
  store i32 1, i32* %469, align 8
  br label %470

470:                                              ; preds = %468, %462
  br label %471

471:                                              ; preds = %470, %302
  %472 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %473 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %472, i32 0, i32 6
  %474 = load %struct.r5dev*, %struct.r5dev** %473, align 8
  %475 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %476 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %475, i32 0, i32 1
  %477 = load i64, i64* %476, align 8
  %478 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %474, i64 %477
  store %struct.r5dev* %478, %struct.r5dev** %8, align 8
  %479 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = icmp sge i32 %480, 1
  br i1 %481, label %482, label %491

482:                                              ; preds = %471
  %483 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 2
  %484 = load i64*, i64** %483, align 8
  %485 = getelementptr inbounds i64, i64* %484, i64 0
  %486 = load i64, i64* %485, align 8
  %487 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %488 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %487, i32 0, i32 1
  %489 = load i64, i64* %488, align 8
  %490 = icmp eq i64 %486, %489
  br i1 %490, label %506, label %491

491:                                              ; preds = %482, %471
  %492 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = icmp sge i32 %493, 2
  br i1 %494, label %495, label %504

495:                                              ; preds = %491
  %496 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 2
  %497 = load i64*, i64** %496, align 8
  %498 = getelementptr inbounds i64, i64* %497, i64 1
  %499 = load i64, i64* %498, align 8
  %500 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %501 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %500, i32 0, i32 1
  %502 = load i64, i64* %501, align 8
  %503 = icmp eq i64 %499, %502
  br label %504

504:                                              ; preds = %495, %491
  %505 = phi i1 [ false, %491 ], [ %503, %495 ]
  br label %506

506:                                              ; preds = %504, %482
  %507 = phi i1 [ true, %482 ], [ %505, %504 ]
  %508 = zext i1 %507 to i32
  %509 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 5
  store i32 %508, i32* %509, align 4
  %510 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %511 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %510, i32 0, i32 6
  %512 = load %struct.r5dev*, %struct.r5dev** %511, align 8
  %513 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %514 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %513, i32 0, i32 2
  %515 = load i64, i64* %514, align 8
  %516 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %512, i64 %515
  store %struct.r5dev* %516, %struct.r5dev** %9, align 8
  %517 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %518 = load i32, i32* %517, align 4
  %519 = icmp sge i32 %518, 1
  br i1 %519, label %520, label %529

520:                                              ; preds = %506
  %521 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 2
  %522 = load i64*, i64** %521, align 8
  %523 = getelementptr inbounds i64, i64* %522, i64 0
  %524 = load i64, i64* %523, align 8
  %525 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %526 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %525, i32 0, i32 2
  %527 = load i64, i64* %526, align 8
  %528 = icmp eq i64 %524, %527
  br i1 %528, label %547, label %529

529:                                              ; preds = %520, %506
  %530 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = icmp sge i32 %531, 2
  br i1 %532, label %533, label %542

533:                                              ; preds = %529
  %534 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 2
  %535 = load i64*, i64** %534, align 8
  %536 = getelementptr inbounds i64, i64* %535, i64 1
  %537 = load i64, i64* %536, align 8
  %538 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %539 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %538, i32 0, i32 2
  %540 = load i64, i64* %539, align 8
  %541 = icmp eq i64 %537, %540
  br i1 %541, label %547, label %542

542:                                              ; preds = %533, %529
  %543 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %544 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = icmp slt i32 %545, 6
  br label %547

547:                                              ; preds = %542, %533, %520
  %548 = phi i1 [ true, %533 ], [ true, %520 ], [ %546, %542 ]
  %549 = zext i1 %548 to i32
  %550 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 6
  store i32 %549, i32* %550, align 8
  %551 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 20
  %552 = load i64, i64* %551, align 8
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %615

554:                                              ; preds = %547
  %555 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 5
  %556 = load i32, i32* %555, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %582, label %558

558:                                              ; preds = %554
  %559 = load i32, i32* @R5_Insync, align 4
  %560 = load %struct.r5dev*, %struct.r5dev** %8, align 8
  %561 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %560, i32 0, i32 0
  %562 = call i64 @test_bit(i32 %559, i64* %561)
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %615

564:                                              ; preds = %558
  %565 = load i32, i32* @R5_LOCKED, align 4
  %566 = load %struct.r5dev*, %struct.r5dev** %8, align 8
  %567 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %566, i32 0, i32 0
  %568 = call i64 @test_bit(i32 %565, i64* %567)
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %615, label %570

570:                                              ; preds = %564
  %571 = load i32, i32* @R5_UPTODATE, align 4
  %572 = load %struct.r5dev*, %struct.r5dev** %8, align 8
  %573 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %572, i32 0, i32 0
  %574 = call i64 @test_bit(i32 %571, i64* %573)
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %582, label %576

576:                                              ; preds = %570
  %577 = load i32, i32* @R5_Discard, align 4
  %578 = load %struct.r5dev*, %struct.r5dev** %8, align 8
  %579 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %578, i32 0, i32 0
  %580 = call i64 @test_bit(i32 %577, i64* %579)
  %581 = icmp ne i64 %580, 0
  br i1 %581, label %582, label %615

582:                                              ; preds = %576, %570, %554
  %583 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 6
  %584 = load i32, i32* %583, align 8
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %610, label %586

586:                                              ; preds = %582
  %587 = load i32, i32* @R5_Insync, align 4
  %588 = load %struct.r5dev*, %struct.r5dev** %9, align 8
  %589 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %588, i32 0, i32 0
  %590 = call i64 @test_bit(i32 %587, i64* %589)
  %591 = icmp ne i64 %590, 0
  br i1 %591, label %592, label %615

592:                                              ; preds = %586
  %593 = load i32, i32* @R5_LOCKED, align 4
  %594 = load %struct.r5dev*, %struct.r5dev** %9, align 8
  %595 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %594, i32 0, i32 0
  %596 = call i64 @test_bit(i32 %593, i64* %595)
  %597 = icmp ne i64 %596, 0
  br i1 %597, label %615, label %598

598:                                              ; preds = %592
  %599 = load i32, i32* @R5_UPTODATE, align 4
  %600 = load %struct.r5dev*, %struct.r5dev** %9, align 8
  %601 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %600, i32 0, i32 0
  %602 = call i64 @test_bit(i32 %599, i64* %601)
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %610, label %604

604:                                              ; preds = %598
  %605 = load i32, i32* @R5_Discard, align 4
  %606 = load %struct.r5dev*, %struct.r5dev** %9, align 8
  %607 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %606, i32 0, i32 0
  %608 = call i64 @test_bit(i32 %605, i64* %607)
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %615

610:                                              ; preds = %604, %598, %582
  %611 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %612 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %613 = load i32, i32* %7, align 4
  %614 = call i32 @handle_stripe_clean_event(%struct.r5conf* %611, %struct.stripe_head* %612, i32 %613)
  br label %615

615:                                              ; preds = %610, %604, %592, %586, %576, %564, %558, %547
  %616 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 19
  %617 = load i64, i64* %616, align 8
  %618 = icmp ne i64 %617, 0
  br i1 %618, label %619, label %624

619:                                              ; preds = %615
  %620 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %621 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %622 = load i32, i32* %7, align 4
  %623 = call i32 @r5c_handle_cached_data_endio(%struct.r5conf* %620, %struct.stripe_head* %621, i32 %622)
  br label %624

624:                                              ; preds = %619, %615
  %625 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %626 = call i32 @log_stripe_write_finished(%struct.stripe_head* %625)
  %627 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 18
  %628 = load i64, i64* %627, align 8
  %629 = icmp ne i64 %628, 0
  br i1 %629, label %667, label %630

630:                                              ; preds = %624
  %631 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 17
  %632 = load i64, i64* %631, align 8
  %633 = icmp ne i64 %632, 0
  br i1 %633, label %667, label %634

634:                                              ; preds = %630
  %635 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %636 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %635, i32 0, i32 1
  %637 = load i32, i32* %636, align 4
  %638 = icmp eq i32 %637, 6
  br i1 %638, label %639, label %647

639:                                              ; preds = %634
  %640 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 16
  %641 = load i64, i64* %640, align 8
  %642 = icmp ne i64 %641, 0
  br i1 %642, label %643, label %647

643:                                              ; preds = %639
  %644 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %645 = load i32, i32* %644, align 4
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %667, label %647

647:                                              ; preds = %643, %639, %634
  %648 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 15
  %649 = load i64, i64* %648, align 8
  %650 = icmp ne i64 %649, 0
  br i1 %650, label %651, label %659

651:                                              ; preds = %647
  %652 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 0
  %653 = load i32, i32* %652, align 8
  %654 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 7
  %655 = load i32, i32* %654, align 4
  %656 = add nsw i32 %653, %655
  %657 = load i32, i32* %7, align 4
  %658 = icmp slt i32 %656, %657
  br i1 %658, label %667, label %659

659:                                              ; preds = %651, %647
  %660 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 14
  %661 = load i64, i64* %660, align 8
  %662 = icmp ne i64 %661, 0
  br i1 %662, label %667, label %663

663:                                              ; preds = %659
  %664 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 12
  %665 = load i64, i64* %664, align 8
  %666 = icmp ne i64 %665, 0
  br i1 %666, label %667, label %671

667:                                              ; preds = %663, %659, %651, %643, %630, %624
  %668 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %669 = load i32, i32* %7, align 4
  %670 = call i32 @handle_stripe_fill(%struct.stripe_head* %668, %struct.stripe_head_state* %3, i32 %669)
  br label %671

671:                                              ; preds = %667, %663
  %672 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %673 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %674 = call i32 @r5c_finish_stripe_write_out(%struct.r5conf* %672, %struct.stripe_head* %673, %struct.stripe_head_state* %3)
  %675 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %676 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %675, i32 0, i32 3
  %677 = load i64, i64* %676, align 8
  %678 = icmp ne i64 %677, 0
  br i1 %678, label %742, label %679

679:                                              ; preds = %671
  %680 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %681 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %680, i32 0, i32 7
  %682 = load i64, i64* %681, align 8
  %683 = icmp ne i64 %682, 0
  br i1 %683, label %742, label %684

684:                                              ; preds = %679
  %685 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %686 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %685, i32 0, i32 8
  %687 = load i32, i32* %686, align 8
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %742, label %689

689:                                              ; preds = %684
  %690 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %691 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %690, i32 0, i32 8
  %692 = load i32, i32* %691, align 8
  %693 = call i32 @r5c_is_writeback(i32 %692)
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %705, label %695

695:                                              ; preds = %689
  %696 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 16
  %697 = load i64, i64* %696, align 8
  %698 = icmp ne i64 %697, 0
  br i1 %698, label %699, label %704

699:                                              ; preds = %695
  %700 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %701 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %702 = load i32, i32* %7, align 4
  %703 = call i32 @handle_stripe_dirtying(%struct.r5conf* %700, %struct.stripe_head* %701, %struct.stripe_head_state* %3, i32 %702)
  br label %704

704:                                              ; preds = %699, %695
  br label %741

705:                                              ; preds = %689
  store i32 0, i32* %11, align 4
  %706 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 16
  %707 = load i64, i64* %706, align 8
  %708 = icmp ne i64 %707, 0
  br i1 %708, label %709, label %714

709:                                              ; preds = %705
  %710 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %711 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %712 = load i32, i32* %7, align 4
  %713 = call i32 @r5c_try_caching_write(%struct.r5conf* %710, %struct.stripe_head* %711, %struct.stripe_head_state* %3, i32 %712)
  store i32 %713, i32* %11, align 4
  br label %714

714:                                              ; preds = %709, %705
  %715 = load i32, i32* %11, align 4
  %716 = load i32, i32* @EAGAIN, align 4
  %717 = sub nsw i32 0, %716
  %718 = icmp eq i32 %715, %717
  br i1 %718, label %729, label %719

719:                                              ; preds = %714
  %720 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %721 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %722 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %721, i32 0, i32 4
  %723 = call i64 @test_bit(i32 %720, i64* %722)
  %724 = icmp ne i64 %723, 0
  br i1 %724, label %740, label %725

725:                                              ; preds = %719
  %726 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 3
  %727 = load i64, i64* %726, align 8
  %728 = icmp sgt i64 %727, 0
  br i1 %728, label %729, label %740

729:                                              ; preds = %725, %714
  %730 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %731 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %732 = load i32, i32* %7, align 4
  %733 = call i32 @handle_stripe_dirtying(%struct.r5conf* %730, %struct.stripe_head* %731, %struct.stripe_head_state* %3, i32 %732)
  store i32 %733, i32* %11, align 4
  %734 = load i32, i32* %11, align 4
  %735 = load i32, i32* @EAGAIN, align 4
  %736 = sub nsw i32 0, %735
  %737 = icmp eq i32 %734, %736
  br i1 %737, label %738, label %739

738:                                              ; preds = %729
  br label %1180

739:                                              ; preds = %729
  br label %740

740:                                              ; preds = %739, %725, %719
  br label %741

741:                                              ; preds = %740, %704
  br label %742

742:                                              ; preds = %741, %684, %679, %671
  %743 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %744 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %743, i32 0, i32 7
  %745 = load i64, i64* %744, align 8
  %746 = icmp ne i64 %745, 0
  br i1 %746, label %767, label %747

747:                                              ; preds = %742
  %748 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 15
  %749 = load i64, i64* %748, align 8
  %750 = icmp ne i64 %749, 0
  br i1 %750, label %751, label %783

751:                                              ; preds = %747
  %752 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %753 = load i32, i32* %752, align 8
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %783

755:                                              ; preds = %751
  %756 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %757 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %758 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %757, i32 0, i32 4
  %759 = call i64 @test_bit(i32 %756, i64* %758)
  %760 = icmp ne i64 %759, 0
  br i1 %760, label %783, label %761

761:                                              ; preds = %755
  %762 = load i32, i32* @STRIPE_INSYNC, align 4
  %763 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %764 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %763, i32 0, i32 4
  %765 = call i64 @test_bit(i32 %762, i64* %764)
  %766 = icmp ne i64 %765, 0
  br i1 %766, label %783, label %767

767:                                              ; preds = %761, %742
  %768 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %769 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %768, i32 0, i32 1
  %770 = load i32, i32* %769, align 4
  %771 = icmp eq i32 %770, 6
  br i1 %771, label %772, label %777

772:                                              ; preds = %767
  %773 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %774 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %775 = load i32, i32* %7, align 4
  %776 = call i32 @handle_parity_checks6(%struct.r5conf* %773, %struct.stripe_head* %774, %struct.stripe_head_state* %3, i32 %775)
  br label %782

777:                                              ; preds = %767
  %778 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %779 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %780 = load i32, i32* %7, align 4
  %781 = call i32 @handle_parity_checks5(%struct.r5conf* %778, %struct.stripe_head* %779, %struct.stripe_head_state* %3, i32 %780)
  br label %782

782:                                              ; preds = %777, %772
  br label %783

783:                                              ; preds = %782, %761, %755, %751, %747
  %784 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 14
  %785 = load i64, i64* %784, align 8
  %786 = icmp ne i64 %785, 0
  br i1 %786, label %791, label %787

787:                                              ; preds = %783
  %788 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 15
  %789 = load i64, i64* %788, align 8
  %790 = icmp ne i64 %789, 0
  br i1 %790, label %791, label %878

791:                                              ; preds = %787, %783
  %792 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %793 = load i32, i32* %792, align 8
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %795, label %878

795:                                              ; preds = %791
  %796 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %797 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %798 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %797, i32 0, i32 4
  %799 = call i64 @test_bit(i32 %796, i64* %798)
  %800 = icmp ne i64 %799, 0
  br i1 %800, label %878, label %801

801:                                              ; preds = %795
  %802 = load i32, i32* @STRIPE_REPLACED, align 4
  %803 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %804 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %803, i32 0, i32 4
  %805 = call i64 @test_bit(i32 %802, i64* %804)
  %806 = icmp ne i64 %805, 0
  br i1 %806, label %878, label %807

807:                                              ; preds = %801
  store i32 0, i32* %5, align 4
  br label %808

808:                                              ; preds = %861, %807
  %809 = load i32, i32* %5, align 4
  %810 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %811 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %810, i32 0, i32 2
  %812 = load i32, i32* %811, align 8
  %813 = icmp slt i32 %809, %812
  br i1 %813, label %814, label %864

814:                                              ; preds = %808
  %815 = load i32, i32* @R5_NeedReplace, align 4
  %816 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %817 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %816, i32 0, i32 6
  %818 = load %struct.r5dev*, %struct.r5dev** %817, align 8
  %819 = load i32, i32* %5, align 4
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %818, i64 %820
  %822 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %821, i32 0, i32 0
  %823 = call i64 @test_bit(i32 %815, i64* %822)
  %824 = icmp ne i64 %823, 0
  br i1 %824, label %825, label %860

825:                                              ; preds = %814
  %826 = load i32, i32* @R5_UPTODATE, align 4
  %827 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %828 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %827, i32 0, i32 6
  %829 = load %struct.r5dev*, %struct.r5dev** %828, align 8
  %830 = load i32, i32* %5, align 4
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %829, i64 %831
  %833 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %832, i32 0, i32 0
  %834 = call i64 @test_bit(i32 %826, i64* %833)
  %835 = icmp ne i64 %834, 0
  %836 = xor i1 %835, true
  %837 = zext i1 %836 to i32
  %838 = call i32 @WARN_ON(i32 %837)
  %839 = load i32, i32* @R5_WantReplace, align 4
  %840 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %841 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %840, i32 0, i32 6
  %842 = load %struct.r5dev*, %struct.r5dev** %841, align 8
  %843 = load i32, i32* %5, align 4
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %842, i64 %844
  %846 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %845, i32 0, i32 0
  %847 = call i32 @set_bit(i32 %839, i64* %846)
  %848 = load i32, i32* @R5_LOCKED, align 4
  %849 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %850 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %849, i32 0, i32 6
  %851 = load %struct.r5dev*, %struct.r5dev** %850, align 8
  %852 = load i32, i32* %5, align 4
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %851, i64 %853
  %855 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %854, i32 0, i32 0
  %856 = call i32 @set_bit(i32 %848, i64* %855)
  %857 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %858 = load i32, i32* %857, align 8
  %859 = add nsw i32 %858, 1
  store i32 %859, i32* %857, align 8
  br label %860

860:                                              ; preds = %825, %814
  br label %861

861:                                              ; preds = %860
  %862 = load i32, i32* %5, align 4
  %863 = add nsw i32 %862, 1
  store i32 %863, i32* %5, align 4
  br label %808

864:                                              ; preds = %808
  %865 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 14
  %866 = load i64, i64* %865, align 8
  %867 = icmp ne i64 %866, 0
  br i1 %867, label %868, label %873

868:                                              ; preds = %864
  %869 = load i32, i32* @STRIPE_INSYNC, align 4
  %870 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %871 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %870, i32 0, i32 4
  %872 = call i32 @set_bit(i32 %869, i64* %871)
  br label %873

873:                                              ; preds = %868, %864
  %874 = load i32, i32* @STRIPE_REPLACED, align 4
  %875 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %876 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %875, i32 0, i32 4
  %877 = call i32 @set_bit(i32 %874, i64* %876)
  br label %878

878:                                              ; preds = %873, %801, %795, %791, %787
  %879 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 15
  %880 = load i64, i64* %879, align 8
  %881 = icmp ne i64 %880, 0
  br i1 %881, label %886, label %882

882:                                              ; preds = %878
  %883 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 14
  %884 = load i64, i64* %883, align 8
  %885 = icmp ne i64 %884, 0
  br i1 %885, label %886, label %928

886:                                              ; preds = %882, %878
  %887 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %888 = load i32, i32* %887, align 8
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %890, label %928

890:                                              ; preds = %886
  %891 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %892 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %893 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %892, i32 0, i32 4
  %894 = call i64 @test_bit(i32 %891, i64* %893)
  %895 = icmp ne i64 %894, 0
  br i1 %895, label %928, label %896

896:                                              ; preds = %890
  %897 = load i32, i32* @STRIPE_INSYNC, align 4
  %898 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %899 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %898, i32 0, i32 4
  %900 = call i64 @test_bit(i32 %897, i64* %899)
  %901 = icmp ne i64 %900, 0
  br i1 %901, label %902, label %928

902:                                              ; preds = %896
  %903 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %904 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %903, i32 0, i32 3
  %905 = load %struct.TYPE_7__*, %struct.TYPE_7__** %904, align 8
  %906 = load i32, i32* @STRIPE_SECTORS, align 4
  %907 = call i32 @md_done_sync(%struct.TYPE_7__* %905, i32 %906, i32 1)
  %908 = load i32, i32* @STRIPE_SYNCING, align 4
  %909 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %910 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %909, i32 0, i32 4
  %911 = call i32 @clear_bit(i32 %908, i64* %910)
  %912 = load i32, i32* @R5_Overlap, align 4
  %913 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %914 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %913, i32 0, i32 6
  %915 = load %struct.r5dev*, %struct.r5dev** %914, align 8
  %916 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %917 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %916, i32 0, i32 1
  %918 = load i64, i64* %917, align 8
  %919 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %915, i64 %918
  %920 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %919, i32 0, i32 0
  %921 = call i64 @test_and_clear_bit(i32 %912, i64* %920)
  %922 = icmp ne i64 %921, 0
  br i1 %922, label %923, label %927

923:                                              ; preds = %902
  %924 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %925 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %924, i32 0, i32 6
  %926 = call i32 @wake_up(i32* %925)
  br label %927

927:                                              ; preds = %923, %902
  br label %928

928:                                              ; preds = %927, %896, %890, %886, %882
  %929 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %930 = load i32, i32* %929, align 4
  %931 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %932 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %931, i32 0, i32 0
  %933 = load i32, i32* %932, align 8
  %934 = icmp sle i32 %930, %933
  br i1 %934, label %935, label %1016

935:                                              ; preds = %928
  %936 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %937 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %936, i32 0, i32 3
  %938 = load %struct.TYPE_7__*, %struct.TYPE_7__** %937, align 8
  %939 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %938, i32 0, i32 2
  %940 = load i32, i32* %939, align 8
  %941 = icmp ne i32 %940, 0
  br i1 %941, label %1016, label %942

942:                                              ; preds = %935
  store i32 0, i32* %5, align 4
  br label %943

943:                                              ; preds = %1012, %942
  %944 = load i32, i32* %5, align 4
  %945 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %946 = load i32, i32* %945, align 4
  %947 = icmp slt i32 %944, %946
  br i1 %947, label %948, label %1015

948:                                              ; preds = %943
  %949 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %950 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %949, i32 0, i32 6
  %951 = load %struct.r5dev*, %struct.r5dev** %950, align 8
  %952 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 2
  %953 = load i64*, i64** %952, align 8
  %954 = load i32, i32* %5, align 4
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds i64, i64* %953, i64 %955
  %957 = load i64, i64* %956, align 8
  %958 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %951, i64 %957
  store %struct.r5dev* %958, %struct.r5dev** %12, align 8
  %959 = load i32, i32* @R5_ReadError, align 4
  %960 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %961 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %960, i32 0, i32 0
  %962 = call i64 @test_bit(i32 %959, i64* %961)
  %963 = icmp ne i64 %962, 0
  br i1 %963, label %964, label %1011

964:                                              ; preds = %948
  %965 = load i32, i32* @R5_LOCKED, align 4
  %966 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %967 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %966, i32 0, i32 0
  %968 = call i64 @test_bit(i32 %965, i64* %967)
  %969 = icmp ne i64 %968, 0
  br i1 %969, label %1011, label %970

970:                                              ; preds = %964
  %971 = load i32, i32* @R5_UPTODATE, align 4
  %972 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %973 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %972, i32 0, i32 0
  %974 = call i64 @test_bit(i32 %971, i64* %973)
  %975 = icmp ne i64 %974, 0
  br i1 %975, label %976, label %1011

976:                                              ; preds = %970
  %977 = load i32, i32* @R5_ReWrite, align 4
  %978 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %979 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %978, i32 0, i32 0
  %980 = call i64 @test_bit(i32 %977, i64* %979)
  %981 = icmp ne i64 %980, 0
  br i1 %981, label %998, label %982

982:                                              ; preds = %976
  %983 = load i32, i32* @R5_Wantwrite, align 4
  %984 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %985 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %984, i32 0, i32 0
  %986 = call i32 @set_bit(i32 %983, i64* %985)
  %987 = load i32, i32* @R5_ReWrite, align 4
  %988 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %989 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %988, i32 0, i32 0
  %990 = call i32 @set_bit(i32 %987, i64* %989)
  %991 = load i32, i32* @R5_LOCKED, align 4
  %992 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %993 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %992, i32 0, i32 0
  %994 = call i32 @set_bit(i32 %991, i64* %993)
  %995 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %996 = load i32, i32* %995, align 8
  %997 = add nsw i32 %996, 1
  store i32 %997, i32* %995, align 8
  br label %1010

998:                                              ; preds = %976
  %999 = load i32, i32* @R5_Wantread, align 4
  %1000 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %1001 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %1000, i32 0, i32 0
  %1002 = call i32 @set_bit(i32 %999, i64* %1001)
  %1003 = load i32, i32* @R5_LOCKED, align 4
  %1004 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %1005 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %1004, i32 0, i32 0
  %1006 = call i32 @set_bit(i32 %1003, i64* %1005)
  %1007 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %1008 = load i32, i32* %1007, align 8
  %1009 = add nsw i32 %1008, 1
  store i32 %1009, i32* %1007, align 8
  br label %1010

1010:                                             ; preds = %998, %982
  br label %1011

1011:                                             ; preds = %1010, %970, %964, %948
  br label %1012

1012:                                             ; preds = %1011
  %1013 = load i32, i32* %5, align 4
  %1014 = add nsw i32 %1013, 1
  store i32 %1014, i32* %5, align 4
  br label %943

1015:                                             ; preds = %943
  br label %1016

1016:                                             ; preds = %1015, %935, %928
  %1017 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1018 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1017, i32 0, i32 3
  %1019 = load i64, i64* %1018, align 8
  %1020 = load i64, i64* @reconstruct_state_result, align 8
  %1021 = icmp eq i64 %1019, %1020
  br i1 %1021, label %1022, label %1102

1022:                                             ; preds = %1016
  %1023 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1024 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1025 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1024, i32 0, i32 5
  %1026 = load i64, i64* %1025, align 8
  %1027 = call %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf* %1023, i64 %1026, i32 1, i32 1, i32 1)
  store %struct.stripe_head* %1027, %struct.stripe_head** %13, align 8
  %1028 = load %struct.stripe_head*, %struct.stripe_head** %13, align 8
  %1029 = icmp ne %struct.stripe_head* %1028, null
  br i1 %1029, label %1030, label %1057

1030:                                             ; preds = %1022
  %1031 = load i32, i32* @STRIPE_EXPAND_SOURCE, align 4
  %1032 = load %struct.stripe_head*, %struct.stripe_head** %13, align 8
  %1033 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1032, i32 0, i32 4
  %1034 = call i64 @test_bit(i32 %1031, i64* %1033)
  %1035 = icmp ne i64 %1034, 0
  br i1 %1035, label %1036, label %1057

1036:                                             ; preds = %1030
  %1037 = load i32, i32* @STRIPE_DELAYED, align 4
  %1038 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1039 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1038, i32 0, i32 4
  %1040 = call i32 @set_bit(i32 %1037, i64* %1039)
  %1041 = load i32, i32* @STRIPE_HANDLE, align 4
  %1042 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1043 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1042, i32 0, i32 4
  %1044 = call i32 @set_bit(i32 %1041, i64* %1043)
  %1045 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %1046 = load %struct.stripe_head*, %struct.stripe_head** %13, align 8
  %1047 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1046, i32 0, i32 4
  %1048 = call i32 @test_and_set_bit(i32 %1045, i64* %1047)
  %1049 = icmp ne i32 %1048, 0
  br i1 %1049, label %1054, label %1050

1050:                                             ; preds = %1036
  %1051 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1052 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1051, i32 0, i32 4
  %1053 = call i32 @atomic_inc(i32* %1052)
  br label %1054

1054:                                             ; preds = %1050, %1036
  %1055 = load %struct.stripe_head*, %struct.stripe_head** %13, align 8
  %1056 = call i32 @raid5_release_stripe(%struct.stripe_head* %1055)
  br label %1180

1057:                                             ; preds = %1030, %1022
  %1058 = load %struct.stripe_head*, %struct.stripe_head** %13, align 8
  %1059 = icmp ne %struct.stripe_head* %1058, null
  br i1 %1059, label %1060, label %1063

1060:                                             ; preds = %1057
  %1061 = load %struct.stripe_head*, %struct.stripe_head** %13, align 8
  %1062 = call i32 @raid5_release_stripe(%struct.stripe_head* %1061)
  br label %1063

1063:                                             ; preds = %1060, %1057
  %1064 = load i8*, i8** @reconstruct_state_idle, align 8
  %1065 = ptrtoint i8* %1064 to i64
  %1066 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1067 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1066, i32 0, i32 3
  store i64 %1065, i64* %1067, align 8
  %1068 = load i32, i32* @STRIPE_EXPANDING, align 4
  %1069 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1070 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1069, i32 0, i32 4
  %1071 = call i32 @clear_bit(i32 %1068, i64* %1070)
  %1072 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1073 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1072, i32 0, i32 2
  %1074 = load i32, i32* %1073, align 8
  store i32 %1074, i32* %5, align 4
  br label %1075

1075:                                             ; preds = %1079, %1063
  %1076 = load i32, i32* %5, align 4
  %1077 = add nsw i32 %1076, -1
  store i32 %1077, i32* %5, align 4
  %1078 = icmp ne i32 %1076, 0
  br i1 %1078, label %1079, label %1101

1079:                                             ; preds = %1075
  %1080 = load i32, i32* @R5_Wantwrite, align 4
  %1081 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1082 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1081, i32 0, i32 6
  %1083 = load %struct.r5dev*, %struct.r5dev** %1082, align 8
  %1084 = load i32, i32* %5, align 4
  %1085 = sext i32 %1084 to i64
  %1086 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %1083, i64 %1085
  %1087 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %1086, i32 0, i32 0
  %1088 = call i32 @set_bit(i32 %1080, i64* %1087)
  %1089 = load i32, i32* @R5_LOCKED, align 4
  %1090 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1091 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1090, i32 0, i32 6
  %1092 = load %struct.r5dev*, %struct.r5dev** %1091, align 8
  %1093 = load i32, i32* %5, align 4
  %1094 = sext i32 %1093 to i64
  %1095 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %1092, i64 %1094
  %1096 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %1095, i32 0, i32 0
  %1097 = call i32 @set_bit(i32 %1089, i64* %1096)
  %1098 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %1099 = load i32, i32* %1098, align 8
  %1100 = add nsw i32 %1099, 1
  store i32 %1100, i32* %1098, align 8
  br label %1075

1101:                                             ; preds = %1075
  br label %1102

1102:                                             ; preds = %1101, %1016
  %1103 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 13
  %1104 = load i64, i64* %1103, align 8
  %1105 = icmp ne i64 %1104, 0
  br i1 %1105, label %1106, label %1131

1106:                                             ; preds = %1102
  %1107 = load i32, i32* @STRIPE_EXPANDING, align 4
  %1108 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1109 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1108, i32 0, i32 4
  %1110 = call i64 @test_bit(i32 %1107, i64* %1109)
  %1111 = icmp ne i64 %1110, 0
  br i1 %1111, label %1112, label %1131

1112:                                             ; preds = %1106
  %1113 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1114 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1113, i32 0, i32 3
  %1115 = load i64, i64* %1114, align 8
  %1116 = icmp ne i64 %1115, 0
  br i1 %1116, label %1131, label %1117

1117:                                             ; preds = %1112
  %1118 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1119 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1118, i32 0, i32 2
  %1120 = load i32, i32* %1119, align 8
  %1121 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1122 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1121, i32 0, i32 0
  store i32 %1120, i32* %1122, align 8
  %1123 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1124 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1123, i32 0, i32 5
  %1125 = load i64, i64* %1124, align 8
  %1126 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1127 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1128 = call i32 @stripe_set_idx(i64 %1125, %struct.r5conf* %1126, i32 0, %struct.stripe_head* %1127)
  %1129 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1130 = call i32 @schedule_reconstruction(%struct.stripe_head* %1129, %struct.stripe_head_state* %3, i32 1, i32 1)
  br label %1161

1131:                                             ; preds = %1112, %1106, %1102
  %1132 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 13
  %1133 = load i64, i64* %1132, align 8
  %1134 = icmp ne i64 %1133, 0
  br i1 %1134, label %1135, label %1160

1135:                                             ; preds = %1131
  %1136 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1137 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1136, i32 0, i32 3
  %1138 = load i64, i64* %1137, align 8
  %1139 = icmp ne i64 %1138, 0
  br i1 %1139, label %1160, label %1140

1140:                                             ; preds = %1135
  %1141 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %1142 = load i32, i32* %1141, align 8
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1144, label %1160

1144:                                             ; preds = %1140
  %1145 = load i32, i32* @STRIPE_EXPAND_READY, align 4
  %1146 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1147 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1146, i32 0, i32 4
  %1148 = call i32 @clear_bit(i32 %1145, i64* %1147)
  %1149 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1150 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1149, i32 0, i32 7
  %1151 = call i32 @atomic_dec(i32* %1150)
  %1152 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1153 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1152, i32 0, i32 6
  %1154 = call i32 @wake_up(i32* %1153)
  %1155 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1156 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1155, i32 0, i32 3
  %1157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1156, align 8
  %1158 = load i32, i32* @STRIPE_SECTORS, align 4
  %1159 = call i32 @md_done_sync(%struct.TYPE_7__* %1157, i32 %1158, i32 1)
  br label %1160

1160:                                             ; preds = %1144, %1140, %1135, %1131
  br label %1161

1161:                                             ; preds = %1160, %1117
  %1162 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 12
  %1163 = load i64, i64* %1162, align 8
  %1164 = icmp ne i64 %1163, 0
  br i1 %1164, label %1165, label %1179

1165:                                             ; preds = %1161
  %1166 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %1167 = load i32, i32* %1166, align 8
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1169, label %1179

1169:                                             ; preds = %1165
  %1170 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %1171 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1172 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1171, i32 0, i32 4
  %1173 = call i64 @test_bit(i32 %1170, i64* %1172)
  %1174 = icmp ne i64 %1173, 0
  br i1 %1174, label %1179, label %1175

1175:                                             ; preds = %1169
  %1176 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1177 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1178 = call i32 @handle_stripe_expansion(%struct.r5conf* %1176, %struct.stripe_head* %1177)
  br label %1179

1179:                                             ; preds = %1175, %1169, %1165, %1161
  br label %1180

1180:                                             ; preds = %1179, %1054, %738, %191, %157, %144
  %1181 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 10
  %1182 = load %struct.md_rdev*, %struct.md_rdev** %1181, align 8
  %1183 = call i64 @unlikely(%struct.md_rdev* %1182)
  %1184 = icmp ne i64 %1183, 0
  br i1 %1184, label %1185, label %1207

1185:                                             ; preds = %1180
  %1186 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1187 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1186, i32 0, i32 3
  %1188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1187, align 8
  %1189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1188, i32 0, i32 1
  %1190 = load i64, i64* %1189, align 8
  %1191 = icmp ne i64 %1190, 0
  br i1 %1191, label %1192, label %1199

1192:                                             ; preds = %1185
  %1193 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 10
  %1194 = load %struct.md_rdev*, %struct.md_rdev** %1193, align 8
  %1195 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1196 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1195, i32 0, i32 3
  %1197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1196, align 8
  %1198 = call i32 @md_wait_for_blocked_rdev(%struct.md_rdev* %1194, %struct.TYPE_7__* %1197)
  br label %1206

1199:                                             ; preds = %1185
  %1200 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 10
  %1201 = load %struct.md_rdev*, %struct.md_rdev** %1200, align 8
  %1202 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1203 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1202, i32 0, i32 3
  %1204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1203, align 8
  %1205 = call i32 @rdev_dec_pending(%struct.md_rdev* %1201, %struct.TYPE_7__* %1204)
  br label %1206

1206:                                             ; preds = %1199, %1192
  br label %1207

1207:                                             ; preds = %1206, %1180
  %1208 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 9
  %1209 = load i64, i64* %1208, align 8
  %1210 = icmp ne i64 %1209, 0
  br i1 %1210, label %1211, label %1323

1211:                                             ; preds = %1207
  %1212 = load i32, i32* %7, align 4
  store i32 %1212, i32* %5, align 4
  br label %1213

1213:                                             ; preds = %1321, %1211
  %1214 = load i32, i32* %5, align 4
  %1215 = add nsw i32 %1214, -1
  store i32 %1215, i32* %5, align 4
  %1216 = icmp ne i32 %1214, 0
  br i1 %1216, label %1217, label %1322

1217:                                             ; preds = %1213
  %1218 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1219 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1218, i32 0, i32 6
  %1220 = load %struct.r5dev*, %struct.r5dev** %1219, align 8
  %1221 = load i32, i32* %5, align 4
  %1222 = sext i32 %1221 to i64
  %1223 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %1220, i64 %1222
  store %struct.r5dev* %1223, %struct.r5dev** %15, align 8
  %1224 = load i32, i32* @R5_WriteError, align 4
  %1225 = load %struct.r5dev*, %struct.r5dev** %15, align 8
  %1226 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %1225, i32 0, i32 0
  %1227 = call i64 @test_and_clear_bit(i32 %1224, i64* %1226)
  %1228 = icmp ne i64 %1227, 0
  br i1 %1228, label %1229, label %1257

1229:                                             ; preds = %1217
  %1230 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1231 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1230, i32 0, i32 5
  %1232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1231, align 8
  %1233 = load i32, i32* %5, align 4
  %1234 = sext i32 %1233 to i64
  %1235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1232, i64 %1234
  %1236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1235, i32 0, i32 0
  %1237 = load %struct.md_rdev*, %struct.md_rdev** %1236, align 8
  store %struct.md_rdev* %1237, %struct.md_rdev** %14, align 8
  %1238 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %1239 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1240 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1239, i32 0, i32 5
  %1241 = load i64, i64* %1240, align 8
  %1242 = load i32, i32* @STRIPE_SECTORS, align 4
  %1243 = call i32 @rdev_set_badblocks(%struct.md_rdev* %1238, i64 %1241, i32 %1242, i32 0)
  %1244 = icmp ne i32 %1243, 0
  br i1 %1244, label %1251, label %1245

1245:                                             ; preds = %1229
  %1246 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1247 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1246, i32 0, i32 3
  %1248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1247, align 8
  %1249 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %1250 = call i32 @md_error(%struct.TYPE_7__* %1248, %struct.md_rdev* %1249)
  br label %1251

1251:                                             ; preds = %1245, %1229
  %1252 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %1253 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1254 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1253, i32 0, i32 3
  %1255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1254, align 8
  %1256 = call i32 @rdev_dec_pending(%struct.md_rdev* %1252, %struct.TYPE_7__* %1255)
  br label %1257

1257:                                             ; preds = %1251, %1217
  %1258 = load i32, i32* @R5_MadeGood, align 4
  %1259 = load %struct.r5dev*, %struct.r5dev** %15, align 8
  %1260 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %1259, i32 0, i32 0
  %1261 = call i64 @test_and_clear_bit(i32 %1258, i64* %1260)
  %1262 = icmp ne i64 %1261, 0
  br i1 %1262, label %1263, label %1283

1263:                                             ; preds = %1257
  %1264 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1265 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1264, i32 0, i32 5
  %1266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1265, align 8
  %1267 = load i32, i32* %5, align 4
  %1268 = sext i32 %1267 to i64
  %1269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1266, i64 %1268
  %1270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1269, i32 0, i32 0
  %1271 = load %struct.md_rdev*, %struct.md_rdev** %1270, align 8
  store %struct.md_rdev* %1271, %struct.md_rdev** %14, align 8
  %1272 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %1273 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1274 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1273, i32 0, i32 5
  %1275 = load i64, i64* %1274, align 8
  %1276 = load i32, i32* @STRIPE_SECTORS, align 4
  %1277 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %1272, i64 %1275, i32 %1276, i32 0)
  %1278 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %1279 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1280 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1279, i32 0, i32 3
  %1281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1280, align 8
  %1282 = call i32 @rdev_dec_pending(%struct.md_rdev* %1278, %struct.TYPE_7__* %1281)
  br label %1283

1283:                                             ; preds = %1263, %1257
  %1284 = load i32, i32* @R5_MadeGoodRepl, align 4
  %1285 = load %struct.r5dev*, %struct.r5dev** %15, align 8
  %1286 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %1285, i32 0, i32 0
  %1287 = call i64 @test_and_clear_bit(i32 %1284, i64* %1286)
  %1288 = icmp ne i64 %1287, 0
  br i1 %1288, label %1289, label %1321

1289:                                             ; preds = %1283
  %1290 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1291 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1290, i32 0, i32 5
  %1292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1291, align 8
  %1293 = load i32, i32* %5, align 4
  %1294 = sext i32 %1293 to i64
  %1295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1292, i64 %1294
  %1296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1295, i32 0, i32 1
  %1297 = load %struct.md_rdev*, %struct.md_rdev** %1296, align 8
  store %struct.md_rdev* %1297, %struct.md_rdev** %14, align 8
  %1298 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %1299 = icmp ne %struct.md_rdev* %1298, null
  br i1 %1299, label %1309, label %1300

1300:                                             ; preds = %1289
  %1301 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1302 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1301, i32 0, i32 5
  %1303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1302, align 8
  %1304 = load i32, i32* %5, align 4
  %1305 = sext i32 %1304 to i64
  %1306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1303, i64 %1305
  %1307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1306, i32 0, i32 0
  %1308 = load %struct.md_rdev*, %struct.md_rdev** %1307, align 8
  store %struct.md_rdev* %1308, %struct.md_rdev** %14, align 8
  br label %1309

1309:                                             ; preds = %1300, %1289
  %1310 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %1311 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1312 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1311, i32 0, i32 5
  %1313 = load i64, i64* %1312, align 8
  %1314 = load i32, i32* @STRIPE_SECTORS, align 4
  %1315 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %1310, i64 %1313, i32 %1314, i32 0)
  %1316 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %1317 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1318 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1317, i32 0, i32 3
  %1319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1318, align 8
  %1320 = call i32 @rdev_dec_pending(%struct.md_rdev* %1316, %struct.TYPE_7__* %1319)
  br label %1321

1321:                                             ; preds = %1309, %1283
  br label %1213

1322:                                             ; preds = %1213
  br label %1323

1323:                                             ; preds = %1322, %1207
  %1324 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 8
  %1325 = load i64, i64* %1324, align 8
  %1326 = icmp ne i64 %1325, 0
  br i1 %1326, label %1327, label %1332

1327:                                             ; preds = %1323
  %1328 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1329 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 8
  %1330 = load i64, i64* %1329, align 8
  %1331 = call i32 @raid_run_ops(%struct.stripe_head* %1328, i64 %1330)
  br label %1332

1332:                                             ; preds = %1327, %1323
  %1333 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1334 = call i32 @ops_run_io(%struct.stripe_head* %1333, %struct.stripe_head_state* %3)
  %1335 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 4
  %1336 = load i32, i32* %1335, align 8
  %1337 = icmp ne i32 %1336, 0
  br i1 %1337, label %1338, label %1355

1338:                                             ; preds = %1332
  %1339 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1340 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1339, i32 0, i32 4
  %1341 = call i32 @atomic_dec(i32* %1340)
  %1342 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1343 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1342, i32 0, i32 4
  %1344 = call i64 @atomic_read(i32* %1343)
  %1345 = load i64, i64* @IO_THRESHOLD, align 8
  %1346 = icmp slt i64 %1344, %1345
  br i1 %1346, label %1347, label %1354

1347:                                             ; preds = %1338
  %1348 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1349 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1348, i32 0, i32 3
  %1350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1349, align 8
  %1351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1350, i32 0, i32 0
  %1352 = load i32, i32* %1351, align 8
  %1353 = call i32 @md_wakeup_thread(i32 %1352)
  br label %1354

1354:                                             ; preds = %1347, %1338
  br label %1355

1355:                                             ; preds = %1354, %1332
  %1356 = load i32, i32* @STRIPE_ACTIVE, align 4
  %1357 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1358 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1357, i32 0, i32 4
  %1359 = call i32 @clear_bit_unlock(i32 %1356, i64* %1358)
  br label %1360

1360:                                             ; preds = %1355, %40, %31
  ret void
}

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i64 @test_and_set_bit_lock(i32, i64*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i64 @clear_batch_ready(%struct.stripe_head*) #1

declare dso_local i32 @clear_bit_unlock(i32, i64*) #1

declare dso_local i64 @test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @break_stripe_batch_list(%struct.stripe_head*, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @analyse_stripe(%struct.stripe_head*, %struct.stripe_head_state*) #1

declare dso_local i64 @unlikely(%struct.md_rdev*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.TYPE_7__*) #1

declare dso_local i32 @handle_failed_stripe(%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*, i32) #1

declare dso_local i32 @handle_failed_sync(%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @handle_stripe_clean_event(%struct.r5conf*, %struct.stripe_head*, i32) #1

declare dso_local i32 @r5c_handle_cached_data_endio(%struct.r5conf*, %struct.stripe_head*, i32) #1

declare dso_local i32 @log_stripe_write_finished(%struct.stripe_head*) #1

declare dso_local i32 @handle_stripe_fill(%struct.stripe_head*, %struct.stripe_head_state*, i32) #1

declare dso_local i32 @r5c_finish_stripe_write_out(%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*) #1

declare dso_local i32 @r5c_is_writeback(i32) #1

declare dso_local i32 @handle_stripe_dirtying(%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*, i32) #1

declare dso_local i32 @r5c_try_caching_write(%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*, i32) #1

declare dso_local i32 @handle_parity_checks6(%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*, i32) #1

declare dso_local i32 @handle_parity_checks5(%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @md_done_sync(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf*, i64, i32, i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i64*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @raid5_release_stripe(%struct.stripe_head*) #1

declare dso_local i32 @stripe_set_idx(i64, %struct.r5conf*, i32, %struct.stripe_head*) #1

declare dso_local i32 @schedule_reconstruction(%struct.stripe_head*, %struct.stripe_head_state*, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @handle_stripe_expansion(%struct.r5conf*, %struct.stripe_head*) #1

declare dso_local i32 @md_wait_for_blocked_rdev(%struct.md_rdev*, %struct.TYPE_7__*) #1

declare dso_local i32 @rdev_set_badblocks(%struct.md_rdev*, i64, i32, i32) #1

declare dso_local i32 @md_error(%struct.TYPE_7__*, %struct.md_rdev*) #1

declare dso_local i32 @rdev_clear_badblocks(%struct.md_rdev*, i64, i32, i32) #1

declare dso_local i32 @raid_run_ops(%struct.stripe_head*, i64) #1

declare dso_local i32 @ops_run_io(%struct.stripe_head*, %struct.stripe_head_state*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
