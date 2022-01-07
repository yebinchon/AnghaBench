; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_add_pble_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_add_pble_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i64, %struct.i40iw_hmc_info* }
%struct.i40iw_hmc_info = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.i40iw_hmc_sd_entry* }
%struct.i40iw_hmc_sd_entry = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.i40iw_hmc_pble_rsrc = type { i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.i40iw_chunk = type { i32, i32, i32, i64 }
%struct.i40iw_add_page_info = type { %struct.i40iw_hmc_sd_entry*, i64, %struct.i40iw_hmc_info*, %struct.i40iw_chunk*, %struct.sd_pd_idx }
%struct.sd_pd_idx = type { i64, i64 }

@PBLE_PER_PAGE = common dso_local global i32 0, align 4
@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"next fpm_addr %llx\0A\00", align 1
@I40IW_ERR_INVALID_PAGE_DESC_INDEX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I40IW_HMC_PD_CNT_IN_SD = common dso_local global i64 0, align 8
@PBLE_512_SHIFT = common dso_local global i32 0, align 4
@I40IW_SD_TYPE_DIRECT = common dso_local global i32 0, align 4
@I40IW_SD_TYPE_PAGED = common dso_local global i32 0, align 4
@I40IW_DEBUG_PBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"pages = %d, unallocated_pble[%u] current_fpm_addr = %llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"sd_entry_type = %d sd_entry valid = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"could not allocate memory by gen_pool_addr_virt()\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"next_fpm_addr = %llx chunk_size[%u] = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"cqp cmd failed for sd (pbles)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_hmc_pble_rsrc*)* @add_pble_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_pble_pool(%struct.i40iw_sc_dev* %0, %struct.i40iw_hmc_pble_rsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca %struct.i40iw_hmc_pble_rsrc*, align 8
  %6 = alloca %struct.i40iw_hmc_sd_entry*, align 8
  %7 = alloca %struct.i40iw_hmc_info*, align 8
  %8 = alloca %struct.i40iw_chunk*, align 8
  %9 = alloca %struct.i40iw_add_page_info, align 8
  %10 = alloca %struct.sd_pd_idx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %4, align 8
  store %struct.i40iw_hmc_pble_rsrc* %1, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %15 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %9, i32 0, i32 4
  store %struct.sd_pd_idx* %15, %struct.sd_pd_idx** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %17 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PBLE_PER_PAGE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %22, i32* %3, align 4
  br label %280

23:                                               ; preds = %2
  %24 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %25 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 4095
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %31 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @i40iw_pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @I40IW_ERR_INVALID_PAGE_DESC_INDEX, align 4
  store i32 %34, i32* %3, align 4
  br label %280

35:                                               ; preds = %23
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.i40iw_chunk* @kzalloc(i32 24, i32 %36)
  store %struct.i40iw_chunk* %37, %struct.i40iw_chunk** %8, align 8
  %38 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %8, align 8
  %39 = icmp ne %struct.i40iw_chunk* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %41, i32* %3, align 4
  br label %280

42:                                               ; preds = %35
  %43 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %44 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %43, i32 0, i32 1
  %45 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %44, align 8
  store %struct.i40iw_hmc_info* %45, %struct.i40iw_hmc_info** %7, align 8
  %46 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %47 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %8, align 8
  %50 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %52 = load %struct.sd_pd_idx*, %struct.sd_pd_idx** %10, align 8
  %53 = call i32 @get_sd_pd_idx(%struct.i40iw_hmc_pble_rsrc* %51, %struct.sd_pd_idx* %52)
  %54 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %7, align 8
  %55 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %56, align 8
  %58 = load %struct.sd_pd_idx*, %struct.sd_pd_idx** %10, align 8
  %59 = getelementptr inbounds %struct.sd_pd_idx, %struct.sd_pd_idx* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %57, i64 %60
  store %struct.i40iw_hmc_sd_entry* %61, %struct.i40iw_hmc_sd_entry** %6, align 8
  %62 = load %struct.sd_pd_idx*, %struct.sd_pd_idx** %10, align 8
  %63 = getelementptr inbounds %struct.sd_pd_idx, %struct.sd_pd_idx* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %42
  %67 = load i64, i64* @I40IW_HMC_PD_CNT_IN_SD, align 8
  %68 = load %struct.sd_pd_idx*, %struct.sd_pd_idx** %10, align 8
  %69 = getelementptr inbounds %struct.sd_pd_idx, %struct.sd_pd_idx* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  br label %74

72:                                               ; preds = %42
  %73 = load i64, i64* @I40IW_HMC_PD_CNT_IN_SD, align 8
  br label %74

74:                                               ; preds = %72, %66
  %75 = phi i64 [ %71, %66 ], [ %73, %72 ]
  store i64 %75, i64* %14, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %78 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PBLE_512_SHIFT, align 4
  %81 = ashr i32 %79, %80
  %82 = call i64 @min(i64 %76, i32 %81)
  store i64 %82, i64* %14, align 8
  %83 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %8, align 8
  %84 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %9, i32 0, i32 3
  store %struct.i40iw_chunk* %83, %struct.i40iw_chunk** %84, align 8
  %85 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %7, align 8
  %86 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %9, i32 0, i32 2
  store %struct.i40iw_hmc_info* %85, %struct.i40iw_hmc_info** %86, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %9, i32 0, i32 1
  store i64 %87, i64* %88, align 8
  %89 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %6, align 8
  %90 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %9, i32 0, i32 0
  store %struct.i40iw_hmc_sd_entry* %89, %struct.i40iw_hmc_sd_entry** %90, align 8
  %91 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %6, align 8
  %92 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %115, label %95

95:                                               ; preds = %74
  %96 = load %struct.sd_pd_idx*, %struct.sd_pd_idx** %10, align 8
  %97 = getelementptr inbounds %struct.sd_pd_idx, %struct.sd_pd_idx* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %95
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* @I40IW_HMC_PD_CNT_IN_SD, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %106 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @I40IW_SD_TYPE_DIRECT, align 4
  br label %113

111:                                              ; preds = %104, %100, %95
  %112 = load i32, i32* @I40IW_SD_TYPE_PAGED, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  store i32 %114, i32* %12, align 4
  br label %119

115:                                              ; preds = %74
  %116 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %6, align 8
  %117 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %115, %113
  %120 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %121 = load i32, i32* @I40IW_DEBUG_PBLE, align 4
  %122 = load i64, i64* %14, align 8
  %123 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %124 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %127 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (%struct.i40iw_sc_dev*, i32, i8*, i64, i32, ...) @i40iw_debug(%struct.i40iw_sc_dev* %120, i32 %121, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %122, i32 %125, i32 %128)
  %130 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %131 = load i32, i32* @I40IW_DEBUG_PBLE, align 4
  %132 = load i32, i32* %12, align 4
  %133 = zext i32 %132 to i64
  %134 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %6, align 8
  %135 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (%struct.i40iw_sc_dev*, i32, i8*, i64, i32, ...) @i40iw_debug(%struct.i40iw_sc_dev* %130, i32 %131, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %133, i32 %136)
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @I40IW_SD_TYPE_DIRECT, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %119
  %142 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %143 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %144 = call i32 @add_sd_direct(%struct.i40iw_sc_dev* %142, %struct.i40iw_hmc_pble_rsrc* %143, %struct.i40iw_add_page_info* %9)
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %141, %119
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* @I40IW_SD_TYPE_PAGED, align 4
  store i32 %149, i32* %12, align 4
  br label %155

150:                                              ; preds = %145
  %151 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %152 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %150, %148
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @I40IW_SD_TYPE_PAGED, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %155
  %160 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %161 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %162 = call i32 @add_bp_pages(%struct.i40iw_sc_dev* %160, %struct.i40iw_hmc_pble_rsrc* %161, %struct.i40iw_add_page_info* %9)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %276

166:                                              ; preds = %159
  %167 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %168 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %166
  br label %172

172:                                              ; preds = %171, %155
  %173 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %174 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %8, align 8
  %178 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %8, align 8
  %181 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %8, align 8
  %184 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @gen_pool_add_virt(i32 %176, i64 %179, i32 %182, i32 %185, i32 -1)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %172
  %189 = call i32 (i8*, ...) @i40iw_pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %190 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %190, i32* %11, align 4
  br label %276

191:                                              ; preds = %172
  %192 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %8, align 8
  %193 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %196 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, %194
  store i32 %198, i32* %196, align 4
  %199 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %200 = load i32, i32* @I40IW_DEBUG_PBLE, align 4
  %201 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %202 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %8, align 8
  %206 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %8, align 8
  %209 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (%struct.i40iw_sc_dev*, i32, i8*, i64, i32, ...) @i40iw_debug(%struct.i40iw_sc_dev* %199, i32 %200, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %204, i32 %207, i32 %210)
  %212 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %8, align 8
  %213 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = ashr i32 %214, 3
  %216 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %217 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = sub nsw i32 %218, %215
  store i32 %219, i32* %217, align 4
  %220 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %8, align 8
  %221 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %220, i32 0, i32 2
  %222 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %5, align 8
  %223 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = call i32 @list_add(i32* %221, i32* %224)
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* @I40IW_SD_TYPE_PAGED, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %191
  %230 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %6, align 8
  %231 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  br label %243

236:                                              ; preds = %191
  %237 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %6, align 8
  %238 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  br label %243

243:                                              ; preds = %236, %229
  %244 = phi i32 [ %235, %229 ], [ %242, %236 ]
  store i32 %244, i32* %13, align 4
  %245 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %6, align 8
  %246 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %243
  store i32 0, i32* %3, align 4
  br label %280

250:                                              ; preds = %243
  %251 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %252 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %273

255:                                              ; preds = %250
  %256 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %257 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %7, align 8
  %258 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %13, align 4
  %261 = load %struct.sd_pd_idx*, %struct.sd_pd_idx** %10, align 8
  %262 = getelementptr inbounds %struct.sd_pd_idx, %struct.sd_pd_idx* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %6, align 8
  %265 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @i40iw_hmc_sd_one(%struct.i40iw_sc_dev* %256, i32 %259, i32 %260, i64 %263, i32 %266, i32 1)
  store i32 %267, i32* %11, align 4
  %268 = load i32, i32* %11, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %255
  %271 = call i32 (i8*, ...) @i40iw_pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %276

272:                                              ; preds = %255
  br label %273

273:                                              ; preds = %272, %250
  %274 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %6, align 8
  %275 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %274, i32 0, i32 0
  store i32 1, i32* %275, align 4
  store i32 0, i32* %3, align 4
  br label %280

276:                                              ; preds = %270, %188, %165
  %277 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %8, align 8
  %278 = call i32 @kfree(%struct.i40iw_chunk* %277)
  %279 = load i32, i32* %11, align 4
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %276, %273, %249, %40, %29, %21
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local i32 @i40iw_pr_err(i8*, ...) #1

declare dso_local %struct.i40iw_chunk* @kzalloc(i32, i32) #1

declare dso_local i32 @get_sd_pd_idx(%struct.i40iw_hmc_pble_rsrc*, %struct.sd_pd_idx*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @i40iw_debug(%struct.i40iw_sc_dev*, i32, i8*, i64, i32, ...) #1

declare dso_local i32 @add_sd_direct(%struct.i40iw_sc_dev*, %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_add_page_info*) #1

declare dso_local i32 @add_bp_pages(%struct.i40iw_sc_dev*, %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_add_page_info*) #1

declare dso_local i64 @gen_pool_add_virt(i32, i64, i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @i40iw_hmc_sd_one(%struct.i40iw_sc_dev*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.i40iw_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
