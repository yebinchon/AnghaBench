; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_query_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ocrdma_qp_params, i64, i64, i64, %struct.TYPE_13__, i64, i64, %struct.TYPE_12__, i32, i32, i32 }
%struct.ocrdma_qp_params = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i64, i64 }
%struct.ib_qp_init_attr = type { %struct.TYPE_12__ }
%struct.ocrdma_qp = type { i64, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.ocrdma_dev = type { i32 }

@IB_QPT_UD = common dso_local global i64 0, align 8
@OCRDMA_QP_PARAMS_PATH_MTU_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_PATH_MTU_SHIFT = common dso_local global i32 0, align 4
@IB_MIG_MIGRATED = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RQ_PSN_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_SQ_PSN_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_DEST_QPN_MASK = common dso_local global i32 0, align 4
@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_FLOW_LABEL_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_HOP_LMT_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_HOP_LMT_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_TCLASS_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_TCLASS_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_SL_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_SL_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_ACK_TIMEOUT_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_ACK_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RNR_RETRY_CNT_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RNR_RETRY_CNT_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RETRY_CNT_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_RETRY_CNT_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_STATE_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_STATE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QPS_SQ_DRAINING = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_MAX_ORD_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_MAX_IRD_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_FLAGS_SQD_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocrdma_qp_params, align 8
  %12 = alloca %struct.ocrdma_qp*, align 8
  %13 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %8, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %15 = call %struct.ocrdma_qp* @get_ocrdma_qp(%struct.ib_qp* %14)
  store %struct.ocrdma_qp* %15, %struct.ocrdma_qp** %12, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %17 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %18)
  store %struct.ocrdma_dev* %19, %struct.ocrdma_dev** %13, align 8
  %20 = call i32 @memset(%struct.ocrdma_qp_params* %11, i32 0, i32 48)
  %21 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %13, align 8
  %22 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %13, align 8
  %25 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %12, align 8
  %26 = call i32 @ocrdma_mbx_query_qp(%struct.ocrdma_dev* %24, %struct.ocrdma_qp* %25, %struct.ocrdma_qp_params* %11)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %13, align 8
  %28 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %260

