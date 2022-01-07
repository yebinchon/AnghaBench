; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_qp_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_qp_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i64, i64, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ocrdma_modify_qp = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32 }
%struct.ocrdma_dev = type { %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32* }

@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_PKEY_INDEX_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_PKEY_VALID = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_QKEY_VALID = common dso_local global i32 0, align 4
@IB_QP_AV = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@IB_QPT_UD = common dso_local global i64 0, align 8
@IB_QP_EN_SQD_ASYNC_NOTIFY = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_FLAGS_SQD_ASYNC = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_DST_QPN_VALID = common dso_local global i32 0, align 4
@IB_QP_DEST_QPN = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_DEST_QPN_MASK = common dso_local global i32 0, align 4
@IB_QP_PATH_MTU = common dso_local global i32 0, align 4
@IB_MTU_512 = common dso_local global i64 0, align 8
@IB_MTU_4096 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"ocrdma%d: IB MTU %d is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_PATH_MTU_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_PATH_MTU_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_PMTU_VALID = common dso_local global i32 0, align 4
@IB_QP_TIMEOUT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_ACK_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_ACK_TO_VALID = common dso_local global i32 0, align 4
@IB_QP_RETRY_CNT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RETRY_CNT_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RETRY_CNT_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_RETRY_CNT_VALID = common dso_local global i32 0, align 4
@IB_QP_MIN_RNR_TIMER = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RNR_NAK_TIMER_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RNR_NAK_TIMER_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_RNT_VALID = common dso_local global i32 0, align 4
@IB_QP_RNR_RETRY = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RNR_RETRY_CNT_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RNR_RETRY_CNT_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_RRC_VALID = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_SQPSN_VALID = common dso_local global i32 0, align 4
@IB_QP_RQ_PSN = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_RQPSN_VALID = common dso_local global i32 0, align 4
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_MAX_ORD_VALID = common dso_local global i32 0, align 4
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_MAX_IRD_VALID = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_MAX_ORD_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_MAX_IRD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp*, %struct.ocrdma_modify_qp*, %struct.ib_qp_attr*, i32)* @ocrdma_set_qp_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_set_qp_params(%struct.ocrdma_qp* %0, %struct.ocrdma_modify_qp* %1, %struct.ib_qp_attr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocrdma_qp*, align 8
  %7 = alloca %struct.ocrdma_modify_qp*, align 8
  %8 = alloca %struct.ib_qp_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %6, align 8
  store %struct.ocrdma_modify_qp* %1, %struct.ocrdma_modify_qp** %7, align 8
  store %struct.ib_qp_attr* %2, %struct.ib_qp_attr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %13 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %15)
  store %struct.ocrdma_dev* %16, %struct.ocrdma_dev** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %4
  %22 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %23 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @OCRDMA_QP_PARAMS_PKEY_INDEX_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %28 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @OCRDMA_QP_PARA_PKEY_VALID, align 4
  %33 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %34 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %21, %4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @IB_QP_QKEY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %44 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %43, i32 0, i32 12
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %47 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %49 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %52 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 9
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @OCRDMA_QP_PARA_QKEY_VALID, align 4
  %55 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %56 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %42, %37
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @IB_QP_AV, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %66 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %67 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @ocrdma_set_av_params(%struct.ocrdma_qp* %65, %struct.ocrdma_modify_qp* %66, %struct.ib_qp_attr* %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %435

74:                                               ; preds = %64
  br label %139

75:                                               ; preds = %59
  %76 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %77 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IB_QPT_GSI, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %83 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IB_QPT_UD, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %138

87:                                               ; preds = %81, %75
  %88 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %11, align 8
  %89 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %11, align 8
  %95 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 8
  %101 = or i32 %93, %100
  %102 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %11, align 8
  %103 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 16
  %109 = or i32 %101, %108
  %110 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %11, align 8
  %111 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 24
  %117 = or i32 %109, %116
  %118 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %119 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %11, align 8
  %122 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %11, align 8
  %128 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 5
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 8
  %134 = or i32 %126, %133
  %135 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %136 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  store i32 %134, i32* %137, align 4
  br label %138

138:                                              ; preds = %87, %81
  br label %139

139:                                              ; preds = %138, %74
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @IB_QP_EN_SQD_ASYNC_NOTIFY, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %139
  %145 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %146 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %145, i32 0, i32 11
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %144
  %150 = load i32, i32* @OCRDMA_QP_PARAMS_FLAGS_SQD_ASYNC, align 4
  %151 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %152 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %150
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* @OCRDMA_QP_PARA_DST_QPN_VALID, align 4
  %157 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %158 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %149, %144, %139
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @IB_QP_DEST_QPN, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %182

166:                                              ; preds = %161
  %167 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %168 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @OCRDMA_QP_PARAMS_DEST_QPN_MASK, align 4
  %171 = and i32 %169, %170
  %172 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %173 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %171
  store i32 %176, i32* %174, align 4
  %177 = load i32, i32* @OCRDMA_QP_PARA_DST_QPN_VALID, align 4
  %178 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %179 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %166, %161
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %229

187:                                              ; preds = %182
  %188 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %189 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @IB_MTU_512, align 8
  %192 = icmp slt i64 %190, %191
  br i1 %192, label %199, label %193

193:                                              ; preds = %187
  %194 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %195 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @IB_MTU_4096, align 8
  %198 = icmp sgt i64 %196, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %193, %187
  %200 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %11, align 8
  %201 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %204 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @ib_mtu_enum_to_int(i64 %205)
  %207 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %202, i32 %206)
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %10, align 4
  br label %433

