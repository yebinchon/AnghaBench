; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_cqp_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_cqp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { i32, i64, i32, %struct.TYPE_2__*, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@I40IW_UPDATE_SD_BUF_SIZE = common dso_local global i32 0, align 4
@I40IW_SD_BUF_ALIGNMENT = common dso_local global i32 0, align 4
@I40IW_CQPHC_SQSIZE = common dso_local global i32 0, align 4
@I40IW_CQPHC_SVER = common dso_local global i32 0, align 4
@I40IW_CQPHC_ENABLED_VFS = common dso_local global i32 0, align 4
@I40IW_CQPHC_HMC_PROFILE = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"CQP_HOST_CTX\00", align 1
@I40IW_CQP_CTX_SIZE = common dso_local global i32 0, align 4
@I40E_PFPE_CCQPHIGH = common dso_local global i32 0, align 4
@I40E_PFPE_CCQPLOW = common dso_local global i32 0, align 4
@I40E_VFPE_CCQPHIGH1 = common dso_local global i32 0, align 4
@I40E_VFPE_CCQPLOW1 = common dso_local global i32 0, align 4
@I40IW_DONE_COUNT = common dso_local global i64 0, align 8
@I40IW_ERR_TIMEOUT = common dso_local global i32 0, align 4
@I40E_PFPE_CQPERRCODES = common dso_local global i32 0, align 4
@I40E_VFPE_CQPERRCODES1 = common dso_local global i32 0, align 4
@I40E_PFPE_CQPERRCODES_CQP_MINOR_CODE = common dso_local global i32 0, align 4
@I40E_PFPE_CQPERRCODES_CQP_MAJOR_CODE = common dso_local global i32 0, align 4
@I40IW_SLEEP_COUNT = common dso_local global i32 0, align 4
@I40E_PFPE_CCQPSTATUS = common dso_local global i32 0, align 4
@I40E_VFPE_CCQPSTATUS1 = common dso_local global i32 0, align 4
@i40iw_update_sds_noccq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cqp*, i64*, i64*)* @i40iw_sc_cqp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_cqp_create(%struct.i40iw_sc_cqp* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.i40iw_sc_cqp*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %11, align 8
  %14 = load i64*, i64** %5, align 8
  store i64 0, i64* %14, align 8
  %15 = load i64*, i64** %6, align 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %17 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %22 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %21, i32 0, i32 4
  %23 = load i32, i32* @I40IW_UPDATE_SD_BUF_SIZE, align 4
  %24 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %25 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  %28 = load i32, i32* @I40IW_SD_BUF_ALIGNMENT, align 4
  %29 = call i32 @i40iw_allocate_dma_mem(i32 %20, i32* %22, i32 %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %230

33:                                               ; preds = %3
  %34 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %35 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @I40IW_CQPHC_SQSIZE, align 4
  %38 = call i64 @LS_64(i32 %36, i32 %37)
  %39 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %40 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @I40IW_CQPHC_SVER, align 4
  %43 = call i64 @LS_64(i32 %41, i32 %42)
  %44 = or i64 %38, %43
  store i64 %44, i64* %7, align 8
  %45 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %46 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @set_64bit_val(i32 %47, i32 0, i64 %48)
  %50 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %51 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %54 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @set_64bit_val(i32 %52, i32 8, i64 %55)
  %57 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %58 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @I40IW_CQPHC_ENABLED_VFS, align 4
  %61 = call i64 @LS_64(i32 %59, i32 %60)
  %62 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %63 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @I40IW_CQPHC_HMC_PROFILE, align 4
  %66 = call i64 @LS_64(i32 %64, i32 %65)
  %67 = or i64 %61, %66
  store i64 %67, i64* %7, align 8
  %68 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %69 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @set_64bit_val(i32 %70, i32 16, i64 %71)
  %73 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %74 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %77 = ptrtoint %struct.i40iw_sc_cqp* %76 to i64
  %78 = call i32 @set_64bit_val(i32 %75, i32 24, i64 %77)
  %79 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %80 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @set_64bit_val(i32 %81, i32 32, i64 0)
  %83 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %84 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @set_64bit_val(i32 %85, i32 40, i64 0)
  %87 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %88 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @set_64bit_val(i32 %89, i32 48, i64 0)
  %91 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %92 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @set_64bit_val(i32 %93, i32 56, i64 0)
  %95 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %96 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %99 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %100 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @I40IW_CQP_CTX_SIZE, align 4
  %103 = mul nsw i32 %102, 8
  %104 = call i32 @i40iw_debug_buf(%struct.TYPE_2__* %97, i32 %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %103)
  %105 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %106 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @RS_32_1(i64 %107, i32 32)
  store i64 %108, i64* %9, align 8
  %109 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %110 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %10, align 8
  %112 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %113 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %112, i32 0, i32 3
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %33
  %119 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %120 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %119, i32 0, i32 3
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @I40E_PFPE_CCQPHIGH, align 4
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @i40iw_wr32(i32 %123, i32 %124, i64 %125)
  %127 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %128 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %127, i32 0, i32 3
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @I40E_PFPE_CCQPLOW, align 4
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @i40iw_wr32(i32 %131, i32 %132, i64 %133)
  br label %152

135:                                              ; preds = %33
  %136 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %137 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %136, i32 0, i32 3
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @I40E_VFPE_CCQPHIGH1, align 4
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @i40iw_wr32(i32 %140, i32 %141, i64 %142)
  %144 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %145 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %144, i32 0, i32 3
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @I40E_VFPE_CCQPLOW1, align 4
  %150 = load i64, i64* %10, align 8
  %151 = call i32 @i40iw_wr32(i32 %148, i32 %149, i64 %150)
  br label %152

152:                                              ; preds = %135, %118
  br label %153

153:                                              ; preds = %225, %152
  %154 = load i64, i64* %8, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %8, align 8
  %156 = load i64, i64* @I40IW_DONE_COUNT, align 8
  %157 = icmp sgt i64 %154, %156
  br i1 %157, label %158, label %199

158:                                              ; preds = %153
  %159 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %160 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %159, i32 0, i32 3
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %165 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %164, i32 0, i32 4
  %166 = call i32 @i40iw_free_dma_mem(i32 %163, i32* %165)
  %167 = load i32, i32* @I40IW_ERR_TIMEOUT, align 4
  store i32 %167, i32* %13, align 4
  %168 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %169 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %168, i32 0, i32 3
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %158
  %175 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %176 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %175, i32 0, i32 3
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @I40E_PFPE_CQPERRCODES, align 4
  %181 = call i64 @i40iw_rd32(i32 %179, i32 %180)
  store i64 %181, i64* %12, align 8
  br label %190

182:                                              ; preds = %158
  %183 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %184 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %183, i32 0, i32 3
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @I40E_VFPE_CQPERRCODES1, align 4
  %189 = call i64 @i40iw_rd32(i32 %187, i32 %188)
  store i64 %189, i64* %12, align 8
  br label %190

190:                                              ; preds = %182, %174
  %191 = load i64, i64* %12, align 8
  %192 = load i32, i32* @I40E_PFPE_CQPERRCODES_CQP_MINOR_CODE, align 4
  %193 = call i64 @RS_32(i64 %191, i32 %192)
  %194 = load i64*, i64** %6, align 8
  store i64 %193, i64* %194, align 8
  %195 = load i64, i64* %12, align 8
  %196 = load i32, i32* @I40E_PFPE_CQPERRCODES_CQP_MAJOR_CODE, align 4
  %197 = call i64 @RS_32(i64 %195, i32 %196)
  %198 = load i64*, i64** %5, align 8
  store i64 %197, i64* %198, align 8
  br label %230

199:                                              ; preds = %153
  %200 = load i32, i32* @I40IW_SLEEP_COUNT, align 4
  %201 = call i32 @udelay(i32 %200)
  %202 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %203 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %202, i32 0, i32 3
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %199
  %209 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %210 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %209, i32 0, i32 3
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @I40E_PFPE_CCQPSTATUS, align 4
  %215 = call i64 @i40iw_rd32(i32 %213, i32 %214)
  store i64 %215, i64* %11, align 8
  br label %224

216:                                              ; preds = %199
  %217 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %218 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %217, i32 0, i32 3
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @I40E_VFPE_CCQPSTATUS1, align 4
  %223 = call i64 @i40iw_rd32(i32 %221, i32 %222)
  store i64 %223, i64* %11, align 8
  br label %224

224:                                              ; preds = %216, %208
  br label %225

225:                                              ; preds = %224
  %226 = load i64, i64* %11, align 8
  %227 = icmp ne i64 %226, 0
  %228 = xor i1 %227, true
  br i1 %228, label %153, label %229

229:                                              ; preds = %225
  br label %230

230:                                              ; preds = %229, %190, %32
  %231 = load i32, i32* %13, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* @i40iw_update_sds_noccq, align 4
  %235 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %4, align 8
  %236 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 8
  br label %237

237:                                              ; preds = %233, %230
  %238 = load i32, i32* %13, align 4
  ret i32 %238
}

declare dso_local i32 @i40iw_allocate_dma_mem(i32, i32*, i32, i32) #1

declare dso_local i64 @LS_64(i32, i32) #1

declare dso_local i32 @set_64bit_val(i32, i32, i64) #1

declare dso_local i32 @i40iw_debug_buf(%struct.TYPE_2__*, i32, i8*, i32, i32) #1

declare dso_local i64 @RS_32_1(i64, i32) #1

declare dso_local i32 @i40iw_wr32(i32, i32, i64) #1

declare dso_local i32 @i40iw_free_dma_mem(i32, i32*) #1

declare dso_local i64 @i40iw_rd32(i32, i32) #1

declare dso_local i64 @RS_32(i64, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
