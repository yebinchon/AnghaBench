; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_poll_cq_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_poll_cq_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.qedr_qp = type { i32, i32 }
%struct.qedr_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.rdma_cqe_requester = type { i32, i32 }

@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@QED_ROCE_QP_STATE_ERR = common dso_local global i32 0, align 4
@QEDR_MSG_CQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"Error: POLL CQ with RDMA_CQE_REQ_STS_WORK_REQUEST_FLUSHED_ERR. CQ icid=0x%x, QP icid=0x%x\0A\00", align 1
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"Error: POLL CQ with RDMA_CQE_REQ_STS_BAD_RESPONSE_ERR. CQ icid=0x%x, QP icid=0x%x\0A\00", align 1
@IB_WC_BAD_RESP_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"Error: POLL CQ with RDMA_CQE_REQ_STS_LOCAL_LENGTH_ERR. CQ icid=0x%x, QP icid=0x%x\0A\00", align 1
@IB_WC_LOC_LEN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [89 x i8] c"Error: POLL CQ with RDMA_CQE_REQ_STS_LOCAL_QP_OPERATION_ERR. CQ icid=0x%x, QP icid=0x%x\0A\00", align 1
@IB_WC_LOC_QP_OP_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [87 x i8] c"Error: POLL CQ with RDMA_CQE_REQ_STS_LOCAL_PROTECTION_ERR. CQ icid=0x%x, QP icid=0x%x\0A\00", align 1
@IB_WC_LOC_PROT_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [91 x i8] c"Error: POLL CQ with RDMA_CQE_REQ_STS_MEMORY_MGT_OPERATION_ERR. CQ icid=0x%x, QP icid=0x%x\0A\00", align 1
@IB_WC_MW_BIND_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [93 x i8] c"Error: POLL CQ with RDMA_CQE_REQ_STS_REMOTE_INVALID_REQUEST_ERR. CQ icid=0x%x, QP icid=0x%x\0A\00", align 1
@IB_WC_REM_INV_REQ_ERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [84 x i8] c"Error: POLL CQ with RDMA_CQE_REQ_STS_REMOTE_ACCESS_ERR. CQ icid=0x%x, QP icid=0x%x\0A\00", align 1
@IB_WC_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [87 x i8] c"Error: POLL CQ with RDMA_CQE_REQ_STS_REMOTE_OPERATION_ERR. CQ icid=0x%x, QP icid=0x%x\0A\00", align 1
@IB_WC_REM_OP_ERR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [88 x i8] c"Error: POLL CQ with RDMA_CQE_REQ_STS_RNR_NAK_RETRY_CNT_ERR. CQ icid=0x%x, QP icid=0x%x\0A\00", align 1
@IB_WC_RNR_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [90 x i8] c"Error: POLL CQ with ROCE_CQE_REQ_STS_TRANSPORT_RETRY_CNT_ERR. CQ icid=0x%x, QP icid=0x%x\0A\00", align 1
@IB_WC_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [67 x i8] c"Error: POLL CQ with IB_WC_GENERAL_ERR. CQ icid=0x%x, QP icid=0x%x\0A\00", align 1
@IB_WC_GENERAL_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.qedr_qp*, %struct.qedr_cq*, i32, %struct.ib_wc*, %struct.rdma_cqe_requester*)* @qedr_poll_cq_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_poll_cq_req(%struct.qedr_dev* %0, %struct.qedr_qp* %1, %struct.qedr_cq* %2, i32 %3, %struct.ib_wc* %4, %struct.rdma_cqe_requester* %5) #0 {
  %7 = alloca %struct.qedr_dev*, align 8
  %8 = alloca %struct.qedr_qp*, align 8
  %9 = alloca %struct.qedr_cq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_wc*, align 8
  %12 = alloca %struct.rdma_cqe_requester*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %7, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %8, align 8
  store %struct.qedr_cq* %2, %struct.qedr_cq** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ib_wc* %4, %struct.ib_wc** %11, align 8
  store %struct.rdma_cqe_requester* %5, %struct.rdma_cqe_requester** %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %12, align 8
  %16 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %56 [
    i32 134, label %18
    i32 128, label %29
  ]