210:                                              ; preds = %193
  %211 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %212 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @ib_mtu_enum_to_int(i64 %213)
  %215 = load i32, i32* @OCRDMA_QP_PARAMS_PATH_MTU_SHIFT, align 4
  %216 = shl i32 %214, %215
  %217 = load i32, i32* @OCRDMA_QP_PARAMS_PATH_MTU_MASK, align 4
  %218 = and i32 %216, %217
  %219 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %220 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %218
  store i32 %223, i32* %221, align 4
  %224 = load i32, i32* @OCRDMA_QP_PARA_PMTU_VALID, align 4
  %225 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %226 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %210, %182
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* @IB_QP_TIMEOUT, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %250

234:                                              ; preds = %229
  %235 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %236 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @OCRDMA_QP_PARAMS_ACK_TIMEOUT_SHIFT, align 4
  %239 = shl i32 %237, %238
  %240 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %241 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %239
  store i32 %244, i32* %242, align 4
  %245 = load i32, i32* @OCRDMA_QP_PARA_ACK_TO_VALID, align 4
  %246 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %247 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %234, %229
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* @IB_QP_RETRY_CNT, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %273

255:                                              ; preds = %250
  %256 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %257 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @OCRDMA_QP_PARAMS_RETRY_CNT_SHIFT, align 4
  %260 = shl i32 %258, %259
  %261 = load i32, i32* @OCRDMA_QP_PARAMS_RETRY_CNT_MASK, align 4
  %262 = and i32 %260, %261
  %263 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %264 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %262
  store i32 %267, i32* %265, align 4
  %268 = load i32, i32* @OCRDMA_QP_PARA_RETRY_CNT_VALID, align 4
  %269 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %270 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %255, %250
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %296

278:                                              ; preds = %273
  %279 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %280 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @OCRDMA_QP_PARAMS_RNR_NAK_TIMER_SHIFT, align 4
  %283 = shl i32 %281, %282
  %284 = load i32, i32* @OCRDMA_QP_PARAMS_RNR_NAK_TIMER_MASK, align 4
  %285 = and i32 %283, %284
  %286 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %287 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %285
  store i32 %290, i32* %288, align 4
  %291 = load i32, i32* @OCRDMA_QP_PARA_RNT_VALID, align 4
  %292 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %293 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 4
  br label %296

296:                                              ; preds = %278, %273
  %297 = load i32, i32* %9, align 4
  %298 = load i32, i32* @IB_QP_RNR_RETRY, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %319

301:                                              ; preds = %296
  %302 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %303 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @OCRDMA_QP_PARAMS_RNR_RETRY_CNT_SHIFT, align 4
  %306 = shl i32 %304, %305
  %307 = load i32, i32* @OCRDMA_QP_PARAMS_RNR_RETRY_CNT_MASK, align 4
  %308 = and i32 %306, %307
  %309 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %310 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = or i32 %312, %308
  store i32 %313, i32* %311, align 4
  %314 = load i32, i32* @OCRDMA_QP_PARA_RRC_VALID, align 4
  %315 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %316 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = or i32 %317, %314
  store i32 %318, i32* %316, align 4
  br label %319

