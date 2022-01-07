; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_add_bp_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_add_bp_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32, i32, i32 }
%struct.i40iw_hmc_pble_rsrc = type { i32 }
%struct.i40iw_add_page_info = type { i32, %struct.TYPE_8__, %struct.i40iw_chunk*, %struct.i40iw_hmc_info*, %struct.i40iw_hmc_sd_entry* }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.i40iw_chunk = type { i32, i32*, i32* }
%struct.i40iw_hmc_info = type { i32 }
%struct.i40iw_hmc_sd_entry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.i40iw_hmc_pd_entry* }
%struct.TYPE_5__ = type { i32 }
%struct.i40iw_hmc_pd_entry = type { i32 }
%struct.i40iw_dma_mem = type { i8*, i32, i32 }
%struct.i40iw_manage_vf_pble_info = type { i64, i32, i32, i32, i32 }

@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@I40IW_SD_TYPE_PAGED = common dso_local global i32 0, align 4
@I40IW_HMC_DIRECT_BP_SIZE = common dso_local global i32 0, align 4
@I40IW_HMC_IW_PBLE = common dso_local global i32 0, align 4
@PBLE_512_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"allocate PBLEs in the PF.  Error %i\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"pd entry is valid expecting to be invalid\0A\00", align 1
@PBLE_PER_PAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"CQP manage VF PBLE BP failed.  %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_add_page_info*)* @add_bp_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_bp_pages(%struct.i40iw_sc_dev* %0, %struct.i40iw_hmc_pble_rsrc* %1, %struct.i40iw_add_page_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_sc_dev*, align 8
  %6 = alloca %struct.i40iw_hmc_pble_rsrc*, align 8
  %7 = alloca %struct.i40iw_add_page_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.i40iw_dma_mem, align 8
  %10 = alloca %struct.i40iw_hmc_pd_entry*, align 8
  %11 = alloca %struct.i40iw_hmc_sd_entry*, align 8
  %12 = alloca %struct.i40iw_hmc_info*, align 8
  %13 = alloca %struct.i40iw_chunk*, align 8
  %14 = alloca %struct.i40iw_manage_vf_pble_info, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %5, align 8
  store %struct.i40iw_hmc_pble_rsrc* %1, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  store %struct.i40iw_add_page_info* %2, %struct.i40iw_add_page_info** %7, align 8
  %19 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %20 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %19, i32 0, i32 4
  %21 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %20, align 8
  store %struct.i40iw_hmc_sd_entry* %21, %struct.i40iw_hmc_sd_entry** %11, align 8
  %22 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %23 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %22, i32 0, i32 3
  %24 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %23, align 8
  store %struct.i40iw_hmc_info* %24, %struct.i40iw_hmc_info** %12, align 8
  %25 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %26 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %25, i32 0, i32 2
  %27 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %26, align 8
  store %struct.i40iw_chunk* %27, %struct.i40iw_chunk** %13, align 8
  store i32 0, i32* %15, align 4
  %28 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %29 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %16, align 8
  %32 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %33 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %17, align 8
  %36 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %37 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %13, align 8
  %40 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %41 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @i40iw_get_vmalloc_mem(i32 %38, %struct.i40iw_chunk* %39, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %47, i32* %4, align 4
  br label %196

48:                                               ; preds = %3
  %49 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %50 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %12, align 8
  %53 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %54 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @I40IW_SD_TYPE_PAGED, align 4
  %58 = load i32, i32* @I40IW_HMC_DIRECT_BP_SIZE, align 4
  %59 = call i32 @i40iw_add_sd_table_entry(i32 %51, %struct.i40iw_hmc_info* %52, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %189

63:                                               ; preds = %48
  %64 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %65 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %63
  %69 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %70 = load i32, i32* @I40IW_HMC_IW_PBLE, align 4
  %71 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  %72 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  %73 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @fpm_to_idx(%struct.i40iw_hmc_pble_rsrc* %71, i32 %74)
  %76 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %77 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PBLE_512_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = call i32 @i40iw_vchnl_vf_add_hmc_objs(%struct.i40iw_sc_dev* %69, i32 %70, i32 %75, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %68
  %85 = load i32, i32* %15, align 4
  %86 = call i32 (i8*, ...) @i40iw_pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %189

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87, %63
  %89 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %13, align 8
  %90 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %8, align 8
  store i64 0, i64* %18, align 8
  br label %92

92:                                               ; preds = %144, %88
  %93 = load i64, i64* %18, align 8
  %94 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %95 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = icmp ult i64 %93, %97
  br i1 %98, label %99, label %147

99:                                               ; preds = %92
  %100 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %13, align 8
  %101 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %18, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %9, i32 0, i32 2
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %9, i32 0, i32 1
  store i32 %107, i32* %108, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = bitcast i32* %109 to i8*
  %111 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %9, i32 0, i32 0
  store i8* %110, i8** %111, align 8
  %112 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %11, align 8
  %113 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load %struct.i40iw_hmc_pd_entry*, %struct.i40iw_hmc_pd_entry** %115, align 8
  %117 = load i64, i64* %16, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %16, align 8
  %119 = getelementptr inbounds %struct.i40iw_hmc_pd_entry, %struct.i40iw_hmc_pd_entry* %116, i64 %117
  store %struct.i40iw_hmc_pd_entry* %119, %struct.i40iw_hmc_pd_entry** %10, align 8
  %120 = load %struct.i40iw_hmc_pd_entry*, %struct.i40iw_hmc_pd_entry** %10, align 8
  %121 = getelementptr inbounds %struct.i40iw_hmc_pd_entry, %struct.i40iw_hmc_pd_entry* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %141, label %124

124:                                              ; preds = %99
  %125 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %126 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %12, align 8
  %129 = load i64, i64* %17, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %17, align 8
  %131 = trunc i64 %129 to i32
  %132 = call i32 @i40iw_add_pd_table_entry(i32 %127, %struct.i40iw_hmc_info* %128, i32 %131, %struct.i40iw_dma_mem* %9)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  br label %189

136:                                              ; preds = %124
  %137 = load i32, i32* @PAGE_SIZE, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %8, align 8
  br label %143

141:                                              ; preds = %99
  %142 = call i32 (i8*, ...) @i40iw_pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %136
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %18, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %18, align 8
  br label %92

147:                                              ; preds = %92
  %148 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %149 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %183, label %152

152:                                              ; preds = %147
  %153 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %154 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.i40iw_manage_vf_pble_info, %struct.i40iw_manage_vf_pble_info* %14, i32 0, i32 0
  store i64 %156, i64* %157, align 8
  %158 = getelementptr inbounds %struct.i40iw_manage_vf_pble_info, %struct.i40iw_manage_vf_pble_info* %14, i32 0, i32 1
  store i32 0, i32* %158, align 8
  %159 = load i32, i32* @PBLE_PER_PAGE, align 4
  %160 = getelementptr inbounds %struct.i40iw_manage_vf_pble_info, %struct.i40iw_manage_vf_pble_info* %14, i32 0, i32 4
  store i32 %159, i32* %160, align 4
  %161 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %11, align 8
  %162 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds %struct.i40iw_manage_vf_pble_info, %struct.i40iw_manage_vf_pble_info* %14, i32 0, i32 3
  store i32 %166, i32* %167, align 8
  %168 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %169 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds %struct.i40iw_manage_vf_pble_info, %struct.i40iw_manage_vf_pble_info* %14, i32 0, i32 2
  store i32 %171, i32* %172, align 4
  %173 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %174 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @i40iw_hw_manage_vf_pble_bp(i32 %175, %struct.i40iw_manage_vf_pble_info* %14, i32 1)
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %152
  %180 = load i32, i32* %15, align 4
  %181 = call i32 (i8*, ...) @i40iw_pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %180)
  br label %189

182:                                              ; preds = %152
  br label %183

183:                                              ; preds = %182, %147
  %184 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  %185 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %13, align 8
  %188 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  store i32 0, i32* %4, align 4
  br label %196

189:                                              ; preds = %179, %135, %84, %62
  %190 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %191 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %13, align 8
  %194 = call i32 @i40iw_free_vmalloc_mem(i32 %192, %struct.i40iw_chunk* %193)
  %195 = load i32, i32* %15, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %189, %183, %46
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @i40iw_get_vmalloc_mem(i32, %struct.i40iw_chunk*, i32) #1

declare dso_local i32 @i40iw_add_sd_table_entry(i32, %struct.i40iw_hmc_info*, i32, i32, i32) #1

declare dso_local i32 @i40iw_vchnl_vf_add_hmc_objs(%struct.i40iw_sc_dev*, i32, i32, i32) #1

declare dso_local i32 @fpm_to_idx(%struct.i40iw_hmc_pble_rsrc*, i32) #1

declare dso_local i32 @i40iw_pr_err(i8*, ...) #1

declare dso_local i32 @i40iw_add_pd_table_entry(i32, %struct.i40iw_hmc_info*, i32, %struct.i40iw_dma_mem*) #1

declare dso_local i32 @i40iw_hw_manage_vf_pble_bp(i32, %struct.i40iw_manage_vf_pble_info*, i32) #1

declare dso_local i32 @i40iw_free_vmalloc_mem(i32, %struct.i40iw_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
