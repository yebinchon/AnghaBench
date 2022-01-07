; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_handle_stripe_dirtying.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_handle_stripe_dirtying.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.stripe_head = type { i64, i32, i32, i32, %struct.r5dev* }
%struct.r5dev = type { i64, i64, i32, i64 }
%struct.stripe_head_state = type { i64, i32, i64, i64 }
%struct.page = type { i32 }

@PARITY_DISABLE_RMW = common dso_local global i64 0, align 8
@MaxSector = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"force RCW rmw_level=%u, recovery_cp=%llu sh->sector=%llu\0A\00", align 1
@R5_InJournal = common dso_local global i32 0, align 4
@R5_LOCKED = common dso_local global i32 0, align 4
@R5_Wantcompute = common dso_local global i32 0, align 4
@R5_Insync = common dso_local global i32 0, align 4
@R5_OVERWRITE = common dso_local global i32 0, align 4
@R5_UPTODATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"for sector %llu state 0x%lx, rmw=%d rcw=%d\0A\00", align 1
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@PARITY_PREFER_RMW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"raid5 rmw %llu %d\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@R5C_EXTRA_PAGE_IN_USE = common dso_local global i32 0, align 4
@STRIPE_DELAYED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@STRIPE_PREREAD_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Read_old block %d for r-m-w\0A\00", align 1
@R5_Wantread = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Read_old block %d for Reconstruct\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"raid5 rcw %llu %d %d %d\00", align 1
@STRIPE_COMPUTE_RUN = common dso_local global i32 0, align 4
@STRIPE_BIT_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*, i32)* @handle_stripe_dirtying to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_stripe_dirtying(%struct.r5conf* %0, %struct.stripe_head* %1, %struct.stripe_head_state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca %struct.stripe_head*, align 8
  %8 = alloca %struct.stripe_head_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.r5dev*, align 8
  %15 = alloca %struct.r5dev*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.r5dev*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.r5dev*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %6, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %7, align 8
  store %struct.stripe_head_state* %2, %struct.stripe_head_state** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %21 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %13, align 8
  %25 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %26 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PARITY_DISABLE_RMW, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %45, label %30

30:                                               ; preds = %4
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @MaxSector, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %30
  %35 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %36 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %13, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load %struct.stripe_head_state*, %struct.stripe_head_state** %8, align 8
  %42 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40, %4
  store i32 1, i32* %11, align 4
  store i32 2, i32* %10, align 4
  %46 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %47 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %13, align 8
  %51 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %52 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %49, i64 %50, i64 %53)
  br label %180

55:                                               ; preds = %40, %34, %30
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %178, %55
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %12, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %179

