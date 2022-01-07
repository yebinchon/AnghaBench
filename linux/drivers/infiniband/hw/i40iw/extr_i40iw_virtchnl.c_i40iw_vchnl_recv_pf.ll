; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_virtchnl.c_i40iw_vchnl_recv_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_virtchnl.c_i40iw_vchnl_recv_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.i40iw_vfdev**, i32, i32 }
%struct.i40iw_vfdev = type { i64, i32, i32, i64, i32, %struct.i40iw_vsi_pestat, %struct.TYPE_4__, i32, %struct.TYPE_3__, %struct.i40iw_sc_dev* }
%struct.i40iw_vsi_pestat = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.i40iw_hmc_obj_info* }
%struct.i40iw_hmc_obj_info = type { i32 }
%struct.i40iw_virtchnl_op_buf = type { i32 }
%struct.i40iw_hmc_fcn_info = type { i64, i32, %struct.i40iw_vfdev*, i64, i32 }
%struct.i40iw_virt_mem = type { %struct.i40iw_vfdev* }
%struct.i40iw_virtchnl_work_info = type { i32, %struct.i40iw_vfdev* }

@I40IW_MAX_PE_ENABLED_VF_COUNT = common dso_local global i64 0, align 8
@I40IW_ERR_PARAM = common dso_local global i32 0, align 4
@I40IW_ERR_NOT_READY = common dso_local global i32 0, align 4
@I40IW_VCHNL_OP_GET_VER = common dso_local global i32 0, align 4
@I40IW_SUCCESS = common dso_local global i32 0, align 4
@I40IW_DEBUG_VIRT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"VF%u already has a channel message in progress.\0A\00", align 1
@I40IW_HMC_IW_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"vf_dev %p, hmc_info %p, hmc_obj %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"VF%u Unable to allocate a VF device structure.\0A\00", align 1
@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@pf_cqp_get_hmc_fcn_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"VF%u error CQP HMC Function operation.\0A\00", align 1
@I40IW_ERR_BAD_PTR = common dso_local global i32 0, align 4
@pf_add_hmc_obj_callback = common dso_local global i32 0, align 4
@pf_del_hmc_obj_callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"40iw_vchnl_recv_pf: Invalid OpCode 0x%x\0A\00", align 1
@I40IW_ERR_NOT_IMPLEMENTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_vchnl_recv_pf(%struct.i40iw_sc_dev* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i40iw_virtchnl_op_buf*, align 8
  %11 = alloca %struct.i40iw_vfdev*, align 8
  %12 = alloca %struct.i40iw_hmc_fcn_info, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.i40iw_virt_mem, align 8
  %16 = alloca %struct.i40iw_virtchnl_work_info, align 8
  %17 = alloca %struct.i40iw_vsi_pestat*, align 8
  %18 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = bitcast i32* %19 to %struct.i40iw_virtchnl_op_buf*
  store %struct.i40iw_virtchnl_op_buf* %20, %struct.i40iw_virtchnl_op_buf** %10, align 8
  store %struct.i40iw_vfdev* null, %struct.i40iw_vfdev** %11, align 8
  %21 = load i64, i64* @I40IW_MAX_PE_ENABLED_VF_COUNT, align 8
  store i64 %21, i64* %14, align 8
  %22 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %23 = icmp ne %struct.i40iw_sc_dev* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %24, %4
  %31 = load i32, i32* @I40IW_ERR_PARAM, align 4
  store i32 %31, i32* %5, align 4
  br label %331

32:                                               ; preds = %27
  %33 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %34 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @I40IW_ERR_NOT_READY, align 4
  store i32 %38, i32* %5, align 4
  br label %331

39:                                               ; preds = %32
  %40 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %10, align 8
  %41 = getelementptr inbounds %struct.i40iw_virtchnl_op_buf, %struct.i40iw_virtchnl_op_buf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @I40IW_VCHNL_OP_GET_VER, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %10, align 8
  %49 = call i32 @vchnl_pf_send_get_ver_resp(%struct.i40iw_sc_dev* %46, i64 %47, %struct.i40iw_virtchnl_op_buf* %48)
  %50 = load i32, i32* @I40IW_SUCCESS, align 4
  store i32 %50, i32* %5, align 4
  br label %331

51:                                               ; preds = %39
  store i64 0, i64* %13, align 8
  br label %52

52:                                               ; preds = %90, %51
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* @I40IW_MAX_PE_ENABLED_VF_COUNT, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %52
  %57 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %58 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %57, i32 0, i32 0
  %59 = load %struct.i40iw_vfdev**, %struct.i40iw_vfdev*** %58, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %59, i64 %60
  %62 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %61, align 8
  %63 = icmp ne %struct.i40iw_vfdev* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %56
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* @I40IW_MAX_PE_ENABLED_VF_COUNT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* %13, align 8
  store i64 %69, i64* %14, align 8
  br label %70

70:                                               ; preds = %68, %64
  br label %90

71:                                               ; preds = %56
  %72 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %73 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %72, i32 0, i32 0
  %74 = load %struct.i40iw_vfdev**, %struct.i40iw_vfdev*** %73, align 8
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %74, i64 %75
  %77 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %76, align 8
  %78 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %71
  %83 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %84 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %83, i32 0, i32 0
  %85 = load %struct.i40iw_vfdev**, %struct.i40iw_vfdev*** %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %85, i64 %86
  %88 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %87, align 8
  store %struct.i40iw_vfdev* %88, %struct.i40iw_vfdev** %11, align 8
  br label %93

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %89, %70
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %13, align 8
  br label %52

93:                                               ; preds = %82, %52
  %94 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %95 = icmp ne %struct.i40iw_vfdev* %94, null
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %98 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %103 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  br label %112

106:                                              ; preds = %96
  %107 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %108 = load i32, i32* @I40IW_DEBUG_VIRT, align 4
  %109 = load i64, i64* %7, align 8
  %110 = call i32 (%struct.i40iw_sc_dev*, i32, i8*, i64, ...) @i40iw_debug(%struct.i40iw_sc_dev* %107, i32 %108, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %109)
  %111 = load i32, i32* @I40IW_SUCCESS, align 4
  store i32 %111, i32* %5, align 4
  br label %331

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %93
  %114 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %10, align 8
  %115 = getelementptr inbounds %struct.i40iw_virtchnl_op_buf, %struct.i40iw_virtchnl_op_buf* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %315 [
    i32 129, label %117
    i32 131, label %251
    i32 130, label %272
    i32 128, label %293
  ]

117:                                              ; preds = %113
  %118 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %119 = icmp ne %struct.i40iw_vfdev* %118, null
  br i1 %119, label %227, label %120

120:                                              ; preds = %117
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* @I40IW_MAX_PE_ENABLED_VF_COUNT, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %227

124:                                              ; preds = %120
  %125 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %126 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @I40IW_HMC_IW_MAX, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 4, %129
  %131 = add i64 56, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 @i40iw_allocate_virt_mem(i32 %127, %struct.i40iw_virt_mem* %15, i32 %132)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %18, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %178, label %136

136:                                              ; preds = %124
  %137 = getelementptr inbounds %struct.i40iw_virt_mem, %struct.i40iw_virt_mem* %15, i32 0, i32 0
  %138 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %137, align 8
  store %struct.i40iw_vfdev* %138, %struct.i40iw_vfdev** %11, align 8
  %139 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %140 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %139, i32 0, i32 2
  store i32 0, i32* %140, align 4
  %141 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %142 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %143 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %142, i32 0, i32 9
  store %struct.i40iw_sc_dev* %141, %struct.i40iw_sc_dev** %143, align 8
  %144 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %145 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %144, i32 0, i32 1
  store i32 1, i32* %145, align 8
  %146 = load i64, i64* %7, align 8
  %147 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %148 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load i64, i64* %14, align 8
  %150 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %151 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %150, i32 0, i32 3
  store i64 %149, i64* %151, align 8
  %152 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %153 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %152, i32 0, i32 4
  store i32 0, i32* %153, align 8
  %154 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %155 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %154, i64 1
  %156 = bitcast %struct.i40iw_vfdev* %155 to %struct.i40iw_hmc_obj_info*
  %157 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %158 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %157, i32 0, i32 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  store %struct.i40iw_hmc_obj_info* %156, %struct.i40iw_hmc_obj_info** %159, align 8
  %160 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %161 = load i32, i32* @I40IW_DEBUG_VIRT, align 4
  %162 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %163 = ptrtoint %struct.i40iw_vfdev* %162 to i64
  %164 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %165 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %164, i32 0, i32 8
  %166 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %167 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %166, i32 0, i32 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %168, align 8
  %170 = call i32 (%struct.i40iw_sc_dev*, i32, i8*, i64, ...) @i40iw_debug(%struct.i40iw_sc_dev* %160, i32 %161, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %163, %struct.TYPE_3__* %165, %struct.i40iw_hmc_obj_info* %169)
  %171 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %172 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %173 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %172, i32 0, i32 0
  %174 = load %struct.i40iw_vfdev**, %struct.i40iw_vfdev*** %173, align 8
  %175 = load i64, i64* %14, align 8
  %176 = getelementptr inbounds %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %174, i64 %175
  store %struct.i40iw_vfdev* %171, %struct.i40iw_vfdev** %176, align 8
  %177 = load i64, i64* %14, align 8
  store i64 %177, i64* %13, align 8
  br label %190

178:                                              ; preds = %124
  %179 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %180 = load i32, i32* @I40IW_DEBUG_VIRT, align 4
  %181 = load i64, i64* %7, align 8
  %182 = call i32 (%struct.i40iw_sc_dev*, i32, i8*, i64, ...) @i40iw_debug(%struct.i40iw_sc_dev* %179, i32 %180, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %181)
  %183 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %184 = load i64, i64* %7, align 8
  %185 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %10, align 8
  %186 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  %187 = sext i32 %186 to i64
  %188 = call i32 @vchnl_pf_send_error_resp(%struct.i40iw_sc_dev* %183, i64 %184, %struct.i40iw_virtchnl_op_buf* %185, i64 %187)
  %189 = load i32, i32* @I40IW_SUCCESS, align 4
  store i32 %189, i32* %5, align 4
  br label %331

190:                                              ; preds = %136
  %191 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %192 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %191, i32 0, i32 6
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %10, align 8
  %195 = load i64, i64* %9, align 8
  %196 = call i32 @memcpy(i32* %193, %struct.i40iw_virtchnl_op_buf* %194, i64 %195)
  %197 = load i32, i32* @pf_cqp_get_hmc_fcn_callback, align 4
  %198 = getelementptr inbounds %struct.i40iw_hmc_fcn_info, %struct.i40iw_hmc_fcn_info* %12, i32 0, i32 4
  store i32 %197, i32* %198, align 8
  %199 = load i64, i64* %7, align 8
  %200 = getelementptr inbounds %struct.i40iw_hmc_fcn_info, %struct.i40iw_hmc_fcn_info* %12, i32 0, i32 3
  store i64 %199, i64* %200, align 8
  %201 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %202 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.i40iw_hmc_fcn_info, %struct.i40iw_hmc_fcn_info* %12, i32 0, i32 0
  store i64 %203, i64* %204, align 8
  %205 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %206 = getelementptr inbounds %struct.i40iw_hmc_fcn_info, %struct.i40iw_hmc_fcn_info* %12, i32 0, i32 2
  store %struct.i40iw_vfdev* %205, %struct.i40iw_vfdev** %206, align 8
  %207 = getelementptr inbounds %struct.i40iw_hmc_fcn_info, %struct.i40iw_hmc_fcn_info* %12, i32 0, i32 1
  store i32 0, i32* %207, align 8
  %208 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %209 = call i32 @i40iw_cqp_manage_hmc_fcn_cmd(%struct.i40iw_sc_dev* %208, %struct.i40iw_hmc_fcn_info* %12)
  store i32 %209, i32* %18, align 4
  %210 = load i32, i32* %18, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %190
  %213 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %214 = load i32, i32* @I40IW_DEBUG_VIRT, align 4
  %215 = load i64, i64* %7, align 8
  %216 = call i32 (%struct.i40iw_sc_dev*, i32, i8*, i64, ...) @i40iw_debug(%struct.i40iw_sc_dev* %213, i32 %214, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %215)
  br label %217

217:                                              ; preds = %212, %190
  %218 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %219 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %220 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %219, i32 0, i32 5
  %221 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %222 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @i40iw_vf_init_pestat(%struct.i40iw_sc_dev* %218, %struct.i40iw_vsi_pestat* %220, i32 %223)
  %225 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %226 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %225, i32 0, i32 2
  store i32 1, i32* %226, align 4
  br label %250

227:                                              ; preds = %120, %117
  %228 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %229 = icmp ne %struct.i40iw_vfdev* %228, null
  br i1 %229, label %230, label %242

230:                                              ; preds = %227
  %231 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %232 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = add nsw i32 %233, -1
  store i32 %234, i32* %232, align 8
  %235 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %236 = load i64, i64* %7, align 8
  %237 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %10, align 8
  %238 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %239 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @vchnl_pf_send_get_hmc_fcn_resp(%struct.i40iw_sc_dev* %235, i64 %236, %struct.i40iw_virtchnl_op_buf* %237, i32 %240)
  br label %249

242:                                              ; preds = %227
  %243 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %244 = load i64, i64* %7, align 8
  %245 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %10, align 8
  %246 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  %247 = sext i32 %246 to i64
  %248 = call i32 @vchnl_pf_send_error_resp(%struct.i40iw_sc_dev* %243, i64 %244, %struct.i40iw_virtchnl_op_buf* %245, i64 %247)
  br label %249

249:                                              ; preds = %242, %230
  br label %250

250:                                              ; preds = %249, %217
  br label %329

251:                                              ; preds = %113
  %252 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %253 = icmp ne %struct.i40iw_vfdev* %252, null
  br i1 %253, label %256, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* @I40IW_ERR_BAD_PTR, align 4
  store i32 %255, i32* %5, align 4
  br label %331

256:                                              ; preds = %251
  %257 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %258 = getelementptr inbounds %struct.i40iw_virtchnl_work_info, %struct.i40iw_virtchnl_work_info* %16, i32 0, i32 1
  store %struct.i40iw_vfdev* %257, %struct.i40iw_vfdev** %258, align 8
  %259 = load i32, i32* @pf_add_hmc_obj_callback, align 4
  %260 = getelementptr inbounds %struct.i40iw_virtchnl_work_info, %struct.i40iw_virtchnl_work_info* %16, i32 0, i32 0
  store i32 %259, i32* %260, align 8
  %261 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %262 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %261, i32 0, i32 6
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %10, align 8
  %265 = load i64, i64* %9, align 8
  %266 = call i32 @memcpy(i32* %263, %struct.i40iw_virtchnl_op_buf* %264, i64 %265)
  %267 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %268 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %269 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = call i32 @i40iw_cqp_spawn_worker(%struct.i40iw_sc_dev* %267, %struct.i40iw_virtchnl_work_info* %16, i64 %270)
  br label %329

272:                                              ; preds = %113
  %273 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %274 = icmp ne %struct.i40iw_vfdev* %273, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %272
  %276 = load i32, i32* @I40IW_ERR_BAD_PTR, align 4
  store i32 %276, i32* %5, align 4
  br label %331

277:                                              ; preds = %272
  %278 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %279 = getelementptr inbounds %struct.i40iw_virtchnl_work_info, %struct.i40iw_virtchnl_work_info* %16, i32 0, i32 1
  store %struct.i40iw_vfdev* %278, %struct.i40iw_vfdev** %279, align 8
  %280 = load i32, i32* @pf_del_hmc_obj_callback, align 4
  %281 = getelementptr inbounds %struct.i40iw_virtchnl_work_info, %struct.i40iw_virtchnl_work_info* %16, i32 0, i32 0
  store i32 %280, i32* %281, align 8
  %282 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %283 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %282, i32 0, i32 6
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  %285 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %10, align 8
  %286 = load i64, i64* %9, align 8
  %287 = call i32 @memcpy(i32* %284, %struct.i40iw_virtchnl_op_buf* %285, i64 %286)
  %288 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %289 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %290 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = call i32 @i40iw_cqp_spawn_worker(%struct.i40iw_sc_dev* %288, %struct.i40iw_virtchnl_work_info* %16, i64 %291)
  br label %329

293:                                              ; preds = %113
  %294 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %295 = icmp ne %struct.i40iw_vfdev* %294, null
  br i1 %295, label %298, label %296

296:                                              ; preds = %293
  %297 = load i32, i32* @I40IW_ERR_BAD_PTR, align 4
  store i32 %297, i32* %5, align 4
  br label %331

298:                                              ; preds = %293
  %299 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %300 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %299, i32 0, i32 5
  store %struct.i40iw_vsi_pestat* %300, %struct.i40iw_vsi_pestat** %17, align 8
  %301 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %17, align 8
  %302 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %17, align 8
  %303 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %302, i32 0, i32 0
  %304 = call i32 @i40iw_hw_stats_read_all(%struct.i40iw_vsi_pestat* %301, i32* %303)
  %305 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %306 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = add nsw i32 %307, -1
  store i32 %308, i32* %306, align 8
  %309 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %310 = load i64, i64* %7, align 8
  %311 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %10, align 8
  %312 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %17, align 8
  %313 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %312, i32 0, i32 0
  %314 = call i32 @vchnl_pf_send_get_pe_stats_resp(%struct.i40iw_sc_dev* %309, i64 %310, %struct.i40iw_virtchnl_op_buf* %311, i32* %313)
  br label %329

315:                                              ; preds = %113
  %316 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %317 = load i32, i32* @I40IW_DEBUG_VIRT, align 4
  %318 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %10, align 8
  %319 = getelementptr inbounds %struct.i40iw_virtchnl_op_buf, %struct.i40iw_virtchnl_op_buf* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = sext i32 %320 to i64
  %322 = call i32 (%struct.i40iw_sc_dev*, i32, i8*, i64, ...) @i40iw_debug(%struct.i40iw_sc_dev* %316, i32 %317, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %321)
  %323 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %324 = load i64, i64* %7, align 8
  %325 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %10, align 8
  %326 = load i32, i32* @I40IW_ERR_NOT_IMPLEMENTED, align 4
  %327 = sext i32 %326 to i64
  %328 = call i32 @vchnl_pf_send_error_resp(%struct.i40iw_sc_dev* %323, i64 %324, %struct.i40iw_virtchnl_op_buf* %325, i64 %327)
  br label %329

329:                                              ; preds = %315, %298, %277, %256, %250
  %330 = load i32, i32* @I40IW_SUCCESS, align 4
  store i32 %330, i32* %5, align 4
  br label %331

331:                                              ; preds = %329, %296, %275, %254, %178, %106, %45, %37, %30
  %332 = load i32, i32* %5, align 4
  ret i32 %332
}

