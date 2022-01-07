; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_recovery_analyze_meta_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_recovery_analyze_meta_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mddev* }
%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { i32, i32 }
%struct.r5l_recovery_ctx = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.r5l_meta_block = type { i32 }
%struct.r5l_payload_data_parity = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.r5l_payload_flush = type { i32, i32* }
%struct.stripe_head = type { i64, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@BLOCK_SECTORS = common dso_local global i32 0, align 4
@R5LOG_PAYLOAD_FLUSH = common dso_local global i64 0, align 8
@STRIPE_R5C_CACHING = common dso_local global i32 0, align 4
@R5LOG_PAYLOAD_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"md/raid:%s: Increasing stripe cache size to %d to recovery data on journal.\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"md/raid:%s: Cannot increase cache size, ret=%d, new_size=%d, min_nr_stripes=%d, max_nr_stripes=%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"md/raid:%s: Cannot get enough stripes due to memory pressure. Recovery failed.\0A\00", align 1
@R5_Wantwrite = common dso_local global i32 0, align 4
@R5LOG_PAYLOAD_PARITY = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5l_log*, %struct.r5l_recovery_ctx*, %struct.list_head*)* @r5c_recovery_analyze_meta_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r5c_recovery_analyze_meta_block(%struct.r5l_log* %0, %struct.r5l_recovery_ctx* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.r5l_log*, align 8
  %6 = alloca %struct.r5l_recovery_ctx*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.mddev*, align 8
  %9 = alloca %struct.r5conf*, align 8
  %10 = alloca %struct.r5l_meta_block*, align 8
  %11 = alloca %struct.r5l_payload_data_parity*, align 8
  %12 = alloca %struct.r5l_payload_flush*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.stripe_head*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.r5l_log* %0, %struct.r5l_log** %5, align 8
  store %struct.r5l_recovery_ctx* %1, %struct.r5l_recovery_ctx** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %22 = load %struct.r5l_log*, %struct.r5l_log** %5, align 8
  %23 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.mddev*, %struct.mddev** %25, align 8
  store %struct.mddev* %26, %struct.mddev** %8, align 8
  %27 = load %struct.mddev*, %struct.mddev** %8, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 0
  %29 = load %struct.r5conf*, %struct.r5conf** %28, align 8
  store %struct.r5conf* %29, %struct.r5conf** %9, align 8
  %30 = load %struct.r5l_log*, %struct.r5l_log** %5, align 8
  %31 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %6, align 8
  %32 = call i32 @r5l_recovery_verify_data_checksum_for_mb(%struct.r5l_log* %30, %struct.r5l_recovery_ctx* %31)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %315

40:                                               ; preds = %3
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %17, align 4
  store i32 %44, i32* %4, align 4
  br label %315

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.r5l_meta_block* @page_address(i32 %49)
  store %struct.r5l_meta_block* %50, %struct.r5l_meta_block** %10, align 8
  store i32 4, i32* %13, align 4
  %51 = load %struct.r5l_log*, %struct.r5l_log** %5, align 8
  %52 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BLOCK_SECTORS, align 4
  %56 = call i32 @r5l_ring_add(%struct.r5l_log* %51, i32 %54, i32 %55)
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %292, %127, %46
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %10, align 8
  %60 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %314

64:                                               ; preds = %57
  %65 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %10, align 8
  %66 = bitcast %struct.r5l_meta_block* %65 to i8*
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr i8, i8* %66, i64 %68
  %70 = bitcast i8* %69 to %struct.r5l_payload_data_parity*
  store %struct.r5l_payload_data_parity* %70, %struct.r5l_payload_data_parity** %11, align 8
  %71 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %10, align 8
  %72 = bitcast %struct.r5l_meta_block* %71 to i8*
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr i8, i8* %72, i64 %74
  %76 = bitcast i8* %75 to %struct.r5l_payload_flush*
  store %struct.r5l_payload_flush* %76, %struct.r5l_payload_flush** %12, align 8
  %77 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %11, align 8
  %78 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le16_to_cpu(i32 %80)
  %82 = load i64, i64* @R5LOG_PAYLOAD_FLUSH, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %138

84:                                               ; preds = %64
  %85 = load %struct.r5l_payload_flush*, %struct.r5l_payload_flush** %12, align 8
  %86 = getelementptr inbounds %struct.r5l_payload_flush, %struct.r5l_payload_flush* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = sext i32 %88 to i64
  %90 = udiv i64 %89, 4
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %92

92:                                               ; preds = %124, %84
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %20, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %127

96:                                               ; preds = %92
  %97 = load %struct.r5l_payload_flush*, %struct.r5l_payload_flush** %12, align 8
  %98 = getelementptr inbounds %struct.r5l_payload_flush, %struct.r5l_payload_flush* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %19, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le64_to_cpu(i32 %103)
  store i32 %104, i32* %15, align 4
  %105 = load %struct.list_head*, %struct.list_head** %7, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call %struct.stripe_head* @r5c_recovery_lookup_stripe(%struct.list_head* %105, i32 %106)
  store %struct.stripe_head* %107, %struct.stripe_head** %16, align 8
  %108 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %109 = icmp ne %struct.stripe_head* %108, null
  br i1 %109, label %110, label %123

110:                                              ; preds = %96
  %111 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %112 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %113 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %112, i32 0, i32 3
  %114 = call i64 @test_bit(i32 %111, i32* %113)
  %115 = call i32 @WARN_ON(i64 %114)
  %116 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %117 = call i32 @r5l_recovery_reset_stripe(%struct.stripe_head* %116)
  %118 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %119 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %118, i32 0, i32 1
  %120 = call i32 @list_del_init(i32* %119)
  %121 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %122 = call i32 @raid5_release_stripe(%struct.stripe_head* %121)
  br label %123

123:                                              ; preds = %110, %96
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %19, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %19, align 4
  br label %92

127:                                              ; preds = %92
  %128 = load %struct.r5l_payload_flush*, %struct.r5l_payload_flush** %12, align 8
  %129 = getelementptr inbounds %struct.r5l_payload_flush, %struct.r5l_payload_flush* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @le32_to_cpu(i32 %130)
  %132 = sext i32 %131 to i64
  %133 = add i64 16, %132
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = add i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %13, align 4
  br label %57

138:                                              ; preds = %64
  %139 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %11, align 8
  %140 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @le16_to_cpu(i32 %142)
  %144 = load i64, i64* @R5LOG_PAYLOAD_DATA, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %138
  %147 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  %148 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %11, align 8
  %149 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @le64_to_cpu(i32 %150)
  %152 = call i32 @raid5_compute_sector(%struct.r5conf* %147, i32 %151, i32 0, i32* %18, i32* null)
  br label %158

153:                                              ; preds = %138
  %154 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %11, align 8
  %155 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @le64_to_cpu(i32 %156)
  br label %158

158:                                              ; preds = %153, %146
  %159 = phi i32 [ %152, %146 ], [ %157, %153 ]
  store i32 %159, i32* %15, align 4
  %160 = load %struct.list_head*, %struct.list_head** %7, align 8
  %161 = load i32, i32* %15, align 4
  %162 = call %struct.stripe_head* @r5c_recovery_lookup_stripe(%struct.list_head* %160, i32 %161)
  store %struct.stripe_head* %162, %struct.stripe_head** %16, align 8
  %163 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %164 = icmp ne %struct.stripe_head* %163, null
  br i1 %164, label %231, label %165

165:                                              ; preds = %158
  %166 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  %167 = load i32, i32* %15, align 4
  %168 = call %struct.stripe_head* @r5c_recovery_alloc_stripe(%struct.r5conf* %166, i32 %167, i32 1)
  store %struct.stripe_head* %168, %struct.stripe_head** %16, align 8
  %169 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %170 = icmp ne %struct.stripe_head* %169, null
  br i1 %170, label %178, label %171

171:                                              ; preds = %165
  %172 = load %struct.list_head*, %struct.list_head** %7, align 8
  %173 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %6, align 8
  %174 = call i32 @r5c_recovery_replay_stripes(%struct.list_head* %172, %struct.r5l_recovery_ctx* %173)
  %175 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  %176 = load i32, i32* %15, align 4
  %177 = call %struct.stripe_head* @r5c_recovery_alloc_stripe(%struct.r5conf* %175, i32 %176, i32 1)
  store %struct.stripe_head* %177, %struct.stripe_head** %16, align 8
  br label %178

178:                                              ; preds = %171, %165
  %179 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %180 = icmp ne %struct.stripe_head* %179, null
  br i1 %180, label %217, label %181

181:                                              ; preds = %178
  %182 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  %183 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %184, 2
  store i32 %185, i32* %21, align 4
  %186 = load %struct.mddev*, %struct.mddev** %8, align 8
  %187 = call i32 @mdname(%struct.mddev* %186)
  %188 = load i32, i32* %21, align 4
  %189 = call i32 @pr_debug(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %187, i32 %188)
  %190 = load %struct.mddev*, %struct.mddev** %8, align 8
  %191 = load i32, i32* %21, align 4
  %192 = call i32 @raid5_set_cache_size(%struct.mddev* %190, i32 %191)
  store i32 %192, i32* %17, align 4
  %193 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  %194 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %21, align 4
  %197 = sdiv i32 %196, 2
  %198 = icmp sle i32 %195, %197
  br i1 %198, label %199, label %213

199:                                              ; preds = %181
  %200 = load %struct.mddev*, %struct.mddev** %8, align 8
  %201 = call i32 @mdname(%struct.mddev* %200)
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %21, align 4
  %204 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  %205 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  %208 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 %201, i32 %202, i32 %203, i32 %206, i32 %209)
  %211 = load i32, i32* @ENOMEM, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %4, align 4
  br label %315

