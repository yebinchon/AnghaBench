; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { i32, %struct.ib_recv_wr*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.qedr_qp = type { i64, i64, i32, %struct.TYPE_12__, %struct.TYPE_8__*, %struct.qedr_dev* }
%struct.TYPE_12__ = type { i32, i64, i32, %struct.TYPE_11__, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.qedr_dev = type { i32 }
%struct.rdma_rq_sge = type { i32 }

@IB_QPT_GSI = common dso_local global i64 0, align 8
@QED_ROCE_QP_STATE_RESET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@QEDR_MAX_RQE_ELEMENTS_PER_RQE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Can't post WR  (%d < %d) || (%d > %d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_RQ_SGE_NUM_SGES = common dso_local global i32 0, align 4
@RDMA_RQ_SGE_L_KEY_LO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca %struct.ib_recv_wr**, align 8
  %8 = alloca %struct.qedr_qp*, align 8
  %9 = alloca %struct.qedr_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rdma_rq_sge*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.rdma_rq_sge*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %6, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %7, align 8
  %17 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %18 = call %struct.qedr_qp* @get_qedr_qp(%struct.ib_qp* %17)
  store %struct.qedr_qp* %18, %struct.qedr_qp** %8, align 8
  %19 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %20 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %19, i32 0, i32 5
  %21 = load %struct.qedr_dev*, %struct.qedr_dev** %20, align 8
  store %struct.qedr_dev* %21, %struct.qedr_dev** %9, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %23 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_QPT_GSI, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %29 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %30 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  %31 = call i32 @qedr_gsi_post_recv(%struct.ib_qp* %28, %struct.ib_recv_wr* %29, %struct.ib_recv_wr** %30)
  store i32 %31, i32* %4, align 4
  br label %233

32:                                               ; preds = %3
  %33 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %34 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %33, i32 0, i32 2
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %38 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @QED_ROCE_QP_STATE_RESET, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %44 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %43, i32 0, i32 2
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %48 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %47, %struct.ib_recv_wr** %48, align 8
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %233

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %223, %51
  %53 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %54 = icmp ne %struct.ib_recv_wr* %53, null
  br i1 %54, label %55, label %227

55:                                               ; preds = %52
  %56 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %57 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 6
  %59 = call i64 @qed_chain_get_elem_left_u32(i32* %58)
  %60 = load i64, i64* @QEDR_MAX_RQE_ELEMENTS_PER_RQE, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %71, label %62

62:                                               ; preds = %55
  %63 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %64 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %67 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %65, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %62, %55
  %72 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %73 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %74 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 6
  %76 = call i64 @qed_chain_get_elem_left_u32(i32* %75)
  %77 = load i64, i64* @QEDR_MAX_RQE_ELEMENTS_PER_RQE, align 8
  %78 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %79 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %82 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @DP_ERR(%struct.qedr_dev* %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %76, i64 %77, i32 %80, i32 %84)
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %11, align 4
  %88 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %89 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %88, %struct.ib_recv_wr** %89, align 8
  br label %227

90:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %142, %90
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %94 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %145

97:                                               ; preds = %91
  store i32 0, i32* %13, align 4
  %98 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %99 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 6
  %101 = call %struct.rdma_rq_sge* @qed_chain_produce(i32* %100)
  store %struct.rdma_rq_sge* %101, %struct.rdma_rq_sge** %14, align 8
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @RDMA_RQ_SGE_NUM_SGES, align 4
  %107 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %108 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @SET_FIELD(i32 %105, i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %104, %97
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @RDMA_RQ_SGE_L_KEY_LO, align 4
  %114 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %115 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %114, i32 0, i32 3
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @SET_FIELD(i32 %112, i32 %113, i32 %121)
  %123 = load %struct.rdma_rq_sge*, %struct.rdma_rq_sge** %14, align 8
  %124 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %125 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %124, i32 0, i32 3
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %133 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %132, i32 0, i32 3
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @RQ_SGE_SET(%struct.rdma_rq_sge* %123, i32 %131, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %111
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %91

145:                                              ; preds = %91
  %146 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %147 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %164, label %150

150:                                              ; preds = %145
  store i32 0, i32* %15, align 4
  %151 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %152 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 6
  %154 = call %struct.rdma_rq_sge* @qed_chain_produce(i32* %153)
  store %struct.rdma_rq_sge* %154, %struct.rdma_rq_sge** %16, align 8
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* @RDMA_RQ_SGE_L_KEY_LO, align 4
  %157 = call i32 @SET_FIELD(i32 %155, i32 %156, i32 0)
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* @RDMA_RQ_SGE_NUM_SGES, align 4
  %160 = call i32 @SET_FIELD(i32 %158, i32 %159, i32 1)
  %161 = load %struct.rdma_rq_sge*, %struct.rdma_rq_sge** %16, align 8
  %162 = load i32, i32* %15, align 4
  %163 = call i32 @RQ_SGE_SET(%struct.rdma_rq_sge* %161, i32 0, i32 0, i32 %162)
  store i32 1, i32* %12, align 4
  br label %164

164:                                              ; preds = %150, %145
  %165 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %166 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %169 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %168, i32 0, i32 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %172 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  store i32 %167, i32* %176, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %179 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %178, i32 0, i32 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %182 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  store i32 %177, i32* %186, align 4
  %187 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %188 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %187, i32 0, i32 3
  %189 = call i32 @qedr_inc_sw_prod(%struct.TYPE_12__* %188)
  %190 = call i32 (...) @smp_wmb()
  %191 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %192 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 4
  %198 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %199 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %204 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @writel(i32 %202, i32 %206)
  %208 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %209 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %208, i32 0, i32 0
  %210 = call i64 @rdma_protocol_iwarp(i32* %209, i32 1)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %164
  %213 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %214 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %219 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @writel(i32 %217, i32 %221)
  br label %223

223:                                              ; preds = %212, %164
  %224 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %225 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %224, i32 0, i32 1
  %226 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %225, align 8
  store %struct.ib_recv_wr* %226, %struct.ib_recv_wr** %6, align 8
  br label %52

227:                                              ; preds = %71, %52
  %228 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %229 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %228, i32 0, i32 2
  %230 = load i64, i64* %10, align 8
  %231 = call i32 @spin_unlock_irqrestore(i32* %229, i64 %230)
  %232 = load i32, i32* %11, align 4
  store i32 %232, i32* %4, align 4
  br label %233

233:                                              ; preds = %227, %42, %27
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local %struct.qedr_qp* @get_qedr_qp(%struct.ib_qp*) #1

declare dso_local i32 @qedr_gsi_post_recv(%struct.ib_qp*, %struct.ib_recv_wr*, %struct.ib_recv_wr**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @qed_chain_get_elem_left_u32(i32*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i64, i64, i32, i32) #1

declare dso_local %struct.rdma_rq_sge* @qed_chain_produce(i32*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @RQ_SGE_SET(%struct.rdma_rq_sge*, i32, i32, i32) #1

declare dso_local i32 @qedr_inc_sw_prod(%struct.TYPE_12__*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i64 @rdma_protocol_iwarp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
