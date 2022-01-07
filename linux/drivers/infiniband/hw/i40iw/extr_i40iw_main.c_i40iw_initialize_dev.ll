; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_initialize_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_initialize_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, i32*, i32, %struct.i40iw_sc_dev, %struct.TYPE_7__, %struct.i40iw_hmc_pble_rsrc* }
%struct.i40iw_sc_dev = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.i40iw_hmc_obj_info* }
%struct.i40iw_hmc_obj_info = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.i40iw_hmc_pble_rsrc = type { i32 }
%struct.i40e_info = type { i32, %struct.TYPE_10__, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.i40iw_device_init_info = type { i32, i32, i32, i8*, i32, %struct.i40iw_device_init_info*, i8*, %struct.i40iw_sc_dev*, i32, i64*, i64, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32 }
%struct.i40iw_vsi_init_info = type { i32, i32, i32, i8*, i32, %struct.i40iw_vsi_init_info*, i8*, %struct.i40iw_sc_dev*, i32, i64*, i64, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32 }
%struct.i40iw_dma_mem = type { i32, i32 }
%struct.i40iw_l2params = type { i32, i32, i32, i8*, i32, %struct.i40iw_l2params*, i8*, %struct.i40iw_sc_dev*, i32, i64*, i64, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32 }
%struct.i40iw_vsi_stats_info = type { i32, i32, i32, i8*, i32, %struct.i40iw_vsi_stats_info*, i8*, %struct.i40iw_sc_dev*, i32, i64*, i64, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32 }

@I40IW_NO_QSET = common dso_local global i64 0, align 8
@I40IW_HMC_IW_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@I40IW_QUERY_FPM_BUF_SIZE = common dso_local global i32 0, align 4
@I40IW_FPM_QUERY_BUF_ALIGNMENT_MASK = common dso_local global i32 0, align 4
@I40IW_COMMIT_FPM_BUF_SIZE = common dso_local global i32 0, align 4
@I40IW_FPM_COMMIT_BUF_ALIGNMENT_MASK = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@I40IW_DEFAULT_MTU = common dso_local global i64 0, align 8
@I40E_CLIENT_MAX_USER_PRIORITY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"DCB is set/clear = %d\0A\00", align 1
@i40iw_virtchnl_send = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, %struct.i40e_info*)* @i40iw_initialize_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_initialize_dev(%struct.i40iw_device* %0, %struct.i40e_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_device*, align 8
  %5 = alloca %struct.i40e_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40iw_sc_dev*, align 8
  %8 = alloca %struct.i40iw_device_init_info, align 8
  %9 = alloca %struct.i40iw_vsi_init_info, align 8
  %10 = alloca %struct.i40iw_dma_mem, align 4
  %11 = alloca %struct.i40iw_l2params, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.i40iw_vsi_stats_info, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %4, align 8
  store %struct.i40e_info* %1, %struct.i40e_info** %5, align 8
  %17 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %18 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %17, i32 0, i32 3
  store %struct.i40iw_sc_dev* %18, %struct.i40iw_sc_dev** %7, align 8
  %19 = load i64, i64* @I40IW_NO_QSET, align 8
  store i64 %19, i64* %14, align 8
  %20 = bitcast %struct.i40iw_l2params* %11 to %struct.i40iw_vsi_stats_info*
  %21 = call i32 @memset(%struct.i40iw_vsi_stats_info* %20, i32 0, i32 120)
  %22 = bitcast %struct.i40iw_device_init_info* %8 to %struct.i40iw_vsi_stats_info*
  %23 = call i32 @memset(%struct.i40iw_vsi_stats_info* %22, i32 0, i32 120)
  %24 = load i32, i32* @I40IW_HMC_IW_MAX, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = add i64 8, %26
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 %29, i32 %30)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %34 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %36 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %40, i32* %3, align 4
  br label %233

