; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_ruc_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_ruc_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i32, i64, i64, i64, i64, i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_17__, i32, i32, i32, i32, i32, i32, %struct.TYPE_19__, %struct.TYPE_18__, i32 }
%struct.TYPE_17__ = type { i64, i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.TYPE_19__ = type { i32, i32, %struct.rvt_sge, %struct.rvt_sge* }
%struct.rvt_sge = type { i64, i32 }
%struct.TYPE_18__ = type { i32, %struct.rvt_sge, %struct.rvt_sge* }
%struct.rvt_ibport = type { i32, i32 }
%struct.rvt_dev_info = type { %struct.rvt_ibport** }
%struct.rvt_swqe = type { i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.rvt_sge*, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.ib_wc = type { i32, i32, i32, i8*, i32, i32, %struct.TYPE_17__*, i32, i32, %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.ib_event.0 = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }

@RVT_S_BUSY = common dso_local global i32 0, align 4
@RVT_S_ANY_WAIT = common dso_local global i32 0, align 4
@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_PROCESS_OR_FLUSH_SEND = common dso_local global i32 0, align 4
@RVT_PROCESS_NEXT_SEND_OK = common dso_local global i32 0, align 4
@RVT_FLUSH_SEND = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@RVT_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i8* null, align 8
@RVT_SEND_COMPLETION_ONLY = common dso_local global i32 0, align 4
@IB_WC_LOC_PROT_ERR = common dso_local global i8* null, align 8
@IB_WC_WITH_INVALIDATE = common dso_local global i8* null, align 8
@IB_WC_WITH_IMM = common dso_local global i8* null, align 8
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@IB_WC_LOC_QP_OP_ERR = common dso_local global i8* null, align 8
@RVT_R_WRID_VALID = common dso_local global i32 0, align 4
@IB_WC_RECV_RDMA_WITH_IMM = common dso_local global i32 0, align 4
@IB_WC_RECV = common dso_local global i32 0, align 4
@U16_MAX = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@IB_QPT_UC = common dso_local global i64 0, align 8
@IB_WC_RNR_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_AETH_CREDIT_SHIFT = common dso_local global i32 0, align 4
@IB_WC_REM_OP_ERR = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_WC_REM_INV_REQ_ERR = common dso_local global i8* null, align 8
@IB_WC_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_EVENT_QP_LAST_WQE_REACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvt_ruc_loopback(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.rvt_ibport*, align 8
  %4 = alloca %struct.rvt_dev_info*, align 8
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.rvt_swqe*, align 8
  %7 = alloca %struct.rvt_sge*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ib_wc, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ib_event.0, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  store %struct.rvt_ibport* null, %struct.rvt_ibport** %3, align 8
  %20 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %21 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %23)
  store %struct.rvt_dev_info* %24, %struct.rvt_dev_info** %4, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = call i32 (...) @rcu_read_lock()
  %26 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %27 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %26, i32 0, i32 0
  %28 = load %struct.rvt_ibport**, %struct.rvt_ibport*** %27, align 8
  %29 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %30 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.rvt_ibport*, %struct.rvt_ibport** %28, i64 %33
  %35 = load %struct.rvt_ibport*, %struct.rvt_ibport** %34, align 8
  store %struct.rvt_ibport* %35, %struct.rvt_ibport** %3, align 8
  %36 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %37 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %36, i32 0, i32 13
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %39)
  %41 = load %struct.rvt_ibport*, %struct.rvt_ibport** %3, align 8
  %42 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %43 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %42, i32 0, i32 17
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.rvt_qp* @rvt_lookup_qpn(%struct.rvt_dev_info* %40, %struct.rvt_ibport* %41, i32 %44)
  store %struct.rvt_qp* %45, %struct.rvt_qp** %5, align 8
  %46 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %47 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %46, i32 0, i32 12
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %51 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RVT_S_BUSY, align 4
  %54 = load i32, i32* @RVT_S_ANY_WAIT, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %1
  %59 = load i32*, i32** @ib_rvt_state_ops, align 8
  %60 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %61 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RVT_PROCESS_OR_FLUSH_SEND, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %58, %1
  br label %829

69:                                               ; preds = %58
  %70 = load i32, i32* @RVT_S_BUSY, align 4
  %71 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %72 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %676, %69
  %76 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %77 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %80 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %79, i32 0, i32 22
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @READ_ONCE(i32 %81)
  %83 = icmp eq i64 %78, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %822

85:                                               ; preds = %75
  %86 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %87 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %88 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %86, i64 %89)
  store %struct.rvt_swqe* %90, %struct.rvt_swqe** %6, align 8
  %91 = load i32*, i32** @ib_rvt_state_ops, align 8
  %92 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %93 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RVT_PROCESS_NEXT_SEND_OK, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %85
  %101 = load i32*, i32** @ib_rvt_state_ops, align 8
  %102 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %103 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @RVT_FLUSH_SEND, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %100
  br label %822