18:                                               ; preds = %6
  %19 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %20 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %21 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %24 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %12, align 8
  %25 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IB_WC_SUCCESS, align 4
  %28 = call i32 @process_req(%struct.qedr_dev* %19, %struct.qedr_qp* %20, %struct.qedr_cq* %21, i32 %22, %struct.ib_wc* %23, i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %13, align 4
  br label %205

29:                                               ; preds = %6
  %30 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %31 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @QED_ROCE_QP_STATE_ERR, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %37 = load i32, i32* @QEDR_MSG_CQ, align 4
  %38 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %39 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %42 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DP_DEBUG(%struct.qedr_dev* %36, i32 %37, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %35, %29
  %46 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %47 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %48 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %51 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %12, align 8
  %52 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %55 = call i32 @process_req(%struct.qedr_dev* %46, %struct.qedr_qp* %47, %struct.qedr_cq* %48, i32 %49, %struct.ib_wc* %50, i32 %53, i32 %54, i32 1)
  store i32 %55, i32* %13, align 4
  br label %205

56:                                               ; preds = %6
  %57 = load i32, i32* @QED_ROCE_QP_STATE_ERR, align 4
  %58 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %59 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %61 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %62 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %65 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %12, align 8
  %66 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* @IB_WC_SUCCESS, align 4
  %70 = call i32 @process_req(%struct.qedr_dev* %60, %struct.qedr_qp* %61, %struct.qedr_cq* %62, i32 %63, %struct.ib_wc* %64, i32 %68, i32 %69, i32 0)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %72, i64 %73
  store %struct.ib_wc* %74, %struct.ib_wc** %11, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %204

78:                                               ; preds = %56
  %79 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %12, align 8
  %80 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %182 [
    i32 139, label %82
    i32 138, label %92
    i32 136, label %102
    i32 137, label %112
    i32 135, label %122
    i32 132, label %132
    i32 133, label %142
    i32 131, label %152
    i32 130, label %162
    i32 129, label %172
  ]

82:                                               ; preds = %78
  %83 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %84 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %85 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %88 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @DP_ERR(%struct.qedr_dev* %83, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load i32, i32* @IB_WC_BAD_RESP_ERR, align 4
  store i32 %91, i32* %14, align 4
  br label %192

92:                                               ; preds = %78
  %93 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %94 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %95 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %98 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @DP_ERR(%struct.qedr_dev* %93, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %99)
  %101 = load i32, i32* @IB_WC_LOC_LEN_ERR, align 4
  store i32 %101, i32* %14, align 4
  br label %192

102:                                              ; preds = %78
  %103 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %104 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %105 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %108 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @DP_ERR(%struct.qedr_dev* %103, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i32 %106, i32 %109)
  %111 = load i32, i32* @IB_WC_LOC_QP_OP_ERR, align 4
  store i32 %111, i32* %14, align 4
  br label %192

112:                                              ; preds = %78
  %113 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %114 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %115 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %118 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @DP_ERR(%struct.qedr_dev* %113, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %119)
  %121 = load i32, i32* @IB_WC_LOC_PROT_ERR, align 4
  store i32 %121, i32* %14, align 4
  br label %192

122:                                              ; preds = %78
  %123 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %124 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %125 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %128 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @DP_ERR(%struct.qedr_dev* %123, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.5, i64 0, i64 0), i32 %126, i32 %129)
  %131 = load i32, i32* @IB_WC_MW_BIND_ERR, align 4
  store i32 %131, i32* %14, align 4
  br label %192

132:                                              ; preds = %78
  %133 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %134 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %135 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %138 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @DP_ERR(%struct.qedr_dev* %133, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.6, i64 0, i64 0), i32 %136, i32 %139)
  %141 = load i32, i32* @IB_WC_REM_INV_REQ_ERR, align 4
  store i32 %141, i32* %14, align 4
  br label %192

142:                                              ; preds = %78
  %143 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %144 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %145 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %148 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @DP_ERR(%struct.qedr_dev* %143, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.7, i64 0, i64 0), i32 %146, i32 %149)
  %151 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %151, i32* %14, align 4
  br label %192

152:                                              ; preds = %78
  %153 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %154 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %155 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %158 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @DP_ERR(%struct.qedr_dev* %153, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.8, i64 0, i64 0), i32 %156, i32 %159)
  %161 = load i32, i32* @IB_WC_REM_OP_ERR, align 4
  store i32 %161, i32* %14, align 4
  br label %192

162:                                              ; preds = %78
  %163 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %164 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %165 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %168 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @DP_ERR(%struct.qedr_dev* %163, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.9, i64 0, i64 0), i32 %166, i32 %169)
  %171 = load i32, i32* @IB_WC_RNR_RETRY_EXC_ERR, align 4
  store i32 %171, i32* %14, align 4
  br label %192

172:                                              ; preds = %78
  %173 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %174 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %175 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %178 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @DP_ERR(%struct.qedr_dev* %173, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.10, i64 0, i64 0), i32 %176, i32 %179)
  %181 = load i32, i32* @IB_WC_RETRY_EXC_ERR, align 4
  store i32 %181, i32* %14, align 4
  br label %192

182:                                              ; preds = %78
  %183 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %184 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %185 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %188 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @DP_ERR(%struct.qedr_dev* %183, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0), i32 %186, i32 %189)
  %191 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  store i32 %191, i32* %14, align 4
  br label %192

192:                                              ; preds = %182, %172, %162, %152, %142, %132, %122, %112, %102, %92, %82
  %193 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %194 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %195 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %196 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %197 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %12, align 8
  %198 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @process_req(%struct.qedr_dev* %193, %struct.qedr_qp* %194, %struct.qedr_cq* %195, i32 1, %struct.ib_wc* %196, i32 %199, i32 %200, i32 1)
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %13, align 4
  br label %204

204:                                              ; preds = %192, %56
  br label %205

205:                                              ; preds = %204, %45, %18
  %206 = load i32, i32* %13, align 4
  ret i32 %206
}

declare dso_local i32 @process_req(%struct.qedr_dev*, %struct.qedr_qp*, %struct.qedr_cq*, i32, %struct.ib_wc*, i32, i32, i32) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