41:                                               ; preds = %2
  %42 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %43 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to %struct.i40iw_hmc_pble_rsrc*
  %46 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %47 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %46, i32 0, i32 5
  store %struct.i40iw_hmc_pble_rsrc* %45, %struct.i40iw_hmc_pble_rsrc** %47, align 8
  %48 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %49 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %52 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %51, i32 0, i32 1
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %52, align 8
  %53 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %54 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %53, i32 0, i32 5
  %55 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %54, align 8
  %56 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %55, i64 1
  %57 = bitcast %struct.i40iw_hmc_pble_rsrc* %56 to %struct.i40iw_hmc_obj_info*
  %58 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %59 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store %struct.i40iw_hmc_obj_info* %57, %struct.i40iw_hmc_obj_info** %61, align 8
  %62 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %63 = load i32, i32* @I40IW_QUERY_FPM_BUF_SIZE, align 4
  %64 = load i32, i32* @I40IW_FPM_QUERY_BUF_ALIGNMENT_MASK, align 4
  %65 = call i32 @i40iw_obj_aligned_mem(%struct.i40iw_device* %62, %struct.i40iw_dma_mem* %10, i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %41
  br label %225

69:                                               ; preds = %41
  %70 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %10, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.i40iw_device_init_info, %struct.i40iw_device_init_info* %8, i32 0, i32 18
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %10, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.i40iw_device_init_info, %struct.i40iw_device_init_info* %8, i32 0, i32 17
  store i32 %74, i32* %75, align 8
  %76 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %77 = load i32, i32* @I40IW_COMMIT_FPM_BUF_SIZE, align 4
  %78 = load i32, i32* @I40IW_FPM_COMMIT_BUF_ALIGNMENT_MASK, align 4
  %79 = call i32 @i40iw_obj_aligned_mem(%struct.i40iw_device* %76, %struct.i40iw_dma_mem* %10, i32 %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %225

83:                                               ; preds = %69
  %84 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %10, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.i40iw_device_init_info, %struct.i40iw_device_init_info* %8, i32 0, i32 16
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %10, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.i40iw_device_init_info, %struct.i40iw_device_init_info* %8, i32 0, i32 15
  store i32 %88, i32* %89, align 8
  %90 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %91 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.i40iw_device_init_info, %struct.i40iw_device_init_info* %8, i32 0, i32 14
  store i32 %92, i32* %93, align 4
  %94 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %95 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 0, i32 1
  %100 = getelementptr inbounds %struct.i40iw_device_init_info, %struct.i40iw_device_init_info* %8, i32 0, i32 0
  store i32 %99, i32* %100, align 8
  %101 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %102 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.i40iw_device_init_info, %struct.i40iw_device_init_info* %8, i32 0, i32 13
  store i32 %103, i32* %104, align 8
  %105 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %106 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.i40iw_device_init_info, %struct.i40iw_device_init_info* %8, i32 0, i32 12
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %107, align 8
  %108 = load i32, i32* @debug, align 4
  %109 = getelementptr inbounds %struct.i40iw_device_init_info, %struct.i40iw_device_init_info* %8, i32 0, i32 11
  store i32 %108, i32* %109, align 8
  %110 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %111 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %83
  %116 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %117 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  br label %122

120:                                              ; preds = %83
  %121 = load i64, i64* @I40IW_DEFAULT_MTU, align 8
  br label %122

122:                                              ; preds = %120, %115
  %123 = phi i64 [ %119, %115 ], [ %121, %120 ]
  %124 = getelementptr inbounds %struct.i40iw_l2params, %struct.i40iw_l2params* %11, i32 0, i32 10
  store i64 %123, i64* %124, align 8
  store i64 0, i64* %16, align 8
  br label %125

125:                                              ; preds = %162, %122
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* @I40E_CLIENT_MAX_USER_PRIORITY, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %165

129:                                              ; preds = %125
  %130 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %131 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i64, i64* %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %15, align 8
  %139 = load i64, i64* %15, align 8
  %140 = getelementptr inbounds %struct.i40iw_l2params, %struct.i40iw_l2params* %11, i32 0, i32 9
  %141 = load i64*, i64** %140, align 8
  %142 = load i64, i64* %16, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  store i64 %139, i64* %143, align 8
  %144 = load i64, i64* %14, align 8
  %145 = load i64, i64* @I40IW_NO_QSET, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %129
  %148 = load i64, i64* %15, align 8
  store i64 %148, i64* %14, align 8
  br label %161

149:                                              ; preds = %129
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* %14, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* @I40IW_NO_QSET, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %159 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %153, %149
  br label %161

161:                                              ; preds = %160, %147
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %16, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %16, align 8
  br label %125

165:                                              ; preds = %125
  %166 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %167 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @i40iw_pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* @i40iw_virtchnl_send, align 4
  %171 = getelementptr inbounds %struct.i40iw_device_init_info, %struct.i40iw_device_init_info* %8, i32 0, i32 8
  store i32 %170, i32* %171, align 8
  %172 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %173 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %172, i32 0, i32 3
  %174 = bitcast %struct.i40iw_device_init_info* %8 to %struct.i40iw_vsi_stats_info*
  %175 = call i32 @i40iw_device_init(%struct.i40iw_sc_dev* %173, %struct.i40iw_vsi_stats_info* %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %165
  br label %225

179:                                              ; preds = %165
  %180 = bitcast %struct.i40iw_vsi_init_info* %9 to %struct.i40iw_vsi_stats_info*
  %181 = call i32 @memset(%struct.i40iw_vsi_stats_info* %180, i32 0, i32 120)
  %182 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %183 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.i40iw_vsi_init_info, %struct.i40iw_vsi_init_info* %9, i32 0, i32 7
  store %struct.i40iw_sc_dev* %183, %struct.i40iw_sc_dev** %184, align 8
  %185 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %186 = bitcast %struct.i40iw_device* %185 to i8*
  %187 = getelementptr inbounds %struct.i40iw_vsi_init_info, %struct.i40iw_vsi_init_info* %9, i32 0, i32 6
  store i8* %186, i8** %187, align 8
  %188 = bitcast %struct.i40iw_l2params* %11 to %struct.i40iw_vsi_init_info*
  %189 = getelementptr inbounds %struct.i40iw_vsi_init_info, %struct.i40iw_vsi_init_info* %9, i32 0, i32 5
  store %struct.i40iw_vsi_init_info* %188, %struct.i40iw_vsi_init_info** %189, align 8
  %190 = getelementptr inbounds %struct.i40iw_vsi_init_info, %struct.i40iw_vsi_init_info* %9, i32 0, i32 1
  store i32 1, i32* %190, align 4
  %191 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %192 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %191, i32 0, i32 2
  %193 = bitcast %struct.i40iw_vsi_init_info* %9 to %struct.i40iw_vsi_stats_info*
  %194 = call i32 @i40iw_sc_vsi_init(i32* %192, %struct.i40iw_vsi_stats_info* %193)
  %195 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %196 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %223

199:                                              ; preds = %179
  %200 = call i32 @memset(%struct.i40iw_vsi_stats_info* %13, i32 0, i32 120)
  %201 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %202 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = getelementptr inbounds %struct.i40iw_vsi_stats_info, %struct.i40iw_vsi_stats_info* %13, i32 0, i32 4
  store i32 %203, i32* %204, align 8
  %205 = load i32, i32* @GFP_KERNEL, align 4
  %206 = call i8* @kzalloc(i32 1, i32 %205)
  %207 = getelementptr inbounds %struct.i40iw_vsi_stats_info, %struct.i40iw_vsi_stats_info* %13, i32 0, i32 3
  store i8* %206, i8** %207, align 8
  %208 = getelementptr inbounds %struct.i40iw_vsi_stats_info, %struct.i40iw_vsi_stats_info* %13, i32 0, i32 3
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %213, label %211

211:                                              ; preds = %199
  %212 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %212, i32* %6, align 4
  br label %225

213:                                              ; preds = %199
  %214 = getelementptr inbounds %struct.i40iw_vsi_stats_info, %struct.i40iw_vsi_stats_info* %13, i32 0, i32 2
  store i32 1, i32* %214, align 8
  %215 = getelementptr inbounds %struct.i40iw_vsi_stats_info, %struct.i40iw_vsi_stats_info* %13, i32 0, i32 3
  %216 = load i8*, i8** %215, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %220 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %219, i32 0, i32 2
  %221 = call i32 @i40iw_vsi_stats_init(i32* %220, %struct.i40iw_vsi_stats_info* %13)
  br label %222

222:                                              ; preds = %218, %213
  br label %223

223:                                              ; preds = %222, %179
  %224 = load i32, i32* %6, align 4
  store i32 %224, i32* %3, align 4
  br label %233

225:                                              ; preds = %211, %178, %82, %68
  %226 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %227 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @kfree(i32* %228)
  %230 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %231 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %230, i32 0, i32 1
  store i32* null, i32** %231, align 8
  %232 = load i32, i32* %6, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %225, %223, %39
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @memset(%struct.i40iw_vsi_stats_info*, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @i40iw_obj_aligned_mem(%struct.i40iw_device*, %struct.i40iw_dma_mem*, i32, i32) #1

declare dso_local i32 @i40iw_pr_info(i8*, i32) #1

declare dso_local i32 @i40iw_device_init(%struct.i40iw_sc_dev*, %struct.i40iw_vsi_stats_info*) #1

declare dso_local i32 @i40iw_sc_vsi_init(i32*, %struct.i40iw_vsi_stats_info*) #1

declare dso_local i32 @i40iw_vsi_stats_init(i32*, %struct.i40iw_vsi_stats_info*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
