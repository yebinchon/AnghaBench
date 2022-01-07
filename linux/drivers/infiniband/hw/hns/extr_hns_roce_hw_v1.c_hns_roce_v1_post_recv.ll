; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, i32 }
%struct.ib_recv_wr = type { i32, i32, i64, %struct.ib_recv_wr* }
%struct.hns_roce_rq_wqe_ctrl = type { i64 }
%struct.hns_roce_wqe_data_seg = type { i32 }
%struct.hns_roce_qp = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.hns_roce_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_rq_db = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rq:num_sge=%d > qp->sq.max_gs=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RQ_WQE_CTRL_RWQE_BYTE_12_RWQE_SGE_NUM_M = common dso_local global i32 0, align 4
@RQ_WQE_CTRL_RWQE_BYTE_12_RWQE_SGE_NUM_S = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@ROCEE_QP1C_CFG3_0_REG = common dso_local global i64 0, align 8
@QP1C_CFGN_OFFSET = common dso_local global i32 0, align 4
@ROCEE_QP1C_CFG3_0_ROCEE_QP1C_RQ_HEAD_M = common dso_local global i32 0, align 4
@ROCEE_QP1C_CFG3_0_ROCEE_QP1C_RQ_HEAD_S = common dso_local global i32 0, align 4
@RQ_DOORBELL_U32_4_RQ_HEAD_M = common dso_local global i32 0, align 4
@RQ_DOORBELL_U32_4_RQ_HEAD_S = common dso_local global i32 0, align 4
@RQ_DOORBELL_U32_8_QPN_M = common dso_local global i32 0, align 4
@RQ_DOORBELL_U32_8_QPN_S = common dso_local global i32 0, align 4
@RQ_DOORBELL_U32_8_CMD_M = common dso_local global i32 0, align 4
@RQ_DOORBELL_U32_8_CMD_S = common dso_local global i32 0, align 4
@RQ_DOORBELL_U32_8_HW_SYNC_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_recv_wr*, %struct.ib_recv_wr**)* @hns_roce_v1_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v1_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.hns_roce_rq_wqe_ctrl*, align 8
  %14 = alloca %struct.hns_roce_wqe_data_seg*, align 8
  %15 = alloca %struct.hns_roce_qp*, align 8
  %16 = alloca %struct.hns_roce_dev*, align 8
  %17 = alloca %struct.device*, align 8
  %18 = alloca %struct.hns_roce_rq_db, align 8
  %19 = alloca [2 x i64], align 16
  %20 = alloca i64, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %12, align 8
  store %struct.hns_roce_rq_wqe_ctrl* null, %struct.hns_roce_rq_wqe_ctrl** %13, align 8
  store %struct.hns_roce_wqe_data_seg* null, %struct.hns_roce_wqe_data_seg** %14, align 8
  %21 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %22 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %21)
  store %struct.hns_roce_qp* %22, %struct.hns_roce_qp** %15, align 8
  %23 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %24 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.hns_roce_dev* @to_hr_dev(i32 %25)
  store %struct.hns_roce_dev* %26, %struct.hns_roce_dev** %16, align 8
  %27 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %16, align 8
  %28 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.device* %30, %struct.device** %17, align 8
  %31 = bitcast [2 x i64]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 16, i1 false)
  %32 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %33 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %38 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %42 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %40, %45
  store i32 %46, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %147, %3
  %48 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %49 = icmp ne %struct.ib_recv_wr* %48, null
  br i1 %49, label %50, label %153

