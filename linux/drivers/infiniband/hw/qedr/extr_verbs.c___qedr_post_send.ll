; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c___qedr_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c___qedr_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_send_wr = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.qedr_dev = type { i32 }
%struct.qedr_qp = type { i32, %struct.TYPE_11__, %struct.TYPE_8__*, i64 }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i8*, i32 }
%struct.rdma_sq_atomic_wqe_1st = type { i32 }
%struct.rdma_sq_atomic_wqe_2nd = type { i8*, i32 }
%struct.rdma_sq_atomic_wqe_3rd = type { i32, i32 }
%struct.rdma_sq_send_wqe_2st = type { i32 }
%struct.rdma_sq_local_inv_wqe = type { i32, i32, i32 }
%struct.rdma_sq_rdma_wqe_2nd = type { i32 }
%struct.rdma_sq_send_wqe_1st = type { i32, i8*, i8* }
%struct.rdma_sq_rdma_wqe_1st = type { i32, i8*, i32 }
%struct.rdma_sq_fmr_wqe_1st = type { i32 }
%struct.rdma_sq_common_wqe = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@RDMA_SQ_SEND_WQE_SE_FLG = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@RDMA_SQ_SEND_WQE_COMP_FLG = common dso_local global i32 0, align 4
@RDMA_SQ_SEND_WQE_RD_FENCE_FLG = common dso_local global i32 0, align 4
@IB_SEND_FENCE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RDMA_SQ_REQ_TYPE_SEND_WITH_IMM = common dso_local global i32 0, align 4
@RDMA_SQ_REQ_TYPE_SEND = common dso_local global i32 0, align 4
@RDMA_SQ_REQ_TYPE_SEND_WITH_INVALIDATE = common dso_local global i32 0, align 4
@RDMA_SQ_REQ_TYPE_RDMA_WR_WITH_IMM = common dso_local global i32 0, align 4
@RDMA_SQ_REQ_TYPE_RDMA_WR = common dso_local global i32 0, align 4
@RDMA_SQ_RDMA_WQE_1ST_READ_INV_FLG = common dso_local global i32 0, align 4
@RDMA_SQ_REQ_TYPE_RDMA_RD = common dso_local global i32 0, align 4
@RDMA_SQ_REQ_TYPE_ATOMIC_ADD = common dso_local global i32 0, align 4
@RDMA_SQ_REQ_TYPE_ATOMIC_CMP_AND_SWAP = common dso_local global i32 0, align 4
@RDMA_SQ_REQ_TYPE_LOCAL_INVALIDATE = common dso_local global i32 0, align 4
@QEDR_MSG_CQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"REG_MR\0A\00", align 1
@RDMA_SQ_REQ_TYPE_FAST_MR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"IB_REG_MR failed rc=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid opcode 0x%x!\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"POST SEND FAILED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_send_wr*, %struct.ib_send_wr**)* @__qedr_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qedr_post_send(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ib_send_wr**, align 8
  %8 = alloca %struct.qedr_dev*, align 8
  %9 = alloca %struct.qedr_qp*, align 8
  %10 = alloca %struct.rdma_sq_atomic_wqe_1st*, align 8
  %11 = alloca %struct.rdma_sq_atomic_wqe_2nd*, align 8
  %12 = alloca %struct.rdma_sq_atomic_wqe_3rd*, align 8
  %13 = alloca %struct.rdma_sq_send_wqe_2st*, align 8
  %14 = alloca %struct.rdma_sq_local_inv_wqe*, align 8
  %15 = alloca %struct.rdma_sq_rdma_wqe_2nd*, align 8
  %16 = alloca %struct.rdma_sq_send_wqe_1st*, align 8
  %17 = alloca %struct.rdma_sq_rdma_wqe_1st*, align 8
  %18 = alloca %struct.rdma_sq_fmr_wqe_1st*, align 8
  %19 = alloca %struct.rdma_sq_common_wqe*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %6, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %7, align 8
  %24 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %25 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.qedr_dev* @get_qedr_dev(i32 %26)
  store %struct.qedr_dev* %27, %struct.qedr_dev** %8, align 8
  %28 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %29 = call %struct.qedr_qp* @get_qedr_qp(%struct.ib_qp* %28)
  store %struct.qedr_qp* %29, %struct.qedr_qp** %9, align 8
  store i32 0, i32* %21, align 4
  %30 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %31 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %32 = call i32 @qedr_can_post_send(%struct.qedr_qp* %30, %struct.ib_send_wr* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %3
  %35 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %36 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %35, %struct.ib_send_wr** %36, align 8
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %707

39:                                               ; preds = %3
  %40 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %41 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = call i8* @qed_chain_produce(i32* %42)
  %44 = bitcast i8* %43 to %struct.rdma_sq_common_wqe*
  store %struct.rdma_sq_common_wqe* %44, %struct.rdma_sq_common_wqe** %19, align 8
  %45 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %39
  %52 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %53 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %51, %39
  %57 = phi i1 [ true, %39 ], [ %55, %51 ]
  %58 = zext i1 %57 to i32
  %59 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %60 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %63 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 %58, i32* %67, align 8
  %68 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %69 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %71 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @RDMA_SQ_SEND_WQE_SE_FLG, align 4
  %74 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %75 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @SET_FIELD2(i64 %72, i32 %73, i32 %82)
  %84 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %85 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %56
  %91 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %92 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %90, %56
  %96 = phi i1 [ true, %56 ], [ %94, %90 ]
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %22, align 4
  %98 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %99 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @RDMA_SQ_SEND_WQE_COMP_FLG, align 4
  %102 = load i32, i32* %22, align 4
  %103 = call i32 @SET_FIELD2(i64 %100, i32 %101, i32 %102)
  %104 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %105 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @RDMA_SQ_SEND_WQE_RD_FENCE_FLG, align 4
  %108 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %109 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IB_SEND_FENCE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = call i32 @SET_FIELD2(i64 %106, i32 %107, i32 %116)
  %118 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %119 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %122 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %124 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @qedr_ib_to_wc_opcode(i32 %125)
  %127 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %128 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %127, i32 0, i32 2
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %131 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  store i32 %126, i32* %135, align 8
  %136 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %137 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  switch i32 %138, label %668 [
    i32 129, label %139
    i32 130, label %211
    i32 128, label %264
    i32 132, label %324
    i32 133, label %396
    i32 134, label %449
    i32 135, label %455
    i32 138, label %508
    i32 137, label %508
    i32 136, label %595
    i32 131, label %626
  ]

139:                                              ; preds = %95
  %140 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %141 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %140, i32 0, i32 0
  %142 = call i32 @rdma_protocol_iwarp(i32* %141, i32 1)
  %143 = call i32 @unlikely(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %21, align 4
  %148 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %149 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %148, %struct.ib_send_wr** %149, align 8
  br label %678

150:                                              ; preds = %139
  %151 = load i32, i32* @RDMA_SQ_REQ_TYPE_SEND_WITH_IMM, align 4
  %152 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %153 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %155 = bitcast %struct.rdma_sq_common_wqe* %154 to %struct.rdma_sq_send_wqe_1st*
  store %struct.rdma_sq_send_wqe_1st* %155, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %156 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %157 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %156, i32 0, i32 0
  store i32 2, i32* %157, align 8
  %158 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %159 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = call i8* @qed_chain_produce(i32* %160)
  %162 = bitcast i8* %161 to %struct.rdma_sq_send_wqe_2st*
  store %struct.rdma_sq_send_wqe_2st* %162, %struct.rdma_sq_send_wqe_2st** %13, align 8
  %163 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %164 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @be32_to_cpu(i32 %166)
  %168 = call i8* @cpu_to_le32(i32 %167)
  %169 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %170 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %169, i32 0, i32 2
  store i8* %168, i8** %170, align 8
  %171 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %172 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %173 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %174 = load %struct.rdma_sq_send_wqe_2st*, %struct.rdma_sq_send_wqe_2st** %13, align 8
  %175 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %176 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %177 = call i32 @qedr_prepare_sq_send_data(%struct.qedr_dev* %171, %struct.qedr_qp* %172, %struct.rdma_sq_send_wqe_1st* %173, %struct.rdma_sq_send_wqe_2st* %174, %struct.ib_send_wr* %175, %struct.ib_send_wr** %176)
  store i32 %177, i32* %20, align 4
  %178 = load i32, i32* %20, align 4
  %179 = call i8* @cpu_to_le32(i32 %178)
  %180 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %181 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  %182 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %183 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %186 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %185, i32 0, i32 2
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %189 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  store i32 %184, i32* %193, align 4
  %194 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %195 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %198 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %200 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %199, i32 0, i32 1
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %203 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %202, i32 0, i32 2
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %203, align 8
  %205 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %206 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 2
  store i8* %201, i8** %210, align 8
  br label %678

211:                                              ; preds = %95
  %212 = load i32, i32* @RDMA_SQ_REQ_TYPE_SEND, align 4
  %213 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %214 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %216 = bitcast %struct.rdma_sq_common_wqe* %215 to %struct.rdma_sq_send_wqe_1st*
  store %struct.rdma_sq_send_wqe_1st* %216, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %217 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %218 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %217, i32 0, i32 0
  store i32 2, i32* %218, align 8
  %219 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %220 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  %222 = call i8* @qed_chain_produce(i32* %221)
  %223 = bitcast i8* %222 to %struct.rdma_sq_send_wqe_2st*
  store %struct.rdma_sq_send_wqe_2st* %223, %struct.rdma_sq_send_wqe_2st** %13, align 8
  %224 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %225 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %226 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %227 = load %struct.rdma_sq_send_wqe_2st*, %struct.rdma_sq_send_wqe_2st** %13, align 8
  %228 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %229 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %230 = call i32 @qedr_prepare_sq_send_data(%struct.qedr_dev* %224, %struct.qedr_qp* %225, %struct.rdma_sq_send_wqe_1st* %226, %struct.rdma_sq_send_wqe_2st* %227, %struct.ib_send_wr* %228, %struct.ib_send_wr** %229)
  store i32 %230, i32* %20, align 4
  %231 = load i32, i32* %20, align 4
  %232 = call i8* @cpu_to_le32(i32 %231)
  %233 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %234 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %233, i32 0, i32 1
  store i8* %232, i8** %234, align 8
  %235 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %236 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %239 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %238, i32 0, i32 2
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %242 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 1
  store i32 %237, i32* %246, align 4
  %247 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %248 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %251 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  %252 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %253 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %252, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %256 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %255, i32 0, i32 2
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %256, align 8
  %258 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %259 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 2
  store i8* %254, i8** %263, align 8
  br label %678

264:                                              ; preds = %95
  %265 = load i32, i32* @RDMA_SQ_REQ_TYPE_SEND_WITH_INVALIDATE, align 4
  %266 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %267 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 4
  %268 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %269 = bitcast %struct.rdma_sq_common_wqe* %268 to %struct.rdma_sq_send_wqe_1st*
  store %struct.rdma_sq_send_wqe_1st* %269, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %270 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %271 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 1
  %273 = call i8* @qed_chain_produce(i32* %272)
  %274 = bitcast i8* %273 to %struct.rdma_sq_send_wqe_2st*
  store %struct.rdma_sq_send_wqe_2st* %274, %struct.rdma_sq_send_wqe_2st** %13, align 8
  %275 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %276 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %275, i32 0, i32 0
  store i32 2, i32* %276, align 8
  %277 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %278 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = call i8* @cpu_to_le32(i32 %280)
  %282 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %283 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %282, i32 0, i32 2
  store i8* %281, i8** %283, align 8
  %284 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %285 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %286 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %287 = load %struct.rdma_sq_send_wqe_2st*, %struct.rdma_sq_send_wqe_2st** %13, align 8
  %288 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %289 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %290 = call i32 @qedr_prepare_sq_send_data(%struct.qedr_dev* %284, %struct.qedr_qp* %285, %struct.rdma_sq_send_wqe_1st* %286, %struct.rdma_sq_send_wqe_2st* %287, %struct.ib_send_wr* %288, %struct.ib_send_wr** %289)
  store i32 %290, i32* %20, align 4
  %291 = load i32, i32* %20, align 4
  %292 = call i8* @cpu_to_le32(i32 %291)
  %293 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %294 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %293, i32 0, i32 1
  store i8* %292, i8** %294, align 8
  %295 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %296 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %299 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %298, i32 0, i32 2
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %299, align 8
  %301 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %302 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 1
  store i32 %297, i32* %306, align 4
  %307 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %308 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %311 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %310, i32 0, i32 0
  store i32 %309, i32* %311, align 8
  %312 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %16, align 8
  %313 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %312, i32 0, i32 1
  %314 = load i8*, i8** %313, align 8
  %315 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %316 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %315, i32 0, i32 2
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %316, align 8
  %318 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %319 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 2
  store i8* %314, i8** %323, align 8
  br label %678

324:                                              ; preds = %95
  %325 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %326 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %325, i32 0, i32 0
  %327 = call i32 @rdma_protocol_iwarp(i32* %326, i32 1)
  %328 = call i32 @unlikely(i32 %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %324
  %331 = load i32, i32* @EINVAL, align 4
  %332 = sub nsw i32 0, %331
  store i32 %332, i32* %21, align 4
  %333 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %334 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %333, %struct.ib_send_wr** %334, align 8
  br label %678

335:                                              ; preds = %324
  %336 = load i32, i32* @RDMA_SQ_REQ_TYPE_RDMA_WR_WITH_IMM, align 4
  %337 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %338 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %337, i32 0, i32 1
  store i32 %336, i32* %338, align 4
  %339 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %340 = bitcast %struct.rdma_sq_common_wqe* %339 to %struct.rdma_sq_rdma_wqe_1st*
  store %struct.rdma_sq_rdma_wqe_1st* %340, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %341 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %342 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %341, i32 0, i32 0
  store i32 2, i32* %342, align 8
  %343 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %344 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = call i8* @cpu_to_le32(i32 %346)
  %348 = call i32 @htonl(i8* %347)
  %349 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %350 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %349, i32 0, i32 2
  store i32 %348, i32* %350, align 8
  %351 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %352 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 1
  %354 = call i8* @qed_chain_produce(i32* %353)
  %355 = bitcast i8* %354 to %struct.rdma_sq_rdma_wqe_2nd*
  store %struct.rdma_sq_rdma_wqe_2nd* %355, %struct.rdma_sq_rdma_wqe_2nd** %15, align 8
  %356 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %357 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %358 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %359 = load %struct.rdma_sq_rdma_wqe_2nd*, %struct.rdma_sq_rdma_wqe_2nd** %15, align 8
  %360 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %361 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %362 = call i32 @qedr_prepare_sq_rdma_data(%struct.qedr_dev* %356, %struct.qedr_qp* %357, %struct.rdma_sq_rdma_wqe_1st* %358, %struct.rdma_sq_rdma_wqe_2nd* %359, %struct.ib_send_wr* %360, %struct.ib_send_wr** %361)
  store i32 %362, i32* %20, align 4
  %363 = load i32, i32* %20, align 4
  %364 = call i8* @cpu_to_le32(i32 %363)
  %365 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %366 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %365, i32 0, i32 1
  store i8* %364, i8** %366, align 8
  %367 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %368 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %371 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %370, i32 0, i32 2
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %371, align 8
  %373 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %374 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 1
  store i32 %369, i32* %378, align 4
  %379 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %380 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %383 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %382, i32 0, i32 0
  store i32 %381, i32* %383, align 8
  %384 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %385 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %384, i32 0, i32 1
  %386 = load i8*, i8** %385, align 8
  %387 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %388 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %387, i32 0, i32 2
  %389 = load %struct.TYPE_8__*, %struct.TYPE_8__** %388, align 8
  %390 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %391 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 2
  store i8* %386, i8** %395, align 8
  br label %678

396:                                              ; preds = %95
  %397 = load i32, i32* @RDMA_SQ_REQ_TYPE_RDMA_WR, align 4
  %398 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %399 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %398, i32 0, i32 1
  store i32 %397, i32* %399, align 4
  %400 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %401 = bitcast %struct.rdma_sq_common_wqe* %400 to %struct.rdma_sq_rdma_wqe_1st*
  store %struct.rdma_sq_rdma_wqe_1st* %401, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %402 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %403 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %402, i32 0, i32 0
  store i32 2, i32* %403, align 8
  %404 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %405 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i32 0, i32 1
  %407 = call i8* @qed_chain_produce(i32* %406)
  %408 = bitcast i8* %407 to %struct.rdma_sq_rdma_wqe_2nd*
  store %struct.rdma_sq_rdma_wqe_2nd* %408, %struct.rdma_sq_rdma_wqe_2nd** %15, align 8
  %409 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %410 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %411 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %412 = load %struct.rdma_sq_rdma_wqe_2nd*, %struct.rdma_sq_rdma_wqe_2nd** %15, align 8
  %413 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %414 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %415 = call i32 @qedr_prepare_sq_rdma_data(%struct.qedr_dev* %409, %struct.qedr_qp* %410, %struct.rdma_sq_rdma_wqe_1st* %411, %struct.rdma_sq_rdma_wqe_2nd* %412, %struct.ib_send_wr* %413, %struct.ib_send_wr** %414)
  store i32 %415, i32* %20, align 4
  %416 = load i32, i32* %20, align 4
  %417 = call i8* @cpu_to_le32(i32 %416)
  %418 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %419 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %418, i32 0, i32 1
  store i8* %417, i8** %419, align 8
  %420 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %421 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %424 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %423, i32 0, i32 2
  %425 = load %struct.TYPE_8__*, %struct.TYPE_8__** %424, align 8
  %426 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %427 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %425, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i32 0, i32 1
  store i32 %422, i32* %431, align 4
  %432 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %433 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %436 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %435, i32 0, i32 0
  store i32 %434, i32* %436, align 8
  %437 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %438 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %437, i32 0, i32 1
  %439 = load i8*, i8** %438, align 8
  %440 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %441 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %440, i32 0, i32 2
  %442 = load %struct.TYPE_8__*, %struct.TYPE_8__** %441, align 8
  %443 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %444 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %444, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %447, i32 0, i32 2
  store i8* %439, i8** %448, align 8
  br label %678

449:                                              ; preds = %95
  %450 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %451 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %450, i32 0, i32 2
  %452 = load i64, i64* %451, align 8
  %453 = load i32, i32* @RDMA_SQ_RDMA_WQE_1ST_READ_INV_FLG, align 4
  %454 = call i32 @SET_FIELD2(i64 %452, i32 %453, i32 1)
  br label %455

455:                                              ; preds = %95, %449
  %456 = load i32, i32* @RDMA_SQ_REQ_TYPE_RDMA_RD, align 4
  %457 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %458 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %457, i32 0, i32 1
  store i32 %456, i32* %458, align 4
  %459 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %460 = bitcast %struct.rdma_sq_common_wqe* %459 to %struct.rdma_sq_rdma_wqe_1st*
  store %struct.rdma_sq_rdma_wqe_1st* %460, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %461 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %462 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %461, i32 0, i32 0
  store i32 2, i32* %462, align 8
  %463 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %464 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %463, i32 0, i32 1
  %465 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %464, i32 0, i32 1
  %466 = call i8* @qed_chain_produce(i32* %465)
  %467 = bitcast i8* %466 to %struct.rdma_sq_rdma_wqe_2nd*
  store %struct.rdma_sq_rdma_wqe_2nd* %467, %struct.rdma_sq_rdma_wqe_2nd** %15, align 8
  %468 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %469 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %470 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %471 = load %struct.rdma_sq_rdma_wqe_2nd*, %struct.rdma_sq_rdma_wqe_2nd** %15, align 8
  %472 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %473 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %474 = call i32 @qedr_prepare_sq_rdma_data(%struct.qedr_dev* %468, %struct.qedr_qp* %469, %struct.rdma_sq_rdma_wqe_1st* %470, %struct.rdma_sq_rdma_wqe_2nd* %471, %struct.ib_send_wr* %472, %struct.ib_send_wr** %473)
  store i32 %474, i32* %20, align 4
  %475 = load i32, i32* %20, align 4
  %476 = call i8* @cpu_to_le32(i32 %475)
  %477 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %478 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %477, i32 0, i32 1
  store i8* %476, i8** %478, align 8
  %479 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %480 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %483 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %482, i32 0, i32 2
  %484 = load %struct.TYPE_8__*, %struct.TYPE_8__** %483, align 8
  %485 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %486 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %486, i32 0, i32 0
  %488 = load i64, i64* %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %484, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %489, i32 0, i32 1
  store i32 %481, i32* %490, align 4
  %491 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %492 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %495 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %494, i32 0, i32 0
  store i32 %493, i32* %495, align 8
  %496 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %17, align 8
  %497 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %496, i32 0, i32 1
  %498 = load i8*, i8** %497, align 8
  %499 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %500 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %499, i32 0, i32 2
  %501 = load %struct.TYPE_8__*, %struct.TYPE_8__** %500, align 8
  %502 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %503 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %501, i64 %505
  %507 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %506, i32 0, i32 2
  store i8* %498, i8** %507, align 8
  br label %678

508:                                              ; preds = %95, %95
  %509 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %510 = bitcast %struct.rdma_sq_common_wqe* %509 to %struct.rdma_sq_atomic_wqe_1st*
  store %struct.rdma_sq_atomic_wqe_1st* %510, %struct.rdma_sq_atomic_wqe_1st** %10, align 8
  %511 = load %struct.rdma_sq_atomic_wqe_1st*, %struct.rdma_sq_atomic_wqe_1st** %10, align 8
  %512 = getelementptr inbounds %struct.rdma_sq_atomic_wqe_1st, %struct.rdma_sq_atomic_wqe_1st* %511, i32 0, i32 0
  store i32 4, i32* %512, align 4
  %513 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %514 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %514, i32 0, i32 1
  %516 = call i8* @qed_chain_produce(i32* %515)
  %517 = bitcast i8* %516 to %struct.rdma_sq_atomic_wqe_2nd*
  store %struct.rdma_sq_atomic_wqe_2nd* %517, %struct.rdma_sq_atomic_wqe_2nd** %11, align 8
  %518 = load %struct.rdma_sq_atomic_wqe_2nd*, %struct.rdma_sq_atomic_wqe_2nd** %11, align 8
  %519 = getelementptr inbounds %struct.rdma_sq_atomic_wqe_2nd, %struct.rdma_sq_atomic_wqe_2nd* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 8
  %521 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %522 = call %struct.TYPE_12__* @atomic_wr(%struct.ib_send_wr* %521)
  %523 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %522, i32 0, i32 3
  %524 = load i32, i32* %523, align 4
  %525 = call i32 @DMA_REGPAIR_LE(i32 %520, i32 %524)
  %526 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %527 = call %struct.TYPE_12__* @atomic_wr(%struct.ib_send_wr* %526)
  %528 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %527, i32 0, i32 2
  %529 = load i32, i32* %528, align 4
  %530 = call i8* @cpu_to_le32(i32 %529)
  %531 = load %struct.rdma_sq_atomic_wqe_2nd*, %struct.rdma_sq_atomic_wqe_2nd** %11, align 8
  %532 = getelementptr inbounds %struct.rdma_sq_atomic_wqe_2nd, %struct.rdma_sq_atomic_wqe_2nd* %531, i32 0, i32 0
  store i8* %530, i8** %532, align 8
  %533 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %534 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %534, i32 0, i32 1
  %536 = call i8* @qed_chain_produce(i32* %535)
  %537 = bitcast i8* %536 to %struct.rdma_sq_atomic_wqe_3rd*
  store %struct.rdma_sq_atomic_wqe_3rd* %537, %struct.rdma_sq_atomic_wqe_3rd** %12, align 8
  %538 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %539 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %538, i32 0, i32 1
  %540 = load i32, i32* %539, align 4
  %541 = icmp eq i32 %540, 137
  br i1 %541, label %542, label %554

542:                                              ; preds = %508
  %543 = load i32, i32* @RDMA_SQ_REQ_TYPE_ATOMIC_ADD, align 4
  %544 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %545 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %544, i32 0, i32 1
  store i32 %543, i32* %545, align 4
  %546 = load %struct.rdma_sq_atomic_wqe_3rd*, %struct.rdma_sq_atomic_wqe_3rd** %12, align 8
  %547 = getelementptr inbounds %struct.rdma_sq_atomic_wqe_3rd, %struct.rdma_sq_atomic_wqe_3rd* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 4
  %549 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %550 = call %struct.TYPE_12__* @atomic_wr(%struct.ib_send_wr* %549)
  %551 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 4
  %553 = call i32 @DMA_REGPAIR_LE(i32 %548, i32 %552)
  br label %574

554:                                              ; preds = %508
  %555 = load i32, i32* @RDMA_SQ_REQ_TYPE_ATOMIC_CMP_AND_SWAP, align 4
  %556 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %557 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %556, i32 0, i32 1
  store i32 %555, i32* %557, align 4
  %558 = load %struct.rdma_sq_atomic_wqe_3rd*, %struct.rdma_sq_atomic_wqe_3rd** %12, align 8
  %559 = getelementptr inbounds %struct.rdma_sq_atomic_wqe_3rd, %struct.rdma_sq_atomic_wqe_3rd* %558, i32 0, i32 1
  %560 = load i32, i32* %559, align 4
  %561 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %562 = call %struct.TYPE_12__* @atomic_wr(%struct.ib_send_wr* %561)
  %563 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %562, i32 0, i32 1
  %564 = load i32, i32* %563, align 4
  %565 = call i32 @DMA_REGPAIR_LE(i32 %560, i32 %564)
  %566 = load %struct.rdma_sq_atomic_wqe_3rd*, %struct.rdma_sq_atomic_wqe_3rd** %12, align 8
  %567 = getelementptr inbounds %struct.rdma_sq_atomic_wqe_3rd, %struct.rdma_sq_atomic_wqe_3rd* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 4
  %569 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %570 = call %struct.TYPE_12__* @atomic_wr(%struct.ib_send_wr* %569)
  %571 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 4
  %573 = call i32 @DMA_REGPAIR_LE(i32 %568, i32 %572)
  br label %574

574:                                              ; preds = %554, %542
  %575 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %576 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %577 = call i32 @qedr_prepare_sq_sges(%struct.qedr_qp* %575, i32* null, %struct.ib_send_wr* %576)
  %578 = load %struct.rdma_sq_atomic_wqe_1st*, %struct.rdma_sq_atomic_wqe_1st** %10, align 8
  %579 = getelementptr inbounds %struct.rdma_sq_atomic_wqe_1st, %struct.rdma_sq_atomic_wqe_1st* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 4
  %581 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %582 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %581, i32 0, i32 2
  %583 = load %struct.TYPE_8__*, %struct.TYPE_8__** %582, align 8
  %584 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %585 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %585, i32 0, i32 0
  %587 = load i64, i64* %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %583, i64 %587
  %589 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %588, i32 0, i32 1
  store i32 %580, i32* %589, align 4
  %590 = load %struct.rdma_sq_atomic_wqe_1st*, %struct.rdma_sq_atomic_wqe_1st** %10, align 8
  %591 = getelementptr inbounds %struct.rdma_sq_atomic_wqe_1st, %struct.rdma_sq_atomic_wqe_1st* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 4
  %593 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %594 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %593, i32 0, i32 0
  store i32 %592, i32* %594, align 8
  br label %678

595:                                              ; preds = %95
  %596 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %597 = bitcast %struct.rdma_sq_common_wqe* %596 to %struct.rdma_sq_local_inv_wqe*
  store %struct.rdma_sq_local_inv_wqe* %597, %struct.rdma_sq_local_inv_wqe** %14, align 8
  %598 = load %struct.rdma_sq_local_inv_wqe*, %struct.rdma_sq_local_inv_wqe** %14, align 8
  %599 = getelementptr inbounds %struct.rdma_sq_local_inv_wqe, %struct.rdma_sq_local_inv_wqe* %598, i32 0, i32 0
  store i32 1, i32* %599, align 4
  %600 = load i32, i32* @RDMA_SQ_REQ_TYPE_LOCAL_INVALIDATE, align 4
  %601 = load %struct.rdma_sq_local_inv_wqe*, %struct.rdma_sq_local_inv_wqe** %14, align 8
  %602 = getelementptr inbounds %struct.rdma_sq_local_inv_wqe, %struct.rdma_sq_local_inv_wqe* %601, i32 0, i32 2
  store i32 %600, i32* %602, align 4
  %603 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %604 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %603, i32 0, i32 2
  %605 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 4
  %607 = load %struct.rdma_sq_local_inv_wqe*, %struct.rdma_sq_local_inv_wqe** %14, align 8
  %608 = getelementptr inbounds %struct.rdma_sq_local_inv_wqe, %struct.rdma_sq_local_inv_wqe* %607, i32 0, i32 1
  store i32 %606, i32* %608, align 4
  %609 = load %struct.rdma_sq_local_inv_wqe*, %struct.rdma_sq_local_inv_wqe** %14, align 8
  %610 = getelementptr inbounds %struct.rdma_sq_local_inv_wqe, %struct.rdma_sq_local_inv_wqe* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 4
  %612 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %613 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %612, i32 0, i32 2
  %614 = load %struct.TYPE_8__*, %struct.TYPE_8__** %613, align 8
  %615 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %616 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %615, i32 0, i32 1
  %617 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %616, i32 0, i32 0
  %618 = load i64, i64* %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %614, i64 %618
  %620 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %619, i32 0, i32 1
  store i32 %611, i32* %620, align 4
  %621 = load %struct.rdma_sq_local_inv_wqe*, %struct.rdma_sq_local_inv_wqe** %14, align 8
  %622 = getelementptr inbounds %struct.rdma_sq_local_inv_wqe, %struct.rdma_sq_local_inv_wqe* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 4
  %624 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %625 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %624, i32 0, i32 0
  store i32 %623, i32* %625, align 8
  br label %678

626:                                              ; preds = %95
  %627 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %628 = load i32, i32* @QEDR_MSG_CQ, align 4
  %629 = call i32 @DP_DEBUG(%struct.qedr_dev* %627, i32 %628, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %630 = load i32, i32* @RDMA_SQ_REQ_TYPE_FAST_MR, align 4
  %631 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %632 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %631, i32 0, i32 1
  store i32 %630, i32* %632, align 4
  %633 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %634 = bitcast %struct.rdma_sq_common_wqe* %633 to %struct.rdma_sq_fmr_wqe_1st*
  store %struct.rdma_sq_fmr_wqe_1st* %634, %struct.rdma_sq_fmr_wqe_1st** %18, align 8
  %635 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %18, align 8
  %636 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_1st, %struct.rdma_sq_fmr_wqe_1st* %635, i32 0, i32 0
  store i32 2, i32* %636, align 4
  %637 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %638 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %18, align 8
  %639 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %640 = call i32 @reg_wr(%struct.ib_send_wr* %639)
  %641 = call i32 @qedr_prepare_reg(%struct.qedr_qp* %637, %struct.rdma_sq_fmr_wqe_1st* %638, i32 %640)
  store i32 %641, i32* %21, align 4
  %642 = load i32, i32* %21, align 4
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %650

644:                                              ; preds = %626
  %645 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %646 = load i32, i32* %21, align 4
  %647 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %645, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %646)
  %648 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %649 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %648, %struct.ib_send_wr** %649, align 8
  br label %678

650:                                              ; preds = %626
  %651 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %18, align 8
  %652 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_1st, %struct.rdma_sq_fmr_wqe_1st* %651, i32 0, i32 0
  %653 = load i32, i32* %652, align 4
  %654 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %655 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %654, i32 0, i32 2
  %656 = load %struct.TYPE_8__*, %struct.TYPE_8__** %655, align 8
  %657 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %658 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %657, i32 0, i32 1
  %659 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %658, i32 0, i32 0
  %660 = load i64, i64* %659, align 8
  %661 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %656, i64 %660
  %662 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %661, i32 0, i32 1
  store i32 %653, i32* %662, align 4
  %663 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %18, align 8
  %664 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_1st, %struct.rdma_sq_fmr_wqe_1st* %663, i32 0, i32 0
  %665 = load i32, i32* %664, align 4
  %666 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %667 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %666, i32 0, i32 0
  store i32 %665, i32* %667, align 8
  br label %678

668:                                              ; preds = %95
  %669 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %670 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %671 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %670, i32 0, i32 1
  %672 = load i32, i32* %671, align 4
  %673 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %669, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %672)
  %674 = load i32, i32* @EINVAL, align 4
  %675 = sub nsw i32 0, %674
  store i32 %675, i32* %21, align 4
  %676 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %677 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %676, %struct.ib_send_wr** %677, align 8
  br label %678

678:                                              ; preds = %668, %650, %644, %595, %574, %455, %396, %335, %330, %264, %211, %150, %145
  %679 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %680 = load %struct.ib_send_wr*, %struct.ib_send_wr** %679, align 8
  %681 = icmp ne %struct.ib_send_wr* %680, null
  br i1 %681, label %682, label %705

682:                                              ; preds = %678
  %683 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %684 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %683, i32 0, i32 1
  %685 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %684, i32 0, i32 2
  %686 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %685, i32 0, i32 0
  %687 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %686, i32 0, i32 0
  %688 = load i32, i32* %687, align 4
  %689 = call i32 @le16_to_cpu(i32 %688)
  store i32 %689, i32* %23, align 4
  %690 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %691 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %690, i32 0, i32 1
  %692 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %691, i32 0, i32 1
  %693 = load i32, i32* %23, align 4
  %694 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %695 = call i32 @qed_chain_set_prod(i32* %692, i32 %693, %struct.rdma_sq_common_wqe* %694)
  %696 = load %struct.rdma_sq_common_wqe*, %struct.rdma_sq_common_wqe** %19, align 8
  %697 = getelementptr inbounds %struct.rdma_sq_common_wqe, %struct.rdma_sq_common_wqe* %696, i32 0, i32 0
  %698 = load i32, i32* %697, align 8
  %699 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %700 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %699, i32 0, i32 0
  store i32 %698, i32* %700, align 8
  %701 = load i32, i32* @EINVAL, align 4
  %702 = sub nsw i32 0, %701
  store i32 %702, i32* %21, align 4
  %703 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %704 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %703, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %705

705:                                              ; preds = %682, %678
  %706 = load i32, i32* %21, align 4
  store i32 %706, i32* %4, align 4
  br label %707

707:                                              ; preds = %705, %34
  %708 = load i32, i32* %4, align 4
  ret i32 %708
}

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #1

declare dso_local %struct.qedr_qp* @get_qedr_qp(%struct.ib_qp*) #1

declare dso_local i32 @qedr_can_post_send(%struct.qedr_qp*, %struct.ib_send_wr*) #1

declare dso_local i8* @qed_chain_produce(i32*) #1

declare dso_local i32 @SET_FIELD2(i64, i32, i32) #1

declare dso_local i32 @qedr_ib_to_wc_opcode(i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @rdma_protocol_iwarp(i32*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @qedr_prepare_sq_send_data(%struct.qedr_dev*, %struct.qedr_qp*, %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_2st*, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

declare dso_local i32 @htonl(i8*) #1

declare dso_local i32 @qedr_prepare_sq_rdma_data(%struct.qedr_dev*, %struct.qedr_qp*, %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_2nd*, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local %struct.TYPE_12__* @atomic_wr(%struct.ib_send_wr*) #1

declare dso_local i32 @qedr_prepare_sq_sges(%struct.qedr_qp*, i32*, %struct.ib_send_wr*) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*) #1

declare dso_local i32 @qedr_prepare_reg(%struct.qedr_qp*, %struct.rdma_sq_fmr_wqe_1st*, i32) #1

declare dso_local i32 @reg_wr(%struct.ib_send_wr*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @qed_chain_set_prod(i32*, i32, %struct.rdma_sq_common_wqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
