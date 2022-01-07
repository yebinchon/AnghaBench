; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_init_iw_hmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_init_iw_hmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32, i32, i32, i32, %struct.TYPE_4__*, i64, i32, %struct.i40iw_hmc_info* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.i40iw_hmc_info = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.i40iw_dma_mem = type { i64, i32 }
%struct.i40iw_virt_mem = type { i32 }
%struct.i40iw_vfdev = type { i64, i64, i32, %struct.i40iw_hmc_info }

@I40IW_MAX_VF_FPM_ID = common dso_local global i32 0, align 4
@I40IW_FIRST_VF_FPM_ID = common dso_local global i32 0, align 4
@I40IW_ERR_INVALID_HMCFN_ID = common dso_local global i32 0, align 4
@I40IW_DEBUG_HMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"hmc_fn_id %u, dev->hmc_fn_id %u\0A\00", align 1
@I40IW_ERR_INVALID_VF_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"vf_dev %p, hmc_info %p, hmc_obj %p\0A\00", align 1
@I40IW_CQP_WAIT_POLL_REGS = common dso_local global i64 0, align 8
@I40IW_CQP_WAIT_POLL_CQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"QUERY FPM BUFFER\00", align 1
@I40IW_QUERY_FPM_BUF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_sc_init_iw_hmc(%struct.i40iw_sc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_hmc_info*, align 8
  %7 = alloca %struct.i40iw_dma_mem, align 8
  %8 = alloca %struct.i40iw_virt_mem, align 4
  %9 = alloca %struct.i40iw_vfdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.i40iw_vfdev* null, %struct.i40iw_vfdev** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @I40IW_MAX_VF_FPM_ID, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %20 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @I40IW_FIRST_VF_FPM_ID, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %2
  %29 = load i32, i32* @I40IW_ERR_INVALID_HMCFN_ID, align 4
  store i32 %29, i32* %3, align 4
  br label %238

30:                                               ; preds = %24, %18
  %31 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %32 = load i32, i32* @I40IW_DEBUG_HMC, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.i40iw_vfdev*
  %36 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %37 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.i40iw_hmc_info*
  %41 = call i32 (%struct.i40iw_sc_dev*, i32, i8*, %struct.i40iw_vfdev*, %struct.i40iw_hmc_info*, ...) @i40iw_debug(%struct.i40iw_sc_dev* %31, i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.i40iw_vfdev* %35, %struct.i40iw_hmc_info* %40)
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %44 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %30
  %48 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %49 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %48, i32 0, i32 7
  %50 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %49, align 8
  store %struct.i40iw_hmc_info* %50, %struct.i40iw_hmc_info** %6, align 8
  %51 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %52 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %7, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %56 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %7, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  br label %135

59:                                               ; preds = %30
  %60 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call %struct.i40iw_vfdev* @i40iw_vfdev_from_fpm(%struct.i40iw_sc_dev* %60, i32 %61)
  store %struct.i40iw_vfdev* %62, %struct.i40iw_vfdev** %9, align 8
  %63 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %9, align 8
  %64 = icmp ne %struct.i40iw_vfdev* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @I40IW_ERR_INVALID_VF_ID, align 4
  store i32 %66, i32* %3, align 4
  br label %238

67:                                               ; preds = %59
  %68 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %9, align 8
  %69 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %68, i32 0, i32 3
  store %struct.i40iw_hmc_info* %69, %struct.i40iw_hmc_info** %6, align 8
  %70 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %9, align 8
  %71 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %13, align 8
  %73 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %74 = load i32, i32* @I40IW_DEBUG_HMC, align 4
  %75 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %9, align 8
  %76 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %77 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %78 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (%struct.i40iw_sc_dev*, i32, i8*, %struct.i40iw_vfdev*, %struct.i40iw_hmc_info*, ...) @i40iw_debug(%struct.i40iw_sc_dev* %73, i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.i40iw_vfdev* %75, %struct.i40iw_hmc_info* %76, i32 %79)
  %81 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %9, align 8
  %82 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %126, label %85

85:                                               ; preds = %67
  %86 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %87 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %86, i32 0, i32 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i64, i64* %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %85
  %95 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %96 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %97 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %96, i32 0, i32 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i64, i64* %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = call i32 @i40iw_alloc_query_fpm_buf(%struct.i40iw_sc_dev* %95, %struct.TYPE_4__* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %3, align 4
  br label %238

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %85
  %108 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %109 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %108, i32 0, i32 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i64, i64* %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %9, align 8
  %116 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %118 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %117, i32 0, i32 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i64, i64* %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %9, align 8
  %125 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %107, %67
  %127 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %9, align 8
  %128 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %7, i32 0, i32 1
  store i32 %129, i32* %130, align 8
  %131 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %9, align 8
  %132 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %7, i32 0, i32 0
  store i64 %133, i64* %134, align 8
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %126, %47
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %138 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %141 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %139, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %135
  %145 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @i40iw_cqp_query_fpm_values_cmd(%struct.i40iw_sc_dev* %145, %struct.i40iw_dma_mem* %7, i32 %146)
  store i32 %147, i32* %11, align 4
  br label %167

148:                                              ; preds = %135
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i64, i64* @I40IW_CQP_WAIT_POLL_REGS, align 8
  %153 = trunc i64 %152 to i32
  br label %157

154:                                              ; preds = %148
  %155 = load i64, i64* @I40IW_CQP_WAIT_POLL_CQ, align 8
  %156 = trunc i64 %155 to i32
  br label %157

157:                                              ; preds = %154, %151
  %158 = phi i32 [ %153, %151 ], [ %156, %154 ]
  store i32 %158, i32* %14, align 4
  %159 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %160 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %163 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @i40iw_sc_query_fpm_values(i32 %161, i32 0, i32 %164, %struct.i40iw_dma_mem* %7, i32 1, i32 %165)
  store i32 %166, i32* %11, align 4
  br label %167

167:                                              ; preds = %157, %144
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %3, align 4
  br label %238

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %7, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to i32*
  %176 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %177 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %178 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %177, i32 0, i32 2
  %179 = call i32 @i40iw_sc_parse_fpm_query_buf(i32* %175, %struct.i40iw_hmc_info* %176, i32* %178)
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %172
  %183 = load i32, i32* %11, align 4
  store i32 %183, i32* %3, align 4
  br label %238

184:                                              ; preds = %172
  %185 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %186 = load i32, i32* @I40IW_DEBUG_HMC, align 4
  %187 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %7, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* @I40IW_QUERY_FPM_BUF_SIZE, align 4
  %190 = call i32 @i40iw_debug_buf(%struct.i40iw_sc_dev* %185, i32 %186, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %188, i32 %189)
  %191 = load i32, i32* %5, align 4
  %192 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %193 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %191, %194
  br i1 %195, label %196, label %236

196:                                              ; preds = %184
  %197 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %198 = load i32, i32* %5, align 4
  %199 = call i32 @i40iw_cqp_commit_fpm_values_cmd(%struct.i40iw_sc_dev* %197, %struct.i40iw_dma_mem* %7, i32 %198)
  %200 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %7, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to i32*
  %203 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %204 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %207 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = call i32 @i40iw_sc_parse_fpm_commit_buf(i32* %202, i32 %205, i32* %208)
  %210 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %211 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %215 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %213, %216
  %218 = sext i32 %217 to i64
  %219 = mul i64 4, %218
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %10, align 4
  %221 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %222 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = call i32 @i40iw_allocate_virt_mem(i32 %223, %struct.i40iw_virt_mem* %8, i32 %224)
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %196
  %229 = load i32, i32* %11, align 4
  store i32 %229, i32* %3, align 4
  br label %238

230:                                              ; preds = %196
  %231 = getelementptr inbounds %struct.i40iw_virt_mem, %struct.i40iw_virt_mem* %8, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %234 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 1
  store i32 %232, i32* %235, align 4
  br label %236

236:                                              ; preds = %230, %184
  %237 = load i32, i32* %11, align 4
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %236, %228, %182, %170, %104, %65, %28
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i32 @i40iw_debug(%struct.i40iw_sc_dev*, i32, i8*, %struct.i40iw_vfdev*, %struct.i40iw_hmc_info*, ...) #1

declare dso_local %struct.i40iw_vfdev* @i40iw_vfdev_from_fpm(%struct.i40iw_sc_dev*, i32) #1

declare dso_local i32 @i40iw_alloc_query_fpm_buf(%struct.i40iw_sc_dev*, %struct.TYPE_4__*) #1

declare dso_local i32 @i40iw_cqp_query_fpm_values_cmd(%struct.i40iw_sc_dev*, %struct.i40iw_dma_mem*, i32) #1

declare dso_local i32 @i40iw_sc_query_fpm_values(i32, i32, i32, %struct.i40iw_dma_mem*, i32, i32) #1

declare dso_local i32 @i40iw_sc_parse_fpm_query_buf(i32*, %struct.i40iw_hmc_info*, i32*) #1

declare dso_local i32 @i40iw_debug_buf(%struct.i40iw_sc_dev*, i32, i8*, i64, i32) #1

declare dso_local i32 @i40iw_cqp_commit_fpm_values_cmd(%struct.i40iw_sc_dev*, %struct.i40iw_dma_mem*, i32) #1

declare dso_local i32 @i40iw_sc_parse_fpm_commit_buf(i32*, i32, i32*) #1

declare dso_local i32 @i40iw_allocate_virt_mem(i32, %struct.i40iw_virt_mem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