111:                                              ; preds = %100
  %112 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  store i32 %112, i32* %12, align 4
  br label %660

113:                                              ; preds = %85
  %114 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %115 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %118 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %116, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %113
  %122 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %123 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %127 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = icmp sge i64 %125, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %132 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %131, i32 0, i32 4
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %130, %121
  br label %134

134:                                              ; preds = %133, %113
  %135 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %136 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %135, i32 0, i32 12
  %137 = load i64, i64* %8, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  %139 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %140 = icmp ne %struct.rvt_qp* %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %134
  %142 = load %struct.rvt_ibport*, %struct.rvt_ibport** %3, align 8
  %143 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %144 = call i32 @loopback_qp_drop(%struct.rvt_ibport* %142, %struct.rvt_qp* %143)
  store i32 %144, i32* %12, align 4
  br label %767

145:                                              ; preds = %134
  %146 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %147 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %146, i32 0, i32 14
  %148 = load i64, i64* %8, align 8
  %149 = call i32 @spin_lock_irqsave(i32* %147, i64 %148)
  %150 = load i32*, i32** @ib_rvt_state_ops, align 8
  %151 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %152 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %145
  %160 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %161 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %160, i32 0, i32 13
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %165 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %164, i32 0, i32 13
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %163, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %159, %145
  %170 = load %struct.rvt_ibport*, %struct.rvt_ibport** %3, align 8
  %171 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %172 = call i32 @loopback_qp_drop(%struct.rvt_ibport* %170, %struct.rvt_qp* %171)
  store i32 %172, i32* %12, align 4
  br label %762

173:                                              ; preds = %159
  %174 = call i32 @memset(%struct.ib_wc* %9, i32 0, i32 64)
  %175 = load i8*, i8** @IB_WC_SUCCESS, align 8
  %176 = ptrtoint i8* %175 to i32
  store i32 %176, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %177 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %178 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %177, i32 0, i32 21
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 1
  %180 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %181 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %180, i32 0, i32 3
  %182 = load %struct.rvt_sge*, %struct.rvt_sge** %181, align 8
  %183 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %182, i64 0
  %184 = bitcast %struct.rvt_sge* %179 to i8*
  %185 = bitcast %struct.rvt_sge* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %184, i8* align 8 %185, i64 16, i1 false)
  %186 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %187 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %186, i32 0, i32 3
  %188 = load %struct.rvt_sge*, %struct.rvt_sge** %187, align 8
  %189 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %188, i64 1
  %190 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %191 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %190, i32 0, i32 21
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 2
  store %struct.rvt_sge* %189, %struct.rvt_sge** %192, align 8
  %193 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %194 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %198 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %197, i32 0, i32 21
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  store i32 %196, i32* %199, align 8
  %200 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %201 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %204 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %203, i32 0, i32 6
  store i32 %202, i32* %204, align 8
  %205 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %206 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  switch i32 %208, label %537 [
    i32 131, label %209
    i32 135, label %210
    i32 128, label %232
    i32 129, label %232
    i32 130, label %232
    i32 132, label %288
    i32 133, label %320
    i32 134, label %378
    i32 137, label %450
    i32 136, label %450
  ]

209:                                              ; preds = %173
  br label %647

210:                                              ; preds = %173
  %211 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %212 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @RVT_SEND_COMPLETION_ONLY, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %231, label %218