declare dso_local i32 @vchnl_pf_send_get_ver_resp(%struct.i40iw_sc_dev*, i64, %struct.i40iw_virtchnl_op_buf*) #1

declare dso_local i32 @i40iw_debug(%struct.i40iw_sc_dev*, i32, i8*, i64, ...) #1

declare dso_local i32 @i40iw_allocate_virt_mem(i32, %struct.i40iw_virt_mem*, i32) #1

declare dso_local i32 @vchnl_pf_send_error_resp(%struct.i40iw_sc_dev*, i64, %struct.i40iw_virtchnl_op_buf*, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.i40iw_virtchnl_op_buf*, i64) #1

declare dso_local i32 @i40iw_cqp_manage_hmc_fcn_cmd(%struct.i40iw_sc_dev*, %struct.i40iw_hmc_fcn_info*) #1

declare dso_local i32 @i40iw_vf_init_pestat(%struct.i40iw_sc_dev*, %struct.i40iw_vsi_pestat*, i32) #1

declare dso_local i32 @vchnl_pf_send_get_hmc_fcn_resp(%struct.i40iw_sc_dev*, i64, %struct.i40iw_virtchnl_op_buf*, i32) #1

declare dso_local i32 @i40iw_cqp_spawn_worker(%struct.i40iw_sc_dev*, %struct.i40iw_virtchnl_work_info*, i64) #1

declare dso_local i32 @i40iw_hw_stats_read_all(%struct.i40iw_vsi_pestat*, i32*) #1

declare dso_local i32 @vchnl_pf_send_get_pe_stats_resp(%struct.i40iw_sc_dev*, i64, %struct.i40iw_virtchnl_op_buf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