33:                                               ; preds = %4
  %34 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %12, align 8
  %35 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IB_QPT_UD, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %43 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %42, i32 0, i32 24
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %39, %33
  %45 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @OCRDMA_QP_PARAMS_PATH_MTU_MASK, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @ocrdma_mtu_int_to_enum(i32 %48)
  %50 = load i32, i32* @OCRDMA_QP_PARAMS_PATH_MTU_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %53 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @IB_MIG_MIGRATED, align 4
  %55 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %56 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %55, i32 0, i32 23
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @OCRDMA_QP_PARAMS_RQ_PSN_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %62 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @OCRDMA_QP_PARAMS_SQ_PSN_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %68 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @OCRDMA_QP_PARAMS_DEST_QPN_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %74 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %12, align 8
  %76 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ocrdma_to_ib_qp_acc_flags(i32 %77)
  %79 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %80 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %79, i32 0, i32 22
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %12, align 8
  %82 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 1
  %86 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %87 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %86, i32 0, i32 21
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 4
  store i64 %85, i64* %88, align 8
  %89 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %12, align 8
  %90 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, 1
  %94 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %95 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %94, i32 0, i32 21
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 3
  store i64 %93, i64* %96, align 8
  %97 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %12, align 8
  %98 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %102 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %101, i32 0, i32 21
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 8
  %104 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %12, align 8
  %105 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %109 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %108, i32 0, i32 21
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %12, align 8
  %112 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %115 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %114, i32 0, i32 21
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %118 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %117, i32 0, i32 0
  %119 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %120 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %119, i32 0, i32 21
  %121 = bitcast %struct.TYPE_12__* %118 to i8*
  %122 = bitcast %struct.TYPE_12__* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 %122, i64 32, i1 false)
  %123 = load i32, i32* @RDMA_AH_ATTR_TYPE_ROCE, align 4
  %124 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %125 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %124, i32 0, i32 18
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %128 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %127, i32 0, i32 18
  %129 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @OCRDMA_QP_PARAMS_FLOW_LABEL_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %12, align 8
  %134 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @OCRDMA_QP_PARAMS_HOP_LMT_MASK, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* @OCRDMA_QP_PARAMS_HOP_LMT_SHIFT, align 4
  %141 = ashr i32 %139, %140
  %142 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @OCRDMA_QP_PARAMS_TCLASS_MASK, align 4
  %145 = and i32 %143, %144
  %146 = load i32, i32* @OCRDMA_QP_PARAMS_TCLASS_SHIFT, align 4
  %147 = ashr i32 %145, %146
  %148 = call i32 @rdma_ah_set_grh(%struct.TYPE_13__* %128, i32* null, i32 %132, i32 %135, i32 %141, i32 %147)
  %149 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %150 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %149, i32 0, i32 18
  %151 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 7
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = call i32 @rdma_ah_set_dgid_raw(%struct.TYPE_13__* %150, i32* %153)
  %155 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %156 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %155, i32 0, i32 18
  %157 = call i32 @rdma_ah_set_port_num(%struct.TYPE_13__* %156, i32 1)
  %158 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %159 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %158, i32 0, i32 18
  %160 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @OCRDMA_QP_PARAMS_SL_MASK, align 4
  %163 = and i32 %161, %162
  %164 = load i32, i32* @OCRDMA_QP_PARAMS_SL_SHIFT, align 4
  %165 = ashr i32 %163, %164
  %166 = call i32 @rdma_ah_set_sl(%struct.TYPE_13__* %159, i32 %165)
  %167 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @OCRDMA_QP_PARAMS_ACK_TIMEOUT_MASK, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* @OCRDMA_QP_PARAMS_ACK_TIMEOUT_SHIFT, align 4
  %172 = ashr i32 %170, %171
  %173 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %174 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 8
  %175 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @OCRDMA_QP_PARAMS_RNR_RETRY_CNT_MASK, align 4
  %178 = and i32 %176, %177
  %179 = load i32, i32* @OCRDMA_QP_PARAMS_RNR_RETRY_CNT_SHIFT, align 4
  %180 = ashr i32 %178, %179
  %181 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %182 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 4
  %183 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @OCRDMA_QP_PARAMS_RETRY_CNT_MASK, align 4
  %186 = and i32 %184, %185
  %187 = load i32, i32* @OCRDMA_QP_PARAMS_RETRY_CNT_SHIFT, align 4
  %188 = ashr i32 %186, %187
  %189 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %190 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 8
  %191 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %192 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %191, i32 0, i32 20
  store i64 0, i64* %192, align 8
  %193 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %194 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %193, i32 0, i32 19
  store i64 0, i64* %194, align 8
  %195 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %196 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %195, i32 0, i32 7
  store i32 1, i32* %196, align 4
  %197 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %198 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %197, i32 0, i32 18
  %199 = call i32 @rdma_ah_set_path_bits(%struct.TYPE_13__* %198, i32 0)
  %200 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %201 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %200, i32 0, i32 18
  %202 = call i32 @rdma_ah_set_static_rate(%struct.TYPE_13__* %201, i32 0)
  %203 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %204 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %203, i32 0, i32 17
  store i64 0, i64* %204, align 8
  %205 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %206 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %205, i32 0, i32 16
  store i64 0, i64* %206, align 8
  %207 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %208 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %207, i32 0, i32 15
  store i64 0, i64* %208, align 8
  %209 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %210 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %209, i32 0, i32 14
  %211 = call i32 @memset(%struct.ocrdma_qp_params* %210, i32 0, i32 48)
  %212 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @OCRDMA_QP_PARAMS_STATE_MASK, align 4
  %215 = and i32 %213, %214
  %216 = load i32, i32* @OCRDMA_QP_PARAMS_STATE_SHIFT, align 4
  %217 = ashr i32 %215, %216
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @get_ibqp_state(i32 %218)
  %220 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %221 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %220, i32 0, i32 12
  store i32 %219, i32* %221, align 8
  %222 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %223 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %222, i32 0, i32 12
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %226 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %225, i32 0, i32 13
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @OCRDMA_QPS_SQ_DRAINING, align 4
  %229 = icmp eq i32 %227, %228
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i32 1, i32 0
  %232 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %233 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %232, i32 0, i32 8
  store i32 %231, i32* %233, align 8
  %234 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 6
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @OCRDMA_QP_PARAMS_MAX_ORD_SHIFT, align 4
  %237 = ashr i32 %235, %236
  %238 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %239 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %238, i32 0, i32 9
  store i32 %237, i32* %239, align 4
  %240 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 6
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @OCRDMA_QP_PARAMS_MAX_IRD_MASK, align 4
  %243 = and i32 %241, %242
  %244 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %245 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %244, i32 0, i32 10
  store i32 %243, i32* %245, align 8
  %246 = getelementptr inbounds %struct.ocrdma_qp_params, %struct.ocrdma_qp_params* %11, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @OCRDMA_QP_PARAMS_FLAGS_SQD_ASYNC, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  %251 = zext i1 %250 to i64
  %252 = select i1 %250, i32 1, i32 0
  %253 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %254 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %253, i32 0, i32 11
  store i32 %252, i32* %254, align 4
  %255 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %12, align 8
  %256 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %257 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %256, i32 0, i32 12
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @ocrdma_qp_state_change(%struct.ocrdma_qp* %255, i32 %258, i32* null)
  br label %260

260:                                              ; preds = %44, %32
  %261 = load i32, i32* %9, align 4
  ret i32 %261
}

declare dso_local %struct.ocrdma_qp* @get_ocrdma_qp(%struct.ib_qp*) #1

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i32 @memset(%struct.ocrdma_qp_params*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocrdma_mbx_query_qp(%struct.ocrdma_dev*, %struct.ocrdma_qp*, %struct.ocrdma_qp_params*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ocrdma_mtu_int_to_enum(i32) #1

declare dso_local i32 @ocrdma_to_ib_qp_acc_flags(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rdma_ah_set_grh(%struct.TYPE_13__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rdma_ah_set_dgid_raw(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @rdma_ah_set_path_bits(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @rdma_ah_set_static_rate(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @get_ibqp_state(i32) #1

declare dso_local i32 @ocrdma_qp_state_change(%struct.ocrdma_qp*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