218:                                              ; preds = %210
  %219 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %220 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %221 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @rvt_invalidate_rkey(%struct.rvt_qp* %219, i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %218
  %228 = load i8*, i8** @IB_WC_LOC_PROT_ERR, align 8
  %229 = ptrtoint i8* %228 to i32
  store i32 %229, i32* %12, align 4
  br label %230

230:                                              ; preds = %227, %218
  store i32 1, i32* %16, align 4
  br label %231

231:                                              ; preds = %230, %210
  br label %647

232:                                              ; preds = %173, %173, %173
  %233 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %234 = call i32 @rvt_get_rwqe(%struct.rvt_qp* %233, i32 0)
  store i32 %234, i32* %14, align 4
  %235 = load i32, i32* %14, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %733

238:                                              ; preds = %232
  %239 = load i32, i32* %14, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %238
  br label %677

242:                                              ; preds = %238
  %243 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %244 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %247 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 4
  %249 = icmp sgt i32 %245, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %242
  br label %737

251:                                              ; preds = %242
  %252 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %253 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  switch i32 %255, label %286 [
    i32 128, label %256
    i32 129, label %276
  ]

256:                                              ; preds = %251
  %257 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %258 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %259 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @rvt_invalidate_rkey(%struct.rvt_qp* %257, i32 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %275, label %265

265:                                              ; preds = %256
  %266 = load i8*, i8** @IB_WC_WITH_INVALIDATE, align 8
  %267 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 10
  store i8* %266, i8** %267, align 8
  %268 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %269 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 9
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 4
  br label %275

275:                                              ; preds = %265, %256
  br label %287

276:                                              ; preds = %251
  %277 = load i8*, i8** @IB_WC_WITH_IMM, align 8
  %278 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 10
  store i8* %277, i8** %278, align 8
  %279 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %280 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 9
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 8
  br label %287

286:                                              ; preds = %251
  br label %287

287:                                              ; preds = %286, %276, %275
  br label %540

288:                                              ; preds = %173
  %289 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %290 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %289, i32 0, i32 8
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  %295 = xor i1 %294, true
  %296 = zext i1 %295 to i32
  %297 = call i32 @unlikely(i32 %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %288
  br label %737

300:                                              ; preds = %288
  %301 = load i8*, i8** @IB_WC_WITH_IMM, align 8
  %302 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 10
  store i8* %301, i8** %302, align 8
  %303 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %304 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 9
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 0
  store i32 %307, i32* %309, align 8
  %310 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %311 = call i32 @rvt_get_rwqe(%struct.rvt_qp* %310, i32 1)
  store i32 %311, i32* %14, align 4
  %312 = load i32, i32* %14, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %300
  br label %733

315:                                              ; preds = %300
  %316 = load i32, i32* %14, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %315
  br label %677

319:                                              ; preds = %315
  br label %335

320:                                              ; preds = %173
  %321 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %322 = call i32 @rvt_is_user_qp(%struct.rvt_qp* %321)
  store i32 %322, i32* %15, align 4
  %323 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %324 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %323, i32 0, i32 8
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  %329 = xor i1 %328, true
  %330 = zext i1 %329 to i32
  %331 = call i32 @unlikely(i32 %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %320
  br label %737

334:                                              ; preds = %320
  br label %335

335:                                              ; preds = %334, %319
  %336 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %337 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %335
  br label %540

341:                                              ; preds = %335
  %342 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %343 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %344 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %343, i32 0, i32 20
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 2
  %346 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %347 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %350 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %349, i32 0, i32 4
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %354 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %358 = call i32 @rvt_rkey_ok(%struct.rvt_qp* %342, %struct.rvt_sge* %345, i32 %348, i32 %352, i32 %356, i32 %357)
  %359 = icmp ne i32 %358, 0
  %360 = xor i1 %359, true
  %361 = zext i1 %360 to i32
  %362 = call i32 @unlikely(i32 %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %341
  br label %753

365:                                              ; preds = %341
  %366 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %367 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %366, i32 0, i32 20
  %368 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %367, i32 0, i32 3
  store %struct.rvt_sge* null, %struct.rvt_sge** %368, align 8
  %369 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %370 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %369, i32 0, i32 20
  %371 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %370, i32 0, i32 0
  store i32 1, i32* %371, align 8
  %372 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %373 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %376 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %375, i32 0, i32 20
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 1
  store i32 %374, i32* %377, align 4
  br label %540

378:                                              ; preds = %173
  %379 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %380 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %379, i32 0, i32 8
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  %385 = xor i1 %384, true
  %386 = zext i1 %385 to i32
  %387 = call i32 @unlikely(i32 %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %378
  br label %737

390:                                              ; preds = %378
  %391 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %392 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %393 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %392, i32 0, i32 21
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 1
  %395 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %396 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %399 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %398, i32 0, i32 4
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %403 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %402, i32 0, i32 4
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %407 = call i32 @rvt_rkey_ok(%struct.rvt_qp* %391, %struct.rvt_sge* %394, i32 %397, i32 %401, i32 %405, i32 %406)
  %408 = icmp ne i32 %407, 0
  %409 = xor i1 %408, true
  %410 = zext i1 %409 to i32
  %411 = call i32 @unlikely(i32 %410)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %390
  br label %753

414:                                              ; preds = %390
  store i32 0, i32* %13, align 4
  %415 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %416 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %415, i32 0, i32 21
  %417 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %416, i32 0, i32 2
  store %struct.rvt_sge* null, %struct.rvt_sge** %417, align 8
  %418 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %419 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %418, i32 0, i32 21
  %420 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %419, i32 0, i32 0
  store i32 1, i32* %420, align 8
  %421 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %422 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %421, i32 0, i32 20
  %423 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %422, i32 0, i32 2
  %424 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %425 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %424, i32 0, i32 3
  %426 = load %struct.rvt_sge*, %struct.rvt_sge** %425, align 8
  %427 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %426, i64 0
  %428 = bitcast %struct.rvt_sge* %423 to i8*
  %429 = bitcast %struct.rvt_sge* %427 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %428, i8* align 8 %429, i64 16, i1 false)
  %430 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %431 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %430, i32 0, i32 3
  %432 = load %struct.rvt_sge*, %struct.rvt_sge** %431, align 8
  %433 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %432, i64 1
  %434 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %435 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %434, i32 0, i32 20
  %436 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %435, i32 0, i32 3
  store %struct.rvt_sge* %433, %struct.rvt_sge** %436, align 8
  %437 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %438 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %442 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %441, i32 0, i32 20
  %443 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %442, i32 0, i32 0
  store i32 %440, i32* %443, align 8
  %444 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %445 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %448 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %447, i32 0, i32 20
  %449 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %448, i32 0, i32 1
  store i32 %446, i32* %449, align 4
  br label %540

450:                                              ; preds = %173, %173
  %451 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %452 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %451, i32 0, i32 8
  %453 = load i32, i32* %452, align 8
  %454 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %455 = and i32 %453, %454
  %456 = icmp ne i32 %455, 0
  %457 = xor i1 %456, true
  %458 = zext i1 %457 to i32
  %459 = call i32 @unlikely(i32 %458)
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %450
  br label %737

462:                                              ; preds = %450
  %463 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %464 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %465 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %464, i32 0, i32 20
  %466 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %465, i32 0, i32 2
  %467 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %468 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %467, i32 0, i32 2
  %469 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %468, i32 0, i32 3
  %470 = load i32, i32* %469, align 4
  %471 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %472 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %471, i32 0, i32 2
  %473 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %472, i32 0, i32 2
  %474 = load i32, i32* %473, align 8
  %475 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %476 = call i32 @rvt_rkey_ok(%struct.rvt_qp* %463, %struct.rvt_sge* %466, i32 8, i32 %470, i32 %474, i32 %475)
  %477 = icmp ne i32 %476, 0
  %478 = xor i1 %477, true
  %479 = zext i1 %478 to i32
  %480 = call i32 @unlikely(i32 %479)
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %462
  br label %753

483:                                              ; preds = %462
  %484 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %485 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %484, i32 0, i32 20
  %486 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %485, i32 0, i32 2
  %487 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %486, i32 0, i32 0
  %488 = load i64, i64* %487, align 8
  %489 = inttoptr i64 %488 to i32*
  store i32* %489, i32** %11, align 8
  %490 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %491 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %491, i32 0, i32 1
  %493 = load i64, i64* %492, align 8
  store i64 %493, i64* %10, align 8
  %494 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %495 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 4
  %498 = icmp eq i32 %497, 136
  br i1 %498, label %499, label %506

499:                                              ; preds = %483
  %500 = load i64, i64* %10, align 8
  %501 = load i32*, i32** %11, align 8
  %502 = call i32 @atomic64_add_return(i64 %500, i32* %501)
  %503 = sext i32 %502 to i64
  %504 = load i64, i64* %10, align 8
  %505 = sub nsw i64 %503, %504
  br label %520

506:                                              ; preds = %483
  %507 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %508 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %507, i32 0, i32 20
  %509 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = inttoptr i64 %511 to i64*
  %513 = load i64, i64* %10, align 8
  %514 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %515 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %514, i32 0, i32 2
  %516 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = call i32 @cmpxchg(i64* %512, i64 %513, i32 %517)
  %519 = sext i32 %518 to i64
  br label %520

520:                                              ; preds = %506, %499
  %521 = phi i64 [ %505, %499 ], [ %519, %506 ]
  %522 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %523 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %522, i32 0, i32 21
  %524 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %524, i32 0, i32 0
  %526 = load i64, i64* %525, align 8
  %527 = inttoptr i64 %526 to i64*
  store i64 %521, i64* %527, align 8
  %528 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %529 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %528, i32 0, i32 20
  %530 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %529, i32 0, i32 2
  %531 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %530, i32 0, i32 1
  %532 = load i32, i32* %531, align 8
  %533 = call i32 @rvt_put_mr(i32 %532)
  %534 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %535 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %534, i32 0, i32 20
  %536 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %535, i32 0, i32 0
  store i32 0, i32* %536, align 8
  br label %647

537:                                              ; preds = %173
  %538 = load i8*, i8** @IB_WC_LOC_QP_OP_ERR, align 8
  %539 = ptrtoint i8* %538 to i32
  store i32 %539, i32* %12, align 4
  br label %762

540:                                              ; preds = %414, %365, %340, %287
  %541 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %542 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %541, i32 0, i32 21
  %543 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %542, i32 0, i32 1
  store %struct.rvt_sge* %543, %struct.rvt_sge** %7, align 8
  br label %544

544:                                              ; preds = %549, %540
  %545 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %546 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %545, i32 0, i32 6
  %547 = load i32, i32* %546, align 8
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %584

549:                                              ; preds = %544
  %550 = load %struct.rvt_sge*, %struct.rvt_sge** %7, align 8
  %551 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %552 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %551, i32 0, i32 6
  %553 = load i32, i32* %552, align 8
  %554 = call i64 @rvt_get_sge_length(%struct.rvt_sge* %550, i32 %553)
  store i64 %554, i64* %17, align 8
  %555 = load i64, i64* %17, align 8
  %556 = icmp eq i64 %555, 0
  %557 = zext i1 %556 to i32
  %558 = call i32 @WARN_ON_ONCE(i32 %557)
  %559 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %560 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %561 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %560, i32 0, i32 20
  %562 = load %struct.rvt_sge*, %struct.rvt_sge** %7, align 8
  %563 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %562, i32 0, i32 0
  %564 = load i64, i64* %563, align 8
  %565 = load i64, i64* %17, align 8
  %566 = load i32, i32* %13, align 4
  %567 = load i32, i32* %15, align 4
  %568 = call i32 @rvt_copy_sge(%struct.rvt_qp* %559, %struct.TYPE_19__* %561, i64 %564, i64 %565, i32 %566, i32 %567)
  %569 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %570 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %569, i32 0, i32 21
  %571 = load i64, i64* %17, align 8
  %572 = load i32, i32* %13, align 4
  %573 = icmp ne i32 %572, 0
  %574 = xor i1 %573, true
  %575 = zext i1 %574 to i32
  %576 = call i32 @rvt_update_sge(%struct.TYPE_18__* %570, i64 %571, i32 %575)
  %577 = load i64, i64* %17, align 8
  %578 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %579 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %578, i32 0, i32 6
  %580 = load i32, i32* %579, align 8
  %581 = sext i32 %580 to i64
  %582 = sub nsw i64 %581, %577
  %583 = trunc i64 %582 to i32
  store i32 %583, i32* %579, align 8
  br label %544

584:                                              ; preds = %544
  %585 = load i32, i32* %13, align 4
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %591

587:                                              ; preds = %584
  %588 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %589 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %588, i32 0, i32 20
  %590 = call i32 @rvt_put_ss(%struct.TYPE_19__* %589)
  br label %591

591:                                              ; preds = %587, %584
  %592 = load i32, i32* @RVT_R_WRID_VALID, align 4
  %593 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %594 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %593, i32 0, i32 19
  %595 = call i32 @test_and_clear_bit(i32 %592, i32* %594)
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %598, label %597

597:                                              ; preds = %591
  br label %647

598:                                              ; preds = %591
  %599 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %600 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %599, i32 0, i32 1
  %601 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %600, i32 0, i32 1
  %602 = load i32, i32* %601, align 4
  %603 = icmp eq i32 %602, 132
  br i1 %603, label %604, label %607

604:                                              ; preds = %598
  %605 = load i32, i32* @IB_WC_RECV_RDMA_WITH_IMM, align 4
  %606 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 8
  store i32 %605, i32* %606, align 4
  br label %610

607:                                              ; preds = %598
  %608 = load i32, i32* @IB_WC_RECV, align 4
  %609 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 8
  store i32 %608, i32* %609, align 4
  br label %610

610:                                              ; preds = %607, %604
  %611 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %612 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %611, i32 0, i32 18
  %613 = load i32, i32* %612, align 8
  %614 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 7
  store i32 %613, i32* %614, align 8
  %615 = load i8*, i8** @IB_WC_SUCCESS, align 8
  %616 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 3
  store i8* %615, i8** %616, align 8
  %617 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %618 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 8
  %620 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 0
  store i32 %619, i32* %620, align 8
  %621 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %622 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %621, i32 0, i32 13
  %623 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 6
  store %struct.TYPE_17__* %622, %struct.TYPE_17__** %623, align 8
  %624 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %625 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %624, i32 0, i32 17
  %626 = load i32, i32* %625, align 4
  %627 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 5
  store i32 %626, i32* %627, align 4
  %628 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %629 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %628, i32 0, i32 16
  %630 = call i32 @rdma_ah_get_dlid(i32* %629)
  %631 = load i32, i32* @U16_MAX, align 4
  %632 = and i32 %630, %631
  %633 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 1
  store i32 %632, i32* %633, align 4
  %634 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %635 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %634, i32 0, i32 16
  %636 = call i32 @rdma_ah_get_sl(i32* %635)
  %637 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 4
  store i32 %636, i32* %637, align 8
  %638 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 2
  store i32 1, i32* %638, align 8
  %639 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %640 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %641 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %640, i32 0, i32 1
  %642 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %641, i32 0, i32 2
  %643 = load i32, i32* %642, align 4
  %644 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %645 = and i32 %643, %644
  %646 = call i32 @rvt_recv_cq(%struct.rvt_qp* %639, %struct.ib_wc* %9, i32 %645)
  br label %647

647:                                              ; preds = %684, %610, %597, %520, %231, %209
  %648 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %649 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %648, i32 0, i32 14
  %650 = load i64, i64* %8, align 8
  %651 = call i32 @spin_unlock_irqrestore(i32* %649, i64 %650)
  %652 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %653 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %652, i32 0, i32 12
  %654 = load i64, i64* %8, align 8
  %655 = call i32 @spin_lock_irqsave(i32* %653, i64 %654)
  %656 = load %struct.rvt_ibport*, %struct.rvt_ibport** %3, align 8
  %657 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %656, i32 0, i32 1
  %658 = load i32, i32* %657, align 4
  %659 = add nsw i32 %658, 1
  store i32 %659, i32* %657, align 4
  br label %660

660:                                              ; preds = %647, %111
  %661 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %662 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %661, i32 0, i32 10
  %663 = load i64, i64* %662, align 8
  %664 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %665 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %664, i32 0, i32 9
  store i64 %663, i64* %665, align 8
  %666 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %667 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %668 = load i32, i32* %12, align 4
  %669 = call i32 @rvt_send_complete(%struct.rvt_qp* %666, %struct.rvt_swqe* %667, i32 %668)
  %670 = load i32, i32* %16, align 4
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %672, label %676

672:                                              ; preds = %660
  %673 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %674 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %673, i32 0, i32 15
  %675 = call i32 @atomic_dec(i32* %674)
  store i32 0, i32* %16, align 4
  br label %676

676:                                              ; preds = %672, %660
  br label %75

677:                                              ; preds = %318, %241
  %678 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %679 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %678, i32 0, i32 13
  %680 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %679, i32 0, i32 0
  %681 = load i64, i64* %680, align 8
  %682 = load i64, i64* @IB_QPT_UC, align 8
  %683 = icmp eq i64 %681, %682
  br i1 %683, label %684, label %685

684:                                              ; preds = %677
  br label %647

685:                                              ; preds = %677
  %686 = load %struct.rvt_ibport*, %struct.rvt_ibport** %3, align 8
  %687 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %686, i32 0, i32 0
  %688 = load i32, i32* %687, align 4
  %689 = add nsw i32 %688, 1
  store i32 %689, i32* %687, align 4
  %690 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %691 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %690, i32 0, i32 9
  %692 = load i64, i64* %691, align 8
  %693 = icmp eq i64 %692, 0
  br i1 %693, label %694, label %696

694:                                              ; preds = %685
  %695 = load i32, i32* @IB_WC_RNR_RETRY_EXC_ERR, align 4
  store i32 %695, i32* %12, align 4
  br label %762

696:                                              ; preds = %685
  %697 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %698 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %697, i32 0, i32 10
  %699 = load i64, i64* %698, align 8
  %700 = icmp slt i64 %699, 7
  br i1 %700, label %701, label %706

701:                                              ; preds = %696
  %702 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %703 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %702, i32 0, i32 9
  %704 = load i64, i64* %703, align 8
  %705 = add nsw i64 %704, -1
  store i64 %705, i64* %703, align 8
  br label %706

706:                                              ; preds = %701, %696
  %707 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %708 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %707, i32 0, i32 14
  %709 = load i64, i64* %8, align 8
  %710 = call i32 @spin_unlock_irqrestore(i32* %708, i64 %709)
  %711 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %712 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %711, i32 0, i32 12
  %713 = load i64, i64* %8, align 8
  %714 = call i32 @spin_lock_irqsave(i32* %712, i64 %713)
  %715 = load i32*, i32** @ib_rvt_state_ops, align 8
  %716 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %717 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %716, i32 0, i32 2
  %718 = load i64, i64* %717, align 8
  %719 = getelementptr inbounds i32, i32* %715, i64 %718
  %720 = load i32, i32* %719, align 4
  %721 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %722 = and i32 %720, %721
  %723 = icmp ne i32 %722, 0
  br i1 %723, label %725, label %724

724:                                              ; preds = %706
  br label %822

725:                                              ; preds = %706
  %726 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %727 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %728 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %727, i32 0, i32 11
  %729 = load i32, i32* %728, align 8
  %730 = load i32, i32* @IB_AETH_CREDIT_SHIFT, align 4
  %731 = shl i32 %729, %730
  %732 = call i32 @rvt_add_rnr_timer(%struct.rvt_qp* %726, i32 %731)
  br label %822

733:                                              ; preds = %314, %237
  %734 = load i32, i32* @IB_WC_REM_OP_ERR, align 4
  store i32 %734, i32* %12, align 4
  %735 = load i8*, i8** @IB_WC_LOC_QP_OP_ERR, align 8
  %736 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 3
  store i8* %735, i8** %736, align 8
  br label %757

737:                                              ; preds = %461, %389, %333, %299, %250
  %738 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %739 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %738, i32 0, i32 13
  %740 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %739, i32 0, i32 0
  %741 = load i64, i64* %740, align 8
  %742 = load i64, i64* @IB_QPT_RC, align 8
  %743 = icmp eq i64 %741, %742
  br i1 %743, label %744, label %746

744:                                              ; preds = %737
  %745 = load i8*, i8** @IB_WC_REM_INV_REQ_ERR, align 8
  br label %748

746:                                              ; preds = %737
  %747 = load i8*, i8** @IB_WC_SUCCESS, align 8
  br label %748

748:                                              ; preds = %746, %744
  %749 = phi i8* [ %745, %744 ], [ %747, %746 ]
  %750 = ptrtoint i8* %749 to i32
  store i32 %750, i32* %12, align 4
  %751 = load i8*, i8** @IB_WC_LOC_QP_OP_ERR, align 8
  %752 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 3
  store i8* %751, i8** %752, align 8
  br label %757

753:                                              ; preds = %482, %413, %364
  %754 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %754, i32* %12, align 4
  %755 = load i8*, i8** @IB_WC_LOC_PROT_ERR, align 8
  %756 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 3
  store i8* %755, i8** %756, align 8
  br label %757

757:                                              ; preds = %753, %748, %733
  %758 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %759 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 3
  %760 = load i8*, i8** %759, align 8
  %761 = call i32 @rvt_rc_error(%struct.rvt_qp* %758, i8* %760)
  br label %762

762:                                              ; preds = %757, %694, %537, %169
  %763 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %764 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %763, i32 0, i32 14
  %765 = load i64, i64* %8, align 8
  %766 = call i32 @spin_unlock_irqrestore(i32* %764, i64 %765)
  br label %767

767:                                              ; preds = %762, %141
  %768 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %769 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %768, i32 0, i32 12
  %770 = load i64, i64* %8, align 8
  %771 = call i32 @spin_lock_irqsave(i32* %769, i64 %770)
  %772 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %773 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %774 = load i32, i32* %12, align 4
  %775 = call i32 @rvt_send_complete(%struct.rvt_qp* %772, %struct.rvt_swqe* %773, i32 %774)
  %776 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %777 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %776, i32 0, i32 13
  %778 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %777, i32 0, i32 0
  %779 = load i64, i64* %778, align 8
  %780 = load i64, i64* @IB_QPT_RC, align 8
  %781 = icmp eq i64 %779, %780
  br i1 %781, label %782, label %821

782:                                              ; preds = %767
  %783 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %784 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %785 = call i32 @rvt_error_qp(%struct.rvt_qp* %783, i32 %784)
  store i32 %785, i32* %18, align 4
  %786 = load i32, i32* @RVT_S_BUSY, align 4
  %787 = xor i32 %786, -1
  %788 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %789 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %788, i32 0, i32 1
  %790 = load i32, i32* %789, align 4
  %791 = and i32 %790, %787
  store i32 %791, i32* %789, align 4
  %792 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %793 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %792, i32 0, i32 12
  %794 = load i64, i64* %8, align 8
  %795 = call i32 @spin_unlock_irqrestore(i32* %793, i64 %794)
  %796 = load i32, i32* %18, align 4
  %797 = icmp ne i32 %796, 0
  br i1 %797, label %798, label %820

798:                                              ; preds = %782
  %799 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %800 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %799, i32 0, i32 13
  %801 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %800, i32 0, i32 3
  %802 = load i32, i32* %801, align 8
  %803 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %19, i32 0, i32 2
  store i32 %802, i32* %803, align 8
  %804 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %805 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %804, i32 0, i32 13
  %806 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %19, i32 0, i32 1
  %807 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %806, i32 0, i32 0
  store %struct.TYPE_17__* %805, %struct.TYPE_17__** %807, align 8
  %808 = load i32, i32* @IB_EVENT_QP_LAST_WQE_REACHED, align 4
  %809 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %19, i32 0, i32 0
  store i32 %808, i32* %809, align 8
  %810 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %811 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %810, i32 0, i32 13
  %812 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %811, i32 0, i32 2
  %813 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %812, align 8
  %814 = bitcast %struct.ib_event.0* %19 to %struct.ib_event*
  %815 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %816 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %815, i32 0, i32 13
  %817 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %816, i32 0, i32 1
  %818 = load i32, i32* %817, align 8
  %819 = call i32 %813(%struct.ib_event* %814, i32 %818)
  br label %820

820:                                              ; preds = %798, %782
  br label %834

821:                                              ; preds = %767
  br label %822

822:                                              ; preds = %821, %725, %724, %110, %84
  %823 = load i32, i32* @RVT_S_BUSY, align 4
  %824 = xor i32 %823, -1
  %825 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %826 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %825, i32 0, i32 1
  %827 = load i32, i32* %826, align 4
  %828 = and i32 %827, %824
  store i32 %828, i32* %826, align 4
  br label %829

829:                                              ; preds = %822, %68
  %830 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %831 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %830, i32 0, i32 12
  %832 = load i64, i64* %8, align 8
  %833 = call i32 @spin_unlock_irqrestore(i32* %831, i64 %832)
  br label %834

834:                                              ; preds = %829, %820
  %835 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rvt_qp* @rvt_lookup_qpn(%struct.rvt_dev_info*, %struct.rvt_ibport*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @loopback_qp_drop(%struct.rvt_ibport*, %struct.rvt_qp*) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rvt_invalidate_rkey(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rvt_get_rwqe(%struct.rvt_qp*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @rvt_is_user_qp(%struct.rvt_qp*) #1

declare dso_local i32 @rvt_rkey_ok(%struct.rvt_qp*, %struct.rvt_sge*, i32, i32, i32, i32) #1

declare dso_local i32 @atomic64_add_return(i64, i32*) #1

declare dso_local i32 @cmpxchg(i64*, i64, i32) #1

declare dso_local i32 @rvt_put_mr(i32) #1

declare dso_local i64 @rvt_get_sge_length(%struct.rvt_sge*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rvt_copy_sge(%struct.rvt_qp*, %struct.TYPE_19__*, i64, i64, i32, i32) #1

declare dso_local i32 @rvt_update_sge(%struct.TYPE_18__*, i64, i32) #1

declare dso_local i32 @rvt_put_ss(%struct.TYPE_19__*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @rdma_ah_get_dlid(i32*) #1

declare dso_local i32 @rdma_ah_get_sl(i32*) #1

declare dso_local i32 @rvt_recv_cq(%struct.rvt_qp*, %struct.ib_wc*, i32) #1

declare dso_local i32 @rvt_send_complete(%struct.rvt_qp*, %struct.rvt_swqe*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @rvt_add_rnr_timer(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rvt_rc_error(%struct.rvt_qp*, i8*) #1

declare dso_local i32 @rvt_error_qp(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