319:                                              ; preds = %301, %296
  %320 = load i32, i32* %9, align 4
  %321 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %339

324:                                              ; preds = %319
  %325 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %326 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %325, i32 0, i32 7
  %327 = load i32, i32* %326, align 8
  %328 = and i32 %327, 16777215
  %329 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %330 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 4
  %333 = or i32 %332, %328
  store i32 %333, i32* %331, align 4
  %334 = load i32, i32* @OCRDMA_QP_PARA_SQPSN_VALID, align 4
  %335 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %336 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = or i32 %337, %334
  store i32 %338, i32* %336, align 4
  br label %339

339:                                              ; preds = %324, %319
  %340 = load i32, i32* %9, align 4
  %341 = load i32, i32* @IB_QP_RQ_PSN, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %359

344:                                              ; preds = %339
  %345 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %346 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %345, i32 0, i32 8
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %347, 16777215
  %349 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %350 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 6
  %352 = load i32, i32* %351, align 4
  %353 = or i32 %352, %348
  store i32 %353, i32* %351, align 4
  %354 = load i32, i32* @OCRDMA_QP_PARA_RQPSN_VALID, align 4
  %355 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %356 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = or i32 %357, %354
  store i32 %358, i32* %356, align 4
  br label %359

359:                                              ; preds = %344, %339
  %360 = load i32, i32* %9, align 4
  %361 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %387

364:                                              ; preds = %359
  %365 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %366 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %365, i32 0, i32 9
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %11, align 8
  %369 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = icmp sgt i64 %367, %371
  br i1 %372, label %373, label %376

373:                                              ; preds = %364
  %374 = load i32, i32* @EINVAL, align 4
  %375 = sub nsw i32 0, %374
  store i32 %375, i32* %10, align 4
  br label %433

376:                                              ; preds = %364
  %377 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %378 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %377, i32 0, i32 9
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %381 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %380, i32 0, i32 1
  store i64 %379, i64* %381, align 8
  %382 = load i32, i32* @OCRDMA_QP_PARA_MAX_ORD_VALID, align 4
  %383 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %384 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = or i32 %385, %382
  store i32 %386, i32* %384, align 4
  br label %387

387:                                              ; preds = %376, %359
  %388 = load i32, i32* %9, align 4
  %389 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %415

392:                                              ; preds = %387
  %393 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %394 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %393, i32 0, i32 10
  %395 = load i64, i64* %394, align 8
  %396 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %11, align 8
  %397 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = icmp sgt i64 %395, %399
  br i1 %400, label %401, label %404

401:                                              ; preds = %392
  %402 = load i32, i32* @EINVAL, align 4
  %403 = sub nsw i32 0, %402
  store i32 %403, i32* %10, align 4
  br label %433

404:                                              ; preds = %392
  %405 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %406 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %405, i32 0, i32 10
  %407 = load i64, i64* %406, align 8
  %408 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %409 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %408, i32 0, i32 2
  store i64 %407, i64* %409, align 8
  %410 = load i32, i32* @OCRDMA_QP_PARA_MAX_IRD_VALID, align 4
  %411 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %412 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = or i32 %413, %410
  store i32 %414, i32* %412, align 4
  br label %415

415:                                              ; preds = %404, %387
  %416 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %417 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = load i32, i32* @OCRDMA_QP_PARAMS_MAX_ORD_SHIFT, align 4
  %420 = zext i32 %419 to i64
  %421 = shl i64 %418, %420
  %422 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %423 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %422, i32 0, i32 2
  %424 = load i64, i64* %423, align 8
  %425 = load i32, i32* @OCRDMA_QP_PARAMS_MAX_IRD_MASK, align 4
  %426 = sext i32 %425 to i64
  %427 = and i64 %424, %426
  %428 = or i64 %421, %427
  %429 = trunc i64 %428 to i32
  %430 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %431 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %431, i32 0, i32 7
  store i32 %429, i32* %432, align 4
  br label %433

433:                                              ; preds = %415, %401, %373, %199
  %434 = load i32, i32* %10, align 4
  store i32 %434, i32* %5, align 4
  br label %435

435:                                              ; preds = %433, %72
  %436 = load i32, i32* %5, align 4
  ret i32 %436
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i32 @ocrdma_set_av_params(%struct.ocrdma_qp*, %struct.ocrdma_modify_qp*, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @ib_mtu_enum_to_int(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