50:                                               ; preds = %47
  %51 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %52 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %51, i32 0, i32 2
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %55 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @hns_roce_wq_overflow(%struct.TYPE_6__* %52, i32 %53, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  %63 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %64 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %63, %struct.ib_recv_wr** %64, align 8
  br label %154

65:                                               ; preds = %50
  %66 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %67 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %70 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %68, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %65
  %78 = load %struct.device*, %struct.device** %17, align 8
  %79 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %80 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %83 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %7, align 4
  %89 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %90 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %89, %struct.ib_recv_wr** %90, align 8
  br label %154

91:                                               ; preds = %65
  %92 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call %struct.hns_roce_rq_wqe_ctrl* @get_recv_wqe(%struct.hns_roce_qp* %92, i32 %93)
  store %struct.hns_roce_rq_wqe_ctrl* %94, %struct.hns_roce_rq_wqe_ctrl** %13, align 8
  %95 = load %struct.hns_roce_rq_wqe_ctrl*, %struct.hns_roce_rq_wqe_ctrl** %13, align 8
  %96 = getelementptr inbounds %struct.hns_roce_rq_wqe_ctrl, %struct.hns_roce_rq_wqe_ctrl* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @RQ_WQE_CTRL_RWQE_BYTE_12_RWQE_SGE_NUM_M, align 4
  %99 = load i32, i32* @RQ_WQE_CTRL_RWQE_BYTE_12_RWQE_SGE_NUM_S, align 4
  %100 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %101 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @roce_set_field(i64 %97, i32 %98, i32 %99, i32 %102)
  %104 = load %struct.hns_roce_rq_wqe_ctrl*, %struct.hns_roce_rq_wqe_ctrl** %13, align 8
  %105 = getelementptr inbounds %struct.hns_roce_rq_wqe_ctrl, %struct.hns_roce_rq_wqe_ctrl* %104, i64 1
  %106 = bitcast %struct.hns_roce_rq_wqe_ctrl* %105 to %struct.hns_roce_wqe_data_seg*
  store %struct.hns_roce_wqe_data_seg* %106, %struct.hns_roce_wqe_data_seg** %14, align 8
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %125, %91
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %110 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %107
  %114 = load %struct.hns_roce_wqe_data_seg*, %struct.hns_roce_wqe_data_seg** %14, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.hns_roce_wqe_data_seg, %struct.hns_roce_wqe_data_seg* %114, i64 %116
  %118 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %119 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = call i32 @set_data_seg(%struct.hns_roce_wqe_data_seg* %117, i64 %123)
  br label %125

125:                                              ; preds = %113
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %107

128:                                              ; preds = %107
  %129 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %130 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %133 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %131, i32* %138, align 4
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  %141 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %142 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, 1
  %146 = and i32 %140, %145
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %128
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  %150 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %151 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %150, i32 0, i32 3
  %152 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %151, align 8
  store %struct.ib_recv_wr* %152, %struct.ib_recv_wr** %5, align 8
  br label %47

153:                                              ; preds = %47
  br label %154

154:                                              ; preds = %153, %77, %60
  %155 = load i32, i32* %8, align 4
  %156 = call i64 @likely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %253

158:                                              ; preds = %154
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %161 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, %159
  store i32 %164, i32* %162, align 8
  %165 = call i32 (...) @wmb()
  %166 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %167 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @IB_QPT_GSI, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %211

171:                                              ; preds = %158
  %172 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %173 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call %struct.hns_roce_dev* @to_hr_dev(i32 %174)
  %176 = load i64, i64* @ROCEE_QP1C_CFG3_0_REG, align 8
  %177 = load i32, i32* @QP1C_CFGN_OFFSET, align 4
  %178 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %179 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = mul nsw i32 %177, %180
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %176, %182
  %184 = call i32 @roce_read(%struct.hns_roce_dev* %175, i64 %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = call i64 @cpu_to_le32(i32 %185)
  store i64 %186, i64* %20, align 8
  %187 = load i64, i64* %20, align 8
  %188 = load i32, i32* @ROCEE_QP1C_CFG3_0_ROCEE_QP1C_RQ_HEAD_M, align 4
  %189 = load i32, i32* @ROCEE_QP1C_CFG3_0_ROCEE_QP1C_RQ_HEAD_S, align 4
  %190 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %191 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @roce_set_field(i64 %187, i32 %188, i32 %189, i32 %193)
  %195 = load i64, i64* %20, align 8
  %196 = call i32 @le32_to_cpu(i64 %195)
  store i32 %196, i32* %11, align 4
  %197 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %198 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call %struct.hns_roce_dev* @to_hr_dev(i32 %199)
  %201 = load i64, i64* @ROCEE_QP1C_CFG3_0_REG, align 8
  %202 = load i32, i32* @QP1C_CFGN_OFFSET, align 4
  %203 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %204 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = mul nsw i32 %202, %205
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %201, %207
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @roce_write(%struct.hns_roce_dev* %200, i64 %208, i32 %209)
  br label %252

211:                                              ; preds = %158
  %212 = getelementptr inbounds %struct.hns_roce_rq_db, %struct.hns_roce_rq_db* %18, i32 0, i32 1
  store i64 0, i64* %212, align 8
  %213 = getelementptr inbounds %struct.hns_roce_rq_db, %struct.hns_roce_rq_db* %18, i32 0, i32 0
  store i64 0, i64* %213, align 8
  %214 = getelementptr inbounds %struct.hns_roce_rq_db, %struct.hns_roce_rq_db* %18, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* @RQ_DOORBELL_U32_4_RQ_HEAD_M, align 4
  %217 = load i32, i32* @RQ_DOORBELL_U32_4_RQ_HEAD_S, align 4
  %218 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %219 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @roce_set_field(i64 %215, i32 %216, i32 %217, i32 %221)
  %223 = getelementptr inbounds %struct.hns_roce_rq_db, %struct.hns_roce_rq_db* %18, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* @RQ_DOORBELL_U32_8_QPN_M, align 4
  %226 = load i32, i32* @RQ_DOORBELL_U32_8_QPN_S, align 4
  %227 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %228 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @roce_set_field(i64 %224, i32 %225, i32 %226, i32 %229)
  %231 = getelementptr inbounds %struct.hns_roce_rq_db, %struct.hns_roce_rq_db* %18, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* @RQ_DOORBELL_U32_8_CMD_M, align 4
  %234 = load i32, i32* @RQ_DOORBELL_U32_8_CMD_S, align 4
  %235 = call i32 @roce_set_field(i64 %232, i32 %233, i32 %234, i32 1)
  %236 = getelementptr inbounds %struct.hns_roce_rq_db, %struct.hns_roce_rq_db* %18, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* @RQ_DOORBELL_U32_8_HW_SYNC_S, align 4
  %239 = call i32 @roce_set_bit(i64 %237, i32 %238, i32 1)
  %240 = getelementptr inbounds %struct.hns_roce_rq_db, %struct.hns_roce_rq_db* %18, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  store i64 %241, i64* %242, align 16
  %243 = getelementptr inbounds %struct.hns_roce_rq_db, %struct.hns_roce_rq_db* %18, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 1
  store i64 %244, i64* %245, align 8
  %246 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  %247 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %248 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @hns_roce_write64_k(i64* %246, i32 %250)
  br label %252

252:                                              ; preds = %211, %171
  br label %253

253:                                              ; preds = %252, %154
  %254 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %15, align 8
  %255 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 3
  %257 = load i64, i64* %12, align 8
  %258 = call i32 @spin_unlock_irqrestore(i32* %256, i64 %257)
  %259 = load i32, i32* %7, align 4
  ret i32 %259
}

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @hns_roce_wq_overflow(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local %struct.hns_roce_rq_wqe_ctrl* @get_recv_wqe(%struct.hns_roce_qp*, i32) #1

declare dso_local i32 @roce_set_field(i64, i32, i32, i32) #1

declare dso_local i32 @set_data_seg(%struct.hns_roce_wqe_data_seg*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @roce_read(%struct.hns_roce_dev*, i64) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @roce_write(%struct.hns_roce_dev*, i64, i32) #1

declare dso_local i32 @roce_set_bit(i64, i32, i32) #1

declare dso_local i32 @hns_roce_write64_k(i64*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