213:                                              ; preds = %181
  %214 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  %215 = load i32, i32* %15, align 4
  %216 = call %struct.stripe_head* @r5c_recovery_alloc_stripe(%struct.r5conf* %214, i32 %215, i32 0)
  store %struct.stripe_head* %216, %struct.stripe_head** %16, align 8
  br label %217

217:                                              ; preds = %213, %178
  %218 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %219 = icmp ne %struct.stripe_head* %218, null
  br i1 %219, label %226, label %220

220:                                              ; preds = %217
  %221 = load %struct.mddev*, %struct.mddev** %8, align 8
  %222 = call i32 @mdname(%struct.mddev* %221)
  %223 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %4, align 4
  br label %315

226:                                              ; preds = %217
  %227 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %228 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %227, i32 0, i32 1
  %229 = load %struct.list_head*, %struct.list_head** %7, align 8
  %230 = call i32 @list_add_tail(i32* %228, %struct.list_head* %229)
  br label %231

231:                                              ; preds = %226, %158
  %232 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %11, align 8
  %233 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i64 @le16_to_cpu(i32 %235)
  %237 = load i64, i64* @R5LOG_PAYLOAD_DATA, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %273

239:                                              ; preds = %231
  %240 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %241 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %242 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %241, i32 0, i32 3
  %243 = call i64 @test_bit(i32 %240, i32* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %266, label %245

245:                                              ; preds = %239
  %246 = load i32, i32* @R5_Wantwrite, align 4
  %247 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %248 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %247, i32 0, i32 2
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %248, align 8
  %250 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %251 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = call i64 @test_bit(i32 %246, i32* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %245
  %258 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  %259 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %260 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %6, align 8
  %261 = call i32 @r5l_recovery_replay_one_stripe(%struct.r5conf* %258, %struct.stripe_head* %259, %struct.r5l_recovery_ctx* %260)
  %262 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %263 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %262, i32 0, i32 1
  %264 = load %struct.list_head*, %struct.list_head** %7, align 8
  %265 = call i32 @list_move_tail(i32* %263, %struct.list_head* %264)
  br label %266

266:                                              ; preds = %257, %245, %239
  %267 = load %struct.r5l_log*, %struct.r5l_log** %5, align 8
  %268 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %269 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %6, align 8
  %270 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %11, align 8
  %271 = load i32, i32* %14, align 4
  %272 = call i32 @r5l_recovery_load_data(%struct.r5l_log* %267, %struct.stripe_head* %268, %struct.r5l_recovery_ctx* %269, %struct.r5l_payload_data_parity* %270, i32 %271)
  br label %292

273:                                              ; preds = %231
  %274 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %11, align 8
  %275 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i64 @le16_to_cpu(i32 %277)
  %279 = load i64, i64* @R5LOG_PAYLOAD_PARITY, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %288

281:                                              ; preds = %273
  %282 = load %struct.r5l_log*, %struct.r5l_log** %5, align 8
  %283 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  %284 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %6, align 8
  %285 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %11, align 8
  %286 = load i32, i32* %14, align 4
  %287 = call i32 @r5l_recovery_load_parity(%struct.r5l_log* %282, %struct.stripe_head* %283, %struct.r5l_recovery_ctx* %284, %struct.r5l_payload_data_parity* %285, i32 %286)
  br label %291

288:                                              ; preds = %273
  %289 = load i32, i32* @EINVAL, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %4, align 4
  br label %315

291:                                              ; preds = %281
  br label %292

292:                                              ; preds = %291, %266
  %293 = load %struct.r5l_log*, %struct.r5l_log** %5, align 8
  %294 = load i32, i32* %14, align 4
  %295 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %11, align 8
  %296 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @le32_to_cpu(i32 %297)
  %299 = call i32 @r5l_ring_add(%struct.r5l_log* %293, i32 %294, i32 %298)
  store i32 %299, i32* %14, align 4
  %300 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %11, align 8
  %301 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @le32_to_cpu(i32 %302)
  %304 = load i32, i32* @PAGE_SHIFT, align 4
  %305 = sub nsw i32 %304, 9
  %306 = ashr i32 %303, %305
  %307 = sext i32 %306 to i64
  %308 = mul i64 4, %307
  %309 = add i64 12, %308
  %310 = load i32, i32* %13, align 4
  %311 = sext i32 %310 to i64
  %312 = add i64 %311, %309
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %13, align 4
  br label %57

314:                                              ; preds = %57
  store i32 0, i32* %4, align 4
  br label %315

315:                                              ; preds = %314, %288, %220, %199, %43, %37
  %316 = load i32, i32* %4, align 4
  ret i32 %316
}

declare dso_local i32 @r5l_recovery_verify_data_checksum_for_mb(%struct.r5l_log*, %struct.r5l_recovery_ctx*) #1

declare dso_local %struct.r5l_meta_block* @page_address(i32) #1

declare dso_local i32 @r5l_ring_add(%struct.r5l_log*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct.stripe_head* @r5c_recovery_lookup_stripe(%struct.list_head*, i32) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @r5l_recovery_reset_stripe(%struct.stripe_head*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @raid5_release_stripe(%struct.stripe_head*) #1

declare dso_local i32 @raid5_compute_sector(%struct.r5conf*, i32, i32, i32*, i32*) #1

declare dso_local %struct.stripe_head* @r5c_recovery_alloc_stripe(%struct.r5conf*, i32, i32) #1

declare dso_local i32 @r5c_recovery_replay_stripes(%struct.list_head*, %struct.r5l_recovery_ctx*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i32 @raid5_set_cache_size(%struct.mddev*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @r5l_recovery_replay_one_stripe(%struct.r5conf*, %struct.stripe_head*, %struct.r5l_recovery_ctx*) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @r5l_recovery_load_data(%struct.r5l_log*, %struct.stripe_head*, %struct.r5l_recovery_ctx*, %struct.r5l_payload_data_parity*, i32) #1

declare dso_local i32 @r5l_recovery_load_parity(%struct.r5l_log*, %struct.stripe_head*, %struct.r5l_recovery_ctx*, %struct.r5l_payload_data_parity*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