61:                                               ; preds = %57
  %62 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %63 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %62, i32 0, i32 4
  %64 = load %struct.r5dev*, %struct.r5dev** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %64, i64 %66
  store %struct.r5dev* %67, %struct.r5dev** %14, align 8
  %68 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %69 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %74 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %75 = load %struct.stripe_head_state*, %struct.stripe_head_state** %8, align 8
  %76 = call i32 @delay_towrite(%struct.r5conf* %73, %struct.r5dev* %74, %struct.stripe_head_state* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %72, %61
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %81 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %96, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %87 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* @R5_InJournal, align 4
  %92 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %93 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %92, i32 0, i32 2
  %94 = call i64 @test_bit(i32 %91, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %127

96:                                               ; preds = %90, %84, %78, %72
  %97 = load i32, i32* @R5_LOCKED, align 4
  %98 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %99 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %98, i32 0, i32 2
  %100 = call i64 @test_bit(i32 %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %127, label %102

102:                                              ; preds = %96
  %103 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %104 = call i64 @uptodate_for_rmw(%struct.r5dev* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %127, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* @R5_Wantcompute, align 4
  %108 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %109 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %108, i32 0, i32 2
  %110 = call i64 @test_bit(i32 %107, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* @R5_Insync, align 4
  %114 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %115 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %114, i32 0, i32 2
  %116 = call i64 @test_bit(i32 %113, i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %126

121:                                              ; preds = %112
  %122 = load i32, i32* %9, align 4
  %123 = mul nsw i32 2, %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %121, %118
  br label %127

127:                                              ; preds = %126, %106, %102, %96, %90
  %128 = load i32, i32* @R5_OVERWRITE, align 4
  %129 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %130 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %129, i32 0, i32 2
  %131 = call i64 @test_bit(i32 %128, i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %178, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %136 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %134, %137
  br i1 %138, label %139, label %178

139:                                              ; preds = %133
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %142 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %140, %143
  br i1 %144, label %145, label %178

145:                                              ; preds = %139
  %146 = load i32, i32* @R5_LOCKED, align 4
  %147 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %148 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %147, i32 0, i32 2
  %149 = call i64 @test_bit(i32 %146, i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %178, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* @R5_UPTODATE, align 4
  %153 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %154 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %153, i32 0, i32 2
  %155 = call i64 @test_bit(i32 %152, i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %178, label %157

157:                                              ; preds = %151
  %158 = load i32, i32* @R5_Wantcompute, align 4
  %159 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %160 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %159, i32 0, i32 2
  %161 = call i64 @test_bit(i32 %158, i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %178, label %163

163:                                              ; preds = %157
  %164 = load i32, i32* @R5_Insync, align 4
  %165 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %166 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %165, i32 0, i32 2
  %167 = call i64 @test_bit(i32 %164, i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  br label %177

172:                                              ; preds = %163
  %173 = load i32, i32* %9, align 4
  %174 = mul nsw i32 2, %173
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %172, %169
  br label %178

178:                                              ; preds = %177, %157, %151, %145, %139, %133, %127
  br label %57

179:                                              ; preds = %57
  br label %180

180:                                              ; preds = %179, %45
  %181 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %182 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %186 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %11, align 4
  %190 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %184, i32 %187, i32 %188, i32 %189)
  %191 = load i32, i32* @STRIPE_HANDLE, align 4
  %192 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %193 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %192, i32 0, i32 3
  %194 = call i32 @set_bit(i32 %191, i32* %193)
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %208, label %198

198:                                              ; preds = %180
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %11, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %393

202:                                              ; preds = %198
  %203 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %204 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @PARITY_PREFER_RMW, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %393

208:                                              ; preds = %202, %180
  %209 = load i32, i32* %10, align 4
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %393

211:                                              ; preds = %208
  %212 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %213 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %212, i32 0, i32 1
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %211
  %219 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %220 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %219, i32 0, i32 1
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %225 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* %10, align 4
  %228 = call i32 (i64, i8*, i64, i32, ...) @blk_add_trace_msg(i64 %223, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %226, i32 %227)
  br label %229

229:                                              ; preds = %218, %211
  %230 = load i32, i32* %9, align 4
  store i32 %230, i32* %12, align 4
  br label %231

231:                                              ; preds = %296, %273, %229
  %232 = load i32, i32* %12, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %12, align 4
  %234 = icmp ne i32 %232, 0
  br i1 %234, label %235, label %297

235:                                              ; preds = %231
  %236 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %237 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %236, i32 0, i32 4
  %238 = load %struct.r5dev*, %struct.r5dev** %237, align 8
  %239 = load i32, i32* %12, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %238, i64 %240
  store %struct.r5dev* %241, %struct.r5dev** %15, align 8
  %242 = load i32, i32* @R5_InJournal, align 4
  %243 = load %struct.r5dev*, %struct.r5dev** %15, align 8
  %244 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %243, i32 0, i32 2
  %245 = call i64 @test_bit(i32 %242, i32* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %296

247:                                              ; preds = %235
  %248 = load %struct.r5dev*, %struct.r5dev** %15, align 8
  %249 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.r5dev*, %struct.r5dev** %15, align 8
  %252 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %250, %253
  br i1 %254, label %255, label %296

255:                                              ; preds = %247
  %256 = load i32, i32* @R5_LOCKED, align 4
  %257 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %258 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %257, i32 0, i32 4
  %259 = load %struct.r5dev*, %struct.r5dev** %258, align 8
  %260 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %261 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %259, i64 %263
  %265 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %264, i32 0, i32 2
  %266 = call i64 @test_bit(i32 %256, i32* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %296, label %268

268:                                              ; preds = %255
  %269 = load i32, i32* @GFP_NOIO, align 4
  %270 = call %struct.page* @alloc_page(i32 %269)
  store %struct.page* %270, %struct.page** %16, align 8
  %271 = load %struct.page*, %struct.page** %16, align 8
  %272 = icmp ne %struct.page* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %268
  %274 = load %struct.page*, %struct.page** %16, align 8
  %275 = ptrtoint %struct.page* %274 to i64
  %276 = load %struct.r5dev*, %struct.r5dev** %15, align 8
  %277 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %276, i32 0, i32 1
  store i64 %275, i64* %277, align 8
  br label %231

278:                                              ; preds = %268
  %279 = load i32, i32* @R5C_EXTRA_PAGE_IN_USE, align 4
  %280 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %281 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %280, i32 0, i32 2
  %282 = call i32 @test_and_set_bit(i32 %279, i32* %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %278
  %285 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %286 = call i32 @r5c_use_extra_page(%struct.stripe_head* %285)
  br label %297

287:                                              ; preds = %278
  %288 = load i32, i32* @STRIPE_DELAYED, align 4
  %289 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %290 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %289, i32 0, i32 3
  %291 = call i32 @set_bit(i32 %288, i32* %290)
  %292 = load %struct.stripe_head_state*, %struct.stripe_head_state** %8, align 8
  %293 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %292, i32 0, i32 1
  store i32 1, i32* %293, align 8
  %294 = load i32, i32* @EAGAIN, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %5, align 4
  br label %582

296:                                              ; preds = %255, %247, %235
  br label %231

297:                                              ; preds = %284, %231
  %298 = load i32, i32* %9, align 4
  store i32 %298, i32* %12, align 4
  br label %299

299:                                              ; preds = %391, %297
  %300 = load i32, i32* %12, align 4
  %301 = add nsw i32 %300, -1
  store i32 %301, i32* %12, align 4
  %302 = icmp ne i32 %300, 0
  br i1 %302, label %303, label %392

303:                                              ; preds = %299
  %304 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %305 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %304, i32 0, i32 4
  %306 = load %struct.r5dev*, %struct.r5dev** %305, align 8
  %307 = load i32, i32* %12, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %306, i64 %308
  store %struct.r5dev* %309, %struct.r5dev** %17, align 8
  %310 = load %struct.r5dev*, %struct.r5dev** %17, align 8
  %311 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %303
  %315 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %316 = load %struct.r5dev*, %struct.r5dev** %17, align 8
  %317 = load %struct.stripe_head_state*, %struct.stripe_head_state** %8, align 8
  %318 = call i32 @delay_towrite(%struct.r5conf* %315, %struct.r5dev* %316, %struct.stripe_head_state* %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %338

320:                                              ; preds = %314, %303
  %321 = load i32, i32* %12, align 4
  %322 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %323 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = icmp eq i32 %321, %324
  br i1 %325, label %338, label %326

326:                                              ; preds = %320
  %327 = load i32, i32* %12, align 4
  %328 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %329 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = icmp eq i32 %327, %330
  br i1 %331, label %338, label %332

332:                                              ; preds = %326
  %333 = load i32, i32* @R5_InJournal, align 4
  %334 = load %struct.r5dev*, %struct.r5dev** %17, align 8
  %335 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %334, i32 0, i32 2
  %336 = call i64 @test_bit(i32 %333, i32* %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %391

338:                                              ; preds = %332, %326, %320, %314
  %339 = load i32, i32* @R5_LOCKED, align 4
  %340 = load %struct.r5dev*, %struct.r5dev** %17, align 8
  %341 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %340, i32 0, i32 2
  %342 = call i64 @test_bit(i32 %339, i32* %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %391, label %344

344:                                              ; preds = %338
  %345 = load %struct.r5dev*, %struct.r5dev** %17, align 8
  %346 = call i64 @uptodate_for_rmw(%struct.r5dev* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %391, label %348

348:                                              ; preds = %344
  %349 = load i32, i32* @R5_Wantcompute, align 4
  %350 = load %struct.r5dev*, %struct.r5dev** %17, align 8
  %351 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %350, i32 0, i32 2
  %352 = call i64 @test_bit(i32 %349, i32* %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %391, label %354

354:                                              ; preds = %348
  %355 = load i32, i32* @R5_Insync, align 4
  %356 = load %struct.r5dev*, %struct.r5dev** %17, align 8
  %357 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %356, i32 0, i32 2
  %358 = call i64 @test_bit(i32 %355, i32* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %391

360:                                              ; preds = %354
  %361 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %362 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %363 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %362, i32 0, i32 3
  %364 = call i64 @test_bit(i32 %361, i32* %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %381

366:                                              ; preds = %360
  %367 = load i32, i32* %12, align 4
  %368 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %367)
  %369 = load i32, i32* @R5_LOCKED, align 4
  %370 = load %struct.r5dev*, %struct.r5dev** %17, align 8
  %371 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %370, i32 0, i32 2
  %372 = call i32 @set_bit(i32 %369, i32* %371)
  %373 = load i32, i32* @R5_Wantread, align 4
  %374 = load %struct.r5dev*, %struct.r5dev** %17, align 8
  %375 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %374, i32 0, i32 2
  %376 = call i32 @set_bit(i32 %373, i32* %375)
  %377 = load %struct.stripe_head_state*, %struct.stripe_head_state** %8, align 8
  %378 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %377, i32 0, i32 2
  %379 = load i64, i64* %378, align 8
  %380 = add nsw i64 %379, 1
  store i64 %380, i64* %378, align 8
  br label %390

381:                                              ; preds = %360
  %382 = load i32, i32* @STRIPE_DELAYED, align 4
  %383 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %384 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %383, i32 0, i32 3
  %385 = call i32 @set_bit(i32 %382, i32* %384)
  %386 = load i32, i32* @STRIPE_HANDLE, align 4
  %387 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %388 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %387, i32 0, i32 3
  %389 = call i32 @set_bit(i32 %386, i32* %388)
  br label %390

390:                                              ; preds = %381, %366
  br label %391

391:                                              ; preds = %390, %354, %348, %344, %338, %332
  br label %299

392:                                              ; preds = %299
  br label %393

393:                                              ; preds = %392, %208, %202, %198
  %394 = load i32, i32* %11, align 4
  %395 = load i32, i32* %10, align 4
  %396 = icmp slt i32 %394, %395
  br i1 %396, label %407, label %397

397:                                              ; preds = %393
  %398 = load i32, i32* %11, align 4
  %399 = load i32, i32* %10, align 4
  %400 = icmp eq i32 %398, %399
  br i1 %400, label %401, label %527

401:                                              ; preds = %397
  %402 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %403 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* @PARITY_PREFER_RMW, align 8
  %406 = icmp ne i64 %404, %405
  br i1 %406, label %407, label %527

407:                                              ; preds = %401, %393
  %408 = load i32, i32* %11, align 4
  %409 = icmp sgt i32 %408, 0
  br i1 %409, label %410, label %527

410:                                              ; preds = %407
  store i32 0, i32* %18, align 4
  store i32 0, i32* %11, align 4
  %411 = load i32, i32* %9, align 4
  store i32 %411, i32* %12, align 4
  br label %412

412:                                              ; preds = %499, %410
  %413 = load i32, i32* %12, align 4
  %414 = add nsw i32 %413, -1
  store i32 %414, i32* %12, align 4
  %415 = icmp ne i32 %413, 0
  br i1 %415, label %416, label %500

416:                                              ; preds = %412
  %417 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %418 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %417, i32 0, i32 4
  %419 = load %struct.r5dev*, %struct.r5dev** %418, align 8
  %420 = load i32, i32* %12, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %419, i64 %421
  store %struct.r5dev* %422, %struct.r5dev** %19, align 8
  %423 = load i32, i32* @R5_OVERWRITE, align 4
  %424 = load %struct.r5dev*, %struct.r5dev** %19, align 8
  %425 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %424, i32 0, i32 2
  %426 = call i64 @test_bit(i32 %423, i32* %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %499, label %428

428:                                              ; preds = %416
  %429 = load i32, i32* %12, align 4
  %430 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %431 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 8
  %433 = icmp ne i32 %429, %432
  br i1 %433, label %434, label %499

434:                                              ; preds = %428
  %435 = load i32, i32* %12, align 4
  %436 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %437 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 4
  %439 = icmp ne i32 %435, %438
  br i1 %439, label %440, label %499

440:                                              ; preds = %434
  %441 = load i32, i32* @R5_LOCKED, align 4
  %442 = load %struct.r5dev*, %struct.r5dev** %19, align 8
  %443 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %442, i32 0, i32 2
  %444 = call i64 @test_bit(i32 %441, i32* %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %499, label %446

446:                                              ; preds = %440
  %447 = load i32, i32* @R5_UPTODATE, align 4
  %448 = load %struct.r5dev*, %struct.r5dev** %19, align 8
  %449 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %448, i32 0, i32 2
  %450 = call i64 @test_bit(i32 %447, i32* %449)
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %499, label %452

452:                                              ; preds = %446
  %453 = load i32, i32* @R5_Wantcompute, align 4
  %454 = load %struct.r5dev*, %struct.r5dev** %19, align 8
  %455 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %454, i32 0, i32 2
  %456 = call i64 @test_bit(i32 %453, i32* %455)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %499, label %458

458:                                              ; preds = %452
  %459 = load i32, i32* %11, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %11, align 4
  %461 = load i32, i32* @R5_Insync, align 4
  %462 = load %struct.r5dev*, %struct.r5dev** %19, align 8
  %463 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %462, i32 0, i32 2
  %464 = call i64 @test_bit(i32 %461, i32* %463)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %489

466:                                              ; preds = %458
  %467 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %468 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %469 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %468, i32 0, i32 3
  %470 = call i64 @test_bit(i32 %467, i32* %469)
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %489

472:                                              ; preds = %466
  %473 = load i32, i32* %12, align 4
  %474 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %473)
  %475 = load i32, i32* @R5_LOCKED, align 4
  %476 = load %struct.r5dev*, %struct.r5dev** %19, align 8
  %477 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %476, i32 0, i32 2
  %478 = call i32 @set_bit(i32 %475, i32* %477)
  %479 = load i32, i32* @R5_Wantread, align 4
  %480 = load %struct.r5dev*, %struct.r5dev** %19, align 8
  %481 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %480, i32 0, i32 2
  %482 = call i32 @set_bit(i32 %479, i32* %481)
  %483 = load %struct.stripe_head_state*, %struct.stripe_head_state** %8, align 8
  %484 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %483, i32 0, i32 2
  %485 = load i64, i64* %484, align 8
  %486 = add nsw i64 %485, 1
  store i64 %486, i64* %484, align 8
  %487 = load i32, i32* %18, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %18, align 4
  br label %498

489:                                              ; preds = %466, %458
  %490 = load i32, i32* @STRIPE_DELAYED, align 4
  %491 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %492 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %491, i32 0, i32 3
  %493 = call i32 @set_bit(i32 %490, i32* %492)
  %494 = load i32, i32* @STRIPE_HANDLE, align 4
  %495 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %496 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %495, i32 0, i32 3
  %497 = call i32 @set_bit(i32 %494, i32* %496)
  br label %498

498:                                              ; preds = %489, %472
  br label %499

499:                                              ; preds = %498, %452, %446, %440, %434, %428, %416
  br label %412

500:                                              ; preds = %412
  %501 = load i32, i32* %11, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %526

503:                                              ; preds = %500
  %504 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %505 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %504, i32 0, i32 1
  %506 = load %struct.TYPE_2__*, %struct.TYPE_2__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %506, i32 0, i32 1
  %508 = load i64, i64* %507, align 8
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %526

510:                                              ; preds = %503
  %511 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %512 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %511, i32 0, i32 1
  %513 = load %struct.TYPE_2__*, %struct.TYPE_2__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %513, i32 0, i32 1
  %515 = load i64, i64* %514, align 8
  %516 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %517 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = load i32, i32* %11, align 4
  %520 = load i32, i32* %18, align 4
  %521 = load i32, i32* @STRIPE_DELAYED, align 4
  %522 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %523 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %522, i32 0, i32 3
  %524 = call i64 @test_bit(i32 %521, i32* %523)
  %525 = call i32 (i64, i8*, i64, i32, ...) @blk_add_trace_msg(i64 %515, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %518, i32 %519, i32 %520, i64 %524)
  br label %526

526:                                              ; preds = %510, %503, %500
  br label %527

527:                                              ; preds = %526, %407, %401, %397
  %528 = load i32, i32* %11, align 4
  %529 = load i32, i32* %9, align 4
  %530 = icmp sgt i32 %528, %529
  br i1 %530, label %531, label %546

531:                                              ; preds = %527
  %532 = load i32, i32* %10, align 4
  %533 = load i32, i32* %9, align 4
  %534 = icmp sgt i32 %532, %533
  br i1 %534, label %535, label %546

535:                                              ; preds = %531
  %536 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %537 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %538 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %537, i32 0, i32 3
  %539 = call i64 @test_bit(i32 %536, i32* %538)
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %546, label %541

541:                                              ; preds = %535
  %542 = load i32, i32* @STRIPE_DELAYED, align 4
  %543 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %544 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %543, i32 0, i32 3
  %545 = call i32 @set_bit(i32 %542, i32* %544)
  br label %546

546:                                              ; preds = %541, %535, %531, %527
  %547 = load %struct.stripe_head_state*, %struct.stripe_head_state** %8, align 8
  %548 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %547, i32 0, i32 3
  %549 = load i64, i64* %548, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %557, label %551

551:                                              ; preds = %546
  %552 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %553 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %554 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %553, i32 0, i32 3
  %555 = call i64 @test_bit(i32 %552, i32* %554)
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %581, label %557

557:                                              ; preds = %551, %546
  %558 = load %struct.stripe_head_state*, %struct.stripe_head_state** %8, align 8
  %559 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %558, i32 0, i32 2
  %560 = load i64, i64* %559, align 8
  %561 = icmp eq i64 %560, 0
  br i1 %561, label %562, label %581

562:                                              ; preds = %557
  %563 = load i32, i32* %11, align 4
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %568, label %565

565:                                              ; preds = %562
  %566 = load i32, i32* %10, align 4
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %581

568:                                              ; preds = %565, %562
  %569 = load i32, i32* @STRIPE_BIT_DELAY, align 4
  %570 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %571 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %570, i32 0, i32 3
  %572 = call i64 @test_bit(i32 %569, i32* %571)
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %581, label %574

574:                                              ; preds = %568
  %575 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %576 = load %struct.stripe_head_state*, %struct.stripe_head_state** %8, align 8
  %577 = load i32, i32* %11, align 4
  %578 = icmp eq i32 %577, 0
  %579 = zext i1 %578 to i32
  %580 = call i32 @schedule_reconstruction(%struct.stripe_head* %575, %struct.stripe_head_state* %576, i32 %579, i32 0)
  br label %581

581:                                              ; preds = %574, %568, %565, %557, %551
  store i32 0, i32* %5, align 4
  br label %582

582:                                              ; preds = %581, %287
  %583 = load i32, i32* %5, align 4
  ret i32 %583
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @delay_towrite(%struct.r5conf*, %struct.r5dev*, %struct.stripe_head_state*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @uptodate_for_rmw(%struct.r5dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @blk_add_trace_msg(i64, i8*, i64, i32, ...) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @r5c_use_extra_page(%struct.stripe_head*) #1

declare dso_local i32 @schedule_reconstruction(%struct.stripe_head*, %struct.stripe_head_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
