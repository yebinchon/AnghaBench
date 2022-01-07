; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_rxe_requester.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_rxe_requester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.rxe_qp = type { i64, i32, %struct.TYPE_21__, %struct.TYPE_22__, %struct.TYPE_15__, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i64, i32, i8*, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.rxe_pkt_info = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rxe_send_wqe = type { i32, i64, i64, i8*, i8*, %struct.TYPE_14__, %struct.TYPE_20__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.rxe_dev = type { i32 }
%struct.rxe_mem = type { i64, i32, %struct.TYPE_21__, %struct.TYPE_22__, %struct.TYPE_15__, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__, i32 }

@QP_STATE_ERROR = common dso_local global i64 0, align 8
@QP_STATE_RESET = common dso_local global i64 0, align 8
@WR_REG_MASK = common dso_local global i32 0, align 4
@IB_WR_LOCAL_INV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"No mr for key %#x\0A\00", align 1
@wqe_state_error = common dso_local global i8* null, align 8
@IB_WC_MW_BIND_ERR = common dso_local global i8* null, align 8
@RXE_MEM_STATE_FREE = common dso_local global i32 0, align 4
@wqe_state_done = common dso_local global i8* null, align 8
@IB_WC_SUCCESS = common dso_local global i8* null, align 8
@IB_WR_REG_MR = common dso_local global i32 0, align 4
@RXE_MEM_STATE_VALID = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i64 0, align 8
@IB_QPT_RC = common dso_local global i64 0, align 8
@RXE_MAX_UNACKED_PSNS = common dso_local global i64 0, align 8
@RXE_INFLIGHT_SKBS_PER_QP_HIGH = common dso_local global i64 0, align 8
@IB_WC_LOC_QP_OP_ERR = common dso_local global i8* null, align 8
@rxe_opcode = common dso_local global %struct.TYPE_13__* null, align 8
@RXE_READ_OR_ATOMIC = common dso_local global i32 0, align 4
@RXE_WRITE_OR_SEND = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@BTH_PSN_MASK = common dso_local global i32 0, align 4
@IB_OPCODE_UD_SEND_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"qp#%d Failed allocating skb\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"qp#%d Error during fill packet\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@IB_WC_LOC_PROT_ERR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_requester(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.rxe_pkt_info, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rxe_send_wqe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rxe_send_wqe, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.rxe_dev*, align 8
  %16 = alloca %struct.rxe_mem*, align 8
  %17 = alloca %struct.rxe_mem*, align 8
  store i8* %0, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = bitcast i8* %18 to %struct.rxe_qp*
  store %struct.rxe_qp* %19, %struct.rxe_qp** %4, align 8
  %20 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %21 = call i32 @rxe_add_ref(%struct.rxe_qp* %20)
  br label %22

22:                                               ; preds = %458, %232, %1
  %23 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %24 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %29 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @QP_STATE_ERROR, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %27, %22
  %35 = phi i1 [ true, %22 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %474

40:                                               ; preds = %34
  %41 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %42 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @QP_STATE_RESET, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %40
  %51 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %52 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @consumer_index(i32 %54)
  %56 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %57 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 6
  store i8* %55, i8** %58, align 8
  %59 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %60 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 1
  store i32 -1, i32* %61, align 8
  %62 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %63 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 7
  store i64 0, i64* %64, align 8
  %65 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %66 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 2
  store i32 0, i32* %67, align 4
  %68 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %69 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 3
  store i32 0, i32* %70, align 8
  br label %474

71:                                               ; preds = %40
  %72 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %73 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %80 = call i32 @req_retry(%struct.rxe_qp* %79)
  %81 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %82 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 3
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %78, %71
  %85 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %86 = call %struct.rxe_send_wqe* @req_next_wqe(%struct.rxe_qp* %85)
  store %struct.rxe_send_wqe* %86, %struct.rxe_send_wqe** %7, align 8
  %87 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %88 = icmp ne %struct.rxe_send_wqe* %87, null
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %474

94:                                               ; preds = %84
  %95 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %96 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @WR_REG_MASK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %245

101:                                              ; preds = %94
  %102 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %103 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @IB_WR_LOCAL_INV, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %152

108:                                              ; preds = %101
  %109 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %110 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %109, i32 0, i32 11
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call %struct.rxe_dev* @to_rdev(i32 %112)
  store %struct.rxe_dev* %113, %struct.rxe_dev** %15, align 8
  %114 = load %struct.rxe_dev*, %struct.rxe_dev** %15, align 8
  %115 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %114, i32 0, i32 0
  %116 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %117 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = ashr i32 %120, 8
  %122 = call %struct.rxe_qp* @rxe_pool_get_index(i32* %115, i32 %121)
  %123 = bitcast %struct.rxe_qp* %122 to %struct.rxe_mem*
  store %struct.rxe_mem* %123, %struct.rxe_mem** %16, align 8
  %124 = load %struct.rxe_mem*, %struct.rxe_mem** %16, align 8
  %125 = icmp ne %struct.rxe_mem* %124, null
  br i1 %125, label %139, label %126

126:                                              ; preds = %108
  %127 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %128 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %131)
  %133 = load i8*, i8** @wqe_state_error, align 8
  %134 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %135 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** @IB_WC_MW_BIND_ERR, align 8
  %137 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %138 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  br label %474

139:                                              ; preds = %108
  %140 = load i32, i32* @RXE_MEM_STATE_FREE, align 4
  %141 = load %struct.rxe_mem*, %struct.rxe_mem** %16, align 8
  %142 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %141, i32 0, i32 10
  store i32 %140, i32* %142, align 8
  %143 = load %struct.rxe_mem*, %struct.rxe_mem** %16, align 8
  %144 = bitcast %struct.rxe_mem* %143 to %struct.rxe_qp*
  %145 = call i32 @rxe_drop_ref(%struct.rxe_qp* %144)
  %146 = load i8*, i8** @wqe_state_done, align 8
  %147 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %148 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load i8*, i8** @IB_WC_SUCCESS, align 8
  %150 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %151 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  br label %213

152:                                              ; preds = %101
  %153 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %154 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @IB_WR_REG_MR, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %211

159:                                              ; preds = %152
  %160 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %161 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = call %struct.rxe_qp* @to_rmr(%struct.TYPE_12__* %165)
  %167 = bitcast %struct.rxe_qp* %166 to %struct.rxe_mem*
  store %struct.rxe_mem* %167, %struct.rxe_mem** %17, align 8
  %168 = load i32, i32* @RXE_MEM_STATE_VALID, align 4
  %169 = load %struct.rxe_mem*, %struct.rxe_mem** %17, align 8
  %170 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %169, i32 0, i32 10
  store i32 %168, i32* %170, align 8
  %171 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %172 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %171, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.rxe_mem*, %struct.rxe_mem** %17, align 8
  %178 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %177, i32 0, i32 9
  store i32 %176, i32* %178, align 4
  %179 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %180 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.rxe_mem*, %struct.rxe_mem** %17, align 8
  %186 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %185, i32 0, i32 8
  store i32 %184, i32* %186, align 8
  %187 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %188 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.rxe_mem*, %struct.rxe_mem** %17, align 8
  %194 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %193, i32 0, i32 7
  store i32 %192, i32* %194, align 4
  %195 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %196 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.rxe_mem*, %struct.rxe_mem** %17, align 8
  %204 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %203, i32 0, i32 6
  store i32 %202, i32* %204, align 8
  %205 = load i8*, i8** @wqe_state_done, align 8
  %206 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %207 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %206, i32 0, i32 3
  store i8* %205, i8** %207, align 8
  %208 = load i8*, i8** @IB_WC_SUCCESS, align 8
  %209 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %210 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %209, i32 0, i32 4
  store i8* %208, i8** %210, align 8
  br label %212

211:                                              ; preds = %152
  br label %474

212:                                              ; preds = %159
  br label %213

213:                                              ; preds = %212, %139
  %214 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %215 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %214, i32 0, i32 6
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %213
  %222 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %223 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @IB_SIGNAL_ALL_WR, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %221, %213
  %228 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %229 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 1
  %231 = call i32 @rxe_run_task(i32* %230, i32 1)
  br label %232

232:                                              ; preds = %227, %221
  %233 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %234 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %238 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 6
  %240 = load i8*, i8** %239, align 8
  %241 = call i8* @next_index(i32 %236, i8* %240)
  %242 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %243 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 6
  store i8* %241, i8** %244, align 8
  br label %22

245:                                              ; preds = %94
  %246 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %247 = call i64 @qp_type(%struct.rxe_qp* %246)
  %248 = load i64, i64* @IB_QPT_RC, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %245
  %251 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %252 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %256 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @RXE_MAX_UNACKED_PSNS, align 8
  %260 = add nsw i64 %258, %259
  %261 = icmp sgt i64 %254, %260
  br label %262

262:                                              ; preds = %250, %245
  %263 = phi i1 [ false, %245 ], [ %261, %250 ]
  %264 = zext i1 %263 to i32
  %265 = call i64 @unlikely(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %262
  %268 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %269 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 2
  store i32 1, i32* %270, align 4
  br label %474

271:                                              ; preds = %262
  %272 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %273 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %272, i32 0, i32 5
  %274 = call i64 @atomic_read(i32* %273)
  %275 = load i64, i64* @RXE_INFLIGHT_SKBS_PER_QP_HIGH, align 8
  %276 = icmp sgt i64 %274, %275
  %277 = zext i1 %276 to i32
  %278 = call i64 @unlikely(i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %271
  %281 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %282 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %281, i32 0, i32 1
  store i32 1, i32* %282, align 8
  br label %474

283:                                              ; preds = %271
  %284 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %285 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %286 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %287 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %286, i32 0, i32 6
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @next_opcode(%struct.rxe_qp* %284, %struct.rxe_send_wqe* %285, i32 %289)
  store i32 %290, i32* %11, align 4
  %291 = load i32, i32* %11, align 4
  %292 = icmp slt i32 %291, 0
  %293 = zext i1 %292 to i32
  %294 = call i64 @unlikely(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %283
  %297 = load i8*, i8** @IB_WC_LOC_QP_OP_ERR, align 8
  %298 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %299 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %298, i32 0, i32 4
  store i8* %297, i8** %299, align 8
  br label %474

300:                                              ; preds = %283
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rxe_opcode, align 8
  %302 = load i32, i32* %11, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %8, align 4
  %307 = load i32, i32* %8, align 4
  %308 = load i32, i32* @RXE_READ_OR_ATOMIC, align 4
  %309 = and i32 %307, %308
  %310 = call i64 @unlikely(i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %319

312:                                              ; preds = %300
  %313 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %314 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %315 = call i64 @check_init_depth(%struct.rxe_qp* %313, %struct.rxe_send_wqe* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  br label %474

318:                                              ; preds = %312
  br label %319

319:                                              ; preds = %318, %300
  %320 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %321 = call i32 @get_mtu(%struct.rxe_qp* %320)
  store i32 %321, i32* %10, align 4
  %322 = load i32, i32* %8, align 4
  %323 = load i32, i32* @RXE_WRITE_OR_SEND, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %331

326:                                              ; preds = %319
  %327 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %328 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %327, i32 0, i32 5
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  br label %332

331:                                              ; preds = %319
  br label %332

332:                                              ; preds = %331, %326
  %333 = phi i32 [ %330, %326 ], [ 0, %331 ]
  store i32 %333, i32* %9, align 4
  %334 = load i32, i32* %9, align 4
  %335 = load i32, i32* %10, align 4
  %336 = icmp sgt i32 %334, %335
  br i1 %336, label %337, label %396

337:                                              ; preds = %332
  %338 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %339 = call i64 @qp_type(%struct.rxe_qp* %338)
  %340 = load i64, i64* @IB_QPT_UD, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %394

342:                                              ; preds = %337
  %343 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %344 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %343, i32 0, i32 3
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 4
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %348 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %347, i32 0, i32 1
  store i64 %346, i64* %348, align 8
  %349 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %350 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %349, i32 0, i32 3
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 4
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %354 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %353, i32 0, i32 2
  store i64 %352, i64* %354, align 8
  %355 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %356 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 4
  %358 = load i64, i64* %357, align 8
  %359 = add nsw i64 %358, 1
  %360 = load i32, i32* @BTH_PSN_MASK, align 4
  %361 = sext i32 %360 to i64
  %362 = and i64 %359, %361
  %363 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %364 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %363, i32 0, i32 3
  %365 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %364, i32 0, i32 4
  store i64 %362, i64* %365, align 8
  %366 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY, align 4
  %367 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %368 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %368, i32 0, i32 1
  store i32 %366, i32* %369, align 8
  %370 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %371 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %370, i32 0, i32 4
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %375 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %374, i32 0, i32 3
  %376 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %375, i32 0, i32 6
  %377 = load i8*, i8** %376, align 8
  %378 = call i8* @next_index(i32 %373, i8* %377)
  %379 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %380 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %379, i32 0, i32 3
  %381 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %380, i32 0, i32 6
  store i8* %378, i8** %381, align 8
  %382 = load i8*, i8** @wqe_state_done, align 8
  %383 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %384 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %383, i32 0, i32 3
  store i8* %382, i8** %384, align 8
  %385 = load i8*, i8** @IB_WC_SUCCESS, align 8
  %386 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %387 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %386, i32 0, i32 4
  store i8* %385, i8** %387, align 8
  %388 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %389 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %388, i32 0, i32 2
  %390 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %389, i32 0, i32 1
  %391 = call i32 @__rxe_do_task(i32* %390)
  %392 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %393 = call i32 @rxe_drop_ref(%struct.rxe_qp* %392)
  store i32 0, i32* %2, align 4
  br label %479

394:                                              ; preds = %337
  %395 = load i32, i32* %10, align 4
  store i32 %395, i32* %9, align 4
  br label %396

396:                                              ; preds = %394, %332
  %397 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %398 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %399 = load i32, i32* %11, align 4
  %400 = load i32, i32* %9, align 4
  %401 = call %struct.sk_buff* @init_req_packet(%struct.rxe_qp* %397, %struct.rxe_send_wqe* %398, i32 %399, i32 %400, %struct.rxe_pkt_info* %5)
  store %struct.sk_buff* %401, %struct.sk_buff** %6, align 8
  %402 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %403 = icmp ne %struct.sk_buff* %402, null
  %404 = xor i1 %403, true
  %405 = zext i1 %404 to i32
  %406 = call i64 @unlikely(i32 %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %412

408:                                              ; preds = %396
  %409 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %410 = call i32 @qp_num(%struct.rxe_qp* %409)
  %411 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %410)
  br label %463

412:                                              ; preds = %396
  %413 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %414 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %415 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %416 = load i32, i32* %9, align 4
  %417 = call i64 @fill_packet(%struct.rxe_qp* %413, %struct.rxe_send_wqe* %414, %struct.rxe_pkt_info* %5, %struct.sk_buff* %415, i32 %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %425

419:                                              ; preds = %412
  %420 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %421 = call i32 @qp_num(%struct.rxe_qp* %420)
  %422 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %421)
  %423 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %424 = call i32 @kfree_skb(%struct.sk_buff* %423)
  br label %463

425:                                              ; preds = %412
  %426 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %427 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %428 = call i32 @save_state(%struct.rxe_send_wqe* %426, %struct.rxe_qp* %427, %struct.rxe_send_wqe* %13, i32* %14)
  %429 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %430 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %431 = call i32 @update_wqe_state(%struct.rxe_qp* %429, %struct.rxe_send_wqe* %430, %struct.rxe_pkt_info* %5)
  %432 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %433 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %434 = load i32, i32* %9, align 4
  %435 = call i32 @update_wqe_psn(%struct.rxe_qp* %432, %struct.rxe_send_wqe* %433, %struct.rxe_pkt_info* %5, i32 %434)
  %436 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %437 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %438 = call i32 @rxe_xmit_packet(%struct.rxe_qp* %436, %struct.rxe_pkt_info* %5, %struct.sk_buff* %437)
  store i32 %438, i32* %12, align 4
  %439 = load i32, i32* %12, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %458

441:                                              ; preds = %425
  %442 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %443 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %442, i32 0, i32 1
  store i32 1, i32* %443, align 8
  %444 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %445 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %446 = load i32, i32* %14, align 4
  %447 = call i32 @rollback_state(%struct.rxe_send_wqe* %444, %struct.rxe_qp* %445, %struct.rxe_send_wqe* %13, i32 %446)
  %448 = load i32, i32* %12, align 4
  %449 = load i32, i32* @EAGAIN, align 4
  %450 = sub nsw i32 0, %449
  %451 = icmp eq i32 %448, %450
  br i1 %451, label %452, label %457

452:                                              ; preds = %441
  %453 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %454 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %453, i32 0, i32 3
  %455 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %454, i32 0, i32 5
  %456 = call i32 @rxe_run_task(i32* %455, i32 1)
  br label %474

457:                                              ; preds = %441
  br label %463

458:                                              ; preds = %425
  %459 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %460 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %461 = load i32, i32* %9, align 4
  %462 = call i32 @update_state(%struct.rxe_qp* %459, %struct.rxe_send_wqe* %460, %struct.rxe_pkt_info* %5, i32 %461)
  br label %22

463:                                              ; preds = %457, %419, %408
  %464 = load i8*, i8** @IB_WC_LOC_PROT_ERR, align 8
  %465 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %466 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %465, i32 0, i32 4
  store i8* %464, i8** %466, align 8
  %467 = load i8*, i8** @wqe_state_error, align 8
  %468 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %469 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %468, i32 0, i32 3
  store i8* %467, i8** %469, align 8
  %470 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %471 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %470, i32 0, i32 2
  %472 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %471, i32 0, i32 1
  %473 = call i32 @__rxe_do_task(i32* %472)
  br label %474

474:                                              ; preds = %463, %452, %317, %296, %280, %267, %211, %126, %93, %50, %39
  %475 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %476 = call i32 @rxe_drop_ref(%struct.rxe_qp* %475)
  %477 = load i32, i32* @EAGAIN, align 4
  %478 = sub nsw i32 0, %477
  store i32 %478, i32* %2, align 4
  br label %479

479:                                              ; preds = %474, %342
  %480 = load i32, i32* %2, align 4
  ret i32 %480
}

declare dso_local i32 @rxe_add_ref(%struct.rxe_qp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @consumer_index(i32) #1

declare dso_local i32 @req_retry(%struct.rxe_qp*) #1

declare dso_local %struct.rxe_send_wqe* @req_next_wqe(%struct.rxe_qp*) #1

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local %struct.rxe_qp* @rxe_pool_get_index(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_qp*) #1

declare dso_local %struct.rxe_qp* @to_rmr(%struct.TYPE_12__*) #1

declare dso_local i32 @rxe_run_task(i32*, i32) #1

declare dso_local i8* @next_index(i32, i8*) #1

declare dso_local i64 @qp_type(%struct.rxe_qp*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @next_opcode(%struct.rxe_qp*, %struct.rxe_send_wqe*, i32) #1

declare dso_local i64 @check_init_depth(%struct.rxe_qp*, %struct.rxe_send_wqe*) #1

declare dso_local i32 @get_mtu(%struct.rxe_qp*) #1

declare dso_local i32 @__rxe_do_task(i32*) #1

declare dso_local %struct.sk_buff* @init_req_packet(%struct.rxe_qp*, %struct.rxe_send_wqe*, i32, i32, %struct.rxe_pkt_info*) #1

declare dso_local i32 @qp_num(%struct.rxe_qp*) #1

declare dso_local i64 @fill_packet(%struct.rxe_qp*, %struct.rxe_send_wqe*, %struct.rxe_pkt_info*, %struct.sk_buff*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @save_state(%struct.rxe_send_wqe*, %struct.rxe_qp*, %struct.rxe_send_wqe*, i32*) #1

declare dso_local i32 @update_wqe_state(%struct.rxe_qp*, %struct.rxe_send_wqe*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @update_wqe_psn(%struct.rxe_qp*, %struct.rxe_send_wqe*, %struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @rxe_xmit_packet(%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.sk_buff*) #1

declare dso_local i32 @rollback_state(%struct.rxe_send_wqe*, %struct.rxe_qp*, %struct.rxe_send_wqe*, i32) #1

declare dso_local i32 @update_state(%struct.rxe_qp*, %struct.rxe_send_wqe*, %struct.rxe_pkt_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
