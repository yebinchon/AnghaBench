; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_do_rc_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_do_rc_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_7__, i64, i32, %struct.hfi1_qp_priv* }
%struct.TYPE_7__ = type { i32 }
%struct.hfi1_qp_priv = type { i64, i32, i32 }
%struct.hfi1_ctxtdata = type { i32 }
%struct.hfi1_ibport = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32* }
%struct.rvt_swqe = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32* }
%struct.rvt_dev_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@IB_AETH_NAK_SHIFT = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@RDMA_READ_RESPONSE_ONLY = common dso_local global i32 0, align 4
@RDMA_READ_RESPONSE_LAST = common dso_local global i32 0, align 4
@IB_WR_TID_RDMA_READ = common dso_local global i64 0, align 8
@READ_RESP = common dso_local global i32 0, align 4
@IB_WR_ATOMIC_CMP_AND_SWP = common dso_local global i64 0, align 8
@IB_WR_ATOMIC_FETCH_AND_ADD = common dso_local global i64 0, align 8
@ATOMIC_ACKNOWLEDGE = common dso_local global i32 0, align 4
@IB_WR_TID_RDMA_WRITE = common dso_local global i64 0, align 8
@IB_WR_OPFN = common dso_local global i64 0, align 8
@RVT_S_WAIT_FENCE = common dso_local global i32 0, align 4
@RVT_S_WAIT_ACK = common dso_local global i32 0, align 4
@RVT_S_WAIT_RDMAR = common dso_local global i32 0, align 4
@HFI1_QP_WQE_INVALID = common dso_local global i64 0, align 8
@WRITE_RESP = common dso_local global i32 0, align 4
@SEND_LAST = common dso_local global i32 0, align 4
@RVT_S_WAIT_RNR = common dso_local global i32 0, align 4
@RVT_OPERATION_IGN_RNR_CNT = common dso_local global i32 0, align 4
@IB_WC_RNR_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@RVT_S_WAIT_SSN_CREDIT = common dso_local global i32 0, align 4
@IB_AETH_CREDIT_SHIFT = common dso_local global i32 0, align 4
@IB_AETH_CREDIT_MASK = common dso_local global i32 0, align 4
@IB_WC_REM_INV_REQ_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_rc_ack(%struct.rvt_qp* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.hfi1_ctxtdata* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rvt_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hfi1_ctxtdata*, align 8
  %14 = alloca %struct.hfi1_ibport*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.hfi1_qp_priv*, align 8
  %17 = alloca %struct.rvt_swqe*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.rvt_dev_info*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.rvt_swqe*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.hfi1_ctxtdata* %5, %struct.hfi1_ctxtdata** %13, align 8
  %24 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %25 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %24, i32 0, i32 15
  %26 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %25, align 8
  store %struct.hfi1_qp_priv* %26, %struct.hfi1_qp_priv** %16, align 8
  store i32 0, i32* %18, align 4
  %27 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %28 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %27, i32 0, i32 14
  %29 = call i32 @lockdep_assert_held(i32* %28)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @IB_AETH_NAK_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load i32, i32* %19, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %19, align 4
  br label %38

38:                                               ; preds = %35, %6
  %39 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %40 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %41 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %39, i64 %42)
  store %struct.rvt_swqe* %43, %struct.rvt_swqe** %17, align 8
  %44 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %13, align 8
  %45 = call %struct.hfi1_ibport* @rcd_to_iport(%struct.hfi1_ctxtdata* %44)
  store %struct.hfi1_ibport* %45, %struct.hfi1_ibport** %14, align 8
  br label %46

46:                                               ; preds = %267, %38
  %47 = load i32, i32* %19, align 4
  %48 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %49 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @delta_psn(i32 %47, i32 %50)
  store i32 %51, i32* %20, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %268

53:                                               ; preds = %46
  %54 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %55 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @RDMA_READ_RESPONSE_ONLY, align 4
  %63 = call i32 @OP(i32 %62)
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* %20, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %18, align 4
  br label %689

69:                                               ; preds = %65, %60, %53
  %70 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %71 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @RDMA_READ_RESPONSE_LAST, align 4
  %79 = call i32 @OP(i32 %78)
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %135, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %20, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %135, label %84

84:                                               ; preds = %81, %69
  %85 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %86 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IB_WR_TID_RDMA_READ, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @READ_RESP, align 4
  %94 = call i32 @TID_OP(i32 %93)
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %135, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %20, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %135, label %99

99:                                               ; preds = %96, %84
  %100 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %101 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %99
  %107 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %108 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %106, %99
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @ATOMIC_ACKNOWLEDGE, align 4
  %116 = call i32 @OP(i32 %115)
  %117 = icmp ne i32 %114, %116
  br i1 %117, label %135, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %20, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %135, label %121

121:                                              ; preds = %118, %106
  %122 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %123 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @IB_WR_TID_RDMA_WRITE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %121
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %131 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @delta_psn(i32 %129, i32 %132)
  %134 = icmp ne i32 %133, 1
  br i1 %134, label %135, label %139

135:                                              ; preds = %128, %118, %113, %96, %91, %81, %76
  %136 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %137 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %13, align 8
  %138 = call i32 @set_restart_qp(%struct.rvt_qp* %136, %struct.hfi1_ctxtdata* %137)
  br label %689

139:                                              ; preds = %128, %121
  %140 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %141 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %153, label %146

146:                                              ; preds = %139
  %147 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %148 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %146, %139
  %154 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %155 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %154, i32 0, i32 3
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  store i32* %159, i32** %22, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load i32*, i32** %22, align 8
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %153, %146
  %163 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %164 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @IB_WR_OPFN, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @opfn_conn_reply(%struct.rvt_qp* %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %162
  %174 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %175 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %174, i32 0, i32 13
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %246

178:                                              ; preds = %173
  %179 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %180 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %199, label %185

185:                                              ; preds = %178
  %186 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %187 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %199, label %192

192:                                              ; preds = %185
  %193 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %194 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %246

199:                                              ; preds = %192, %185, %178
  %200 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %201 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %200, i32 0, i32 13
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, -1
  store i64 %203, i64* %201, align 8
  %204 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %205 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @RVT_S_WAIT_FENCE, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %226

210:                                              ; preds = %199
  %211 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %212 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %211, i32 0, i32 13
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %226, label %215

215:                                              ; preds = %210
  %216 = load i32, i32* @RVT_S_WAIT_FENCE, align 4
  %217 = load i32, i32* @RVT_S_WAIT_ACK, align 4
  %218 = or i32 %216, %217
  %219 = xor i32 %218, -1
  %220 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %221 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, %219
  store i32 %223, i32* %221, align 4
  %224 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %225 = call i32 @hfi1_schedule_send(%struct.rvt_qp* %224)
  br label %245

226:                                              ; preds = %210, %199
  %227 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %228 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @RVT_S_WAIT_RDMAR, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %244

233:                                              ; preds = %226
  %234 = load i32, i32* @RVT_S_WAIT_RDMAR, align 4
  %235 = load i32, i32* @RVT_S_WAIT_ACK, align 4
  %236 = or i32 %234, %235
  %237 = xor i32 %236, -1
  %238 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %239 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, %237
  store i32 %241, i32* %239, align 4
  %242 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %243 = call i32 @hfi1_schedule_send(%struct.rvt_qp* %242)
  br label %244

244:                                              ; preds = %233, %226
  br label %245

245:                                              ; preds = %244, %215
  br label %246

246:                                              ; preds = %245, %192, %173
  %247 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %248 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @IB_WR_TID_RDMA_WRITE, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %246
  br label %268

254:                                              ; preds = %246
  %255 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %256 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %257 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %14, align 8
  %258 = call %struct.rvt_swqe* @do_rc_completion(%struct.rvt_qp* %255, %struct.rvt_swqe* %256, %struct.hfi1_ibport* %257)
  store %struct.rvt_swqe* %258, %struct.rvt_swqe** %17, align 8
  %259 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %260 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %263 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %261, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %254
  br label %268

267:                                              ; preds = %254
  br label %46

268:                                              ; preds = %266, %253, %46
  %269 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %270 = load i32, i32* %9, align 4
  %271 = load i32, i32* %10, align 4
  %272 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %273 = call i32 @trace_hfi1_rc_ack_do(%struct.rvt_qp* %269, i32 %270, i32 %271, %struct.rvt_swqe* %272)
  %274 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %275 = call i32 @trace_hfi1_sender_do_rc_ack(%struct.rvt_qp* %274)
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* @IB_AETH_NAK_SHIFT, align 4
  %278 = ashr i32 %276, %277
  switch i32 %278, label %687 [
    i32 0, label %279
    i32 1, label %483
    i32 3, label %597
  ]

279:                                              ; preds = %268
  %280 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %14, align 8
  %281 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 4
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @this_cpu_inc(i32 %284)
  %286 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %287 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @IB_WR_TID_RDMA_READ, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %308

292:                                              ; preds = %279
  %293 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %294 = call %struct.TYPE_12__* @wqe_to_tid_req(%struct.rvt_swqe* %293)
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %292
  %299 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %300 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %16, align 8
  %301 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @rvt_mod_retry_timer_ext(%struct.rvt_qp* %299, i32 %302)
  br label %307

304:                                              ; preds = %292
  %305 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %306 = call i32 @rvt_stop_rc_timers(%struct.rvt_qp* %305)
  br label %307

307:                                              ; preds = %304, %298
  br label %430

308:                                              ; preds = %279
  %309 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %310 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %313 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %311, %314
  br i1 %315, label %316, label %410

316:                                              ; preds = %308
  store %struct.rvt_swqe* null, %struct.rvt_swqe** %23, align 8
  %317 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %16, align 8
  %318 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @HFI1_QP_WQE_INVALID, align 8
  %321 = icmp ne i64 %319, %320
  br i1 %321, label %322, label %328

322:                                              ; preds = %316
  %323 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %324 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %16, align 8
  %325 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %323, i64 %326)
  store %struct.rvt_swqe* %327, %struct.rvt_swqe** %23, align 8
  br label %328

328:                                              ; preds = %322, %316
  %329 = load %struct.rvt_swqe*, %struct.rvt_swqe** %23, align 8
  %330 = icmp ne %struct.rvt_swqe* %329, null
  br i1 %330, label %331, label %394

331:                                              ; preds = %328
  %332 = load %struct.rvt_swqe*, %struct.rvt_swqe** %23, align 8
  %333 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @IB_WR_TID_RDMA_WRITE, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %394

338:                                              ; preds = %331
  %339 = load i32, i32* %11, align 4
  %340 = load i32, i32* @WRITE_RESP, align 4
  %341 = call i32 @TID_OP(i32 %340)
  %342 = icmp eq i32 %339, %341
  br i1 %342, label %343, label %394

343:                                              ; preds = %338
  %344 = load i32, i32* %10, align 4
  %345 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %346 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = add nsw i32 %347, 1
  %349 = call i32 @cmp_psn(i32 %344, i32 %348)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %343
  %352 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %353 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %13, align 8
  %354 = call i32 @set_restart_qp(%struct.rvt_qp* %352, %struct.hfi1_ctxtdata* %353)
  br label %689

355:                                              ; preds = %343
  %356 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %357 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %356, i32 0, i32 4
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %360 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %359, i32 0, i32 3
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %358, %361
  br i1 %362, label %363, label %380

363:                                              ; preds = %355
  %364 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %365 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %364, i32 0, i32 5
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* %10, align 4
  %368 = call i32 @cmp_psn(i32 %366, i32 %367)
  %369 = icmp sle i32 %368, 0
  br i1 %369, label %370, label %380

370:                                              ; preds = %363
  %371 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %372 = load i32, i32* %10, align 4
  %373 = load %struct.rvt_swqe*, %struct.rvt_swqe** %23, align 8
  %374 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.rvt_swqe*, %struct.rvt_swqe** %23, align 8
  %377 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @update_qp_retry_state(%struct.rvt_qp* %371, i32 %372, i32 %375, i32 %378)
  br label %393

380:                                              ; preds = %363, %355
  %381 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %16, align 8
  %382 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = add nsw i32 %383, -1
  store i32 %384, i32* %382, align 8
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %380
  %387 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %388 = call i32 @rvt_mod_retry_timer(%struct.rvt_qp* %387)
  br label %392

389:                                              ; preds = %380
  %390 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %391 = call i32 @rvt_stop_rc_timers(%struct.rvt_qp* %390)
  br label %392

392:                                              ; preds = %389, %386
  br label %393

393:                                              ; preds = %392, %370
  br label %409

394:                                              ; preds = %338, %331, %328
  %395 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %396 = call i32 @rvt_mod_retry_timer(%struct.rvt_qp* %395)
  %397 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %398 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %397, i32 0, i32 5
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* %10, align 4
  %401 = call i32 @cmp_psn(i32 %399, i32 %400)
  %402 = icmp sle i32 %401, 0
  br i1 %402, label %403, label %408

403:                                              ; preds = %394
  %404 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %405 = load i32, i32* %10, align 4
  %406 = add nsw i32 %405, 1
  %407 = call i32 @reset_psn(%struct.rvt_qp* %404, i32 %406)
  br label %408

408:                                              ; preds = %403, %394
  br label %409

409:                                              ; preds = %408, %393
  br label %429

410:                                              ; preds = %308
  %411 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %412 = call i32 @rvt_stop_rc_timers(%struct.rvt_qp* %411)
  %413 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %414 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %413, i32 0, i32 5
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* %10, align 4
  %417 = call i32 @cmp_psn(i32 %415, i32 %416)
  %418 = icmp sle i32 %417, 0
  br i1 %418, label %419, label %428

419:                                              ; preds = %410
  %420 = load i32, i32* @SEND_LAST, align 4
  %421 = call i32 @OP(i32 %420)
  %422 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %423 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %422, i32 0, i32 6
  store i32 %421, i32* %423, align 4
  %424 = load i32, i32* %10, align 4
  %425 = add nsw i32 %424, 1
  %426 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %427 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %426, i32 0, i32 5
  store i32 %425, i32* %427, align 8
  br label %428

428:                                              ; preds = %419, %410
  br label %429

429:                                              ; preds = %428, %409
  br label %430

430:                                              ; preds = %429, %307
  %431 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %432 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @RVT_S_WAIT_ACK, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %446

437:                                              ; preds = %430
  %438 = load i32, i32* @RVT_S_WAIT_ACK, align 4
  %439 = xor i32 %438, -1
  %440 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %441 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 4
  %443 = and i32 %442, %439
  store i32 %443, i32* %441, align 4
  %444 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %445 = call i32 @hfi1_schedule_send(%struct.rvt_qp* %444)
  br label %446

446:                                              ; preds = %437, %430
  %447 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %448 = load i32, i32* %9, align 4
  %449 = call i32 @rvt_get_credit(%struct.rvt_qp* %447, i32 %448)
  %450 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %451 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %450, i32 0, i32 8
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %454 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %453, i32 0, i32 7
  store i32 %452, i32* %454, align 8
  %455 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %456 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %455, i32 0, i32 10
  %457 = load i32, i32* %456, align 8
  %458 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %459 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %458, i32 0, i32 11
  store i32 %457, i32* %459, align 4
  %460 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %461 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %460, i32 0, i32 2
  %462 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = load i64, i64* @IB_WR_TID_RDMA_WRITE, align 8
  %465 = icmp eq i64 %463, %464
  br i1 %465, label %466, label %479

466:                                              ; preds = %446
  %467 = load i32, i32* %11, align 4
  %468 = load i32, i32* @WRITE_RESP, align 4
  %469 = call i32 @TID_OP(i32 %468)
  %470 = icmp ne i32 %467, %469
  br i1 %470, label %471, label %479

471:                                              ; preds = %466
  %472 = load i32, i32* %10, align 4
  %473 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %474 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @cmp_psn(i32 %472, i32 %475)
  %477 = icmp sge i32 %476, 0
  br i1 %477, label %478, label %479

478:                                              ; preds = %471
  store i32 1, i32* %7, align 4
  br label %693

479:                                              ; preds = %471, %466, %446
  %480 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %481 = load i32, i32* %10, align 4
  %482 = call i32 @update_last_psn(%struct.rvt_qp* %480, i32 %481)
  store i32 1, i32* %7, align 4
  br label %693

483:                                              ; preds = %268
  %484 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %14, align 8
  %485 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %485, i32 0, i32 3
  %487 = load i32, i32* %486, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %486, align 4
  %489 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %490 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %489, i32 0, i32 0
  %491 = load i64, i64* %490, align 8
  %492 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %493 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %492, i32 0, i32 3
  %494 = load i64, i64* %493, align 8
  %495 = icmp eq i64 %491, %494
  br i1 %495, label %496, label %497

496:                                              ; preds = %483
  br label %689

497:                                              ; preds = %483
  %498 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %499 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %498, i32 0, i32 2
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* @RVT_S_WAIT_RNR, align 4
  %502 = and i32 %500, %501
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %505

504:                                              ; preds = %497
  br label %689

505:                                              ; preds = %497
  %506 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %507 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %506, i32 0, i32 12
  %508 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %509)
  store %struct.rvt_dev_info* %510, %struct.rvt_dev_info** %21, align 8
  %511 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %512 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %511, i32 0, i32 7
  %513 = load i32, i32* %512, align 8
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %536

515:                                              ; preds = %505
  %516 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %21, align 8
  %517 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %516, i32 0, i32 0
  %518 = load %struct.TYPE_8__*, %struct.TYPE_8__** %517, align 8
  %519 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %520 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %519, i32 0, i32 2
  %521 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %520, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %518, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  %526 = load i32, i32* @RVT_OPERATION_IGN_RNR_CNT, align 4
  %527 = and i32 %525, %526
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %534

529:                                              ; preds = %515
  %530 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %531 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %530, i32 0, i32 8
  %532 = load i32, i32* %531, align 4
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %536, label %534

534:                                              ; preds = %529, %515
  %535 = load i32, i32* @IB_WC_RNR_RETRY_EXC_ERR, align 4
  store i32 %535, i32* %15, align 4
  br label %648

536:                                              ; preds = %529, %505
  %537 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %538 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %537, i32 0, i32 8
  %539 = load i32, i32* %538, align 4
  %540 = icmp slt i32 %539, 7
  br i1 %540, label %541, label %551

541:                                              ; preds = %536
  %542 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %543 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %542, i32 0, i32 8
  %544 = load i32, i32* %543, align 4
  %545 = icmp sgt i32 %544, 0
  br i1 %545, label %546, label %551

546:                                              ; preds = %541
  %547 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %548 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %547, i32 0, i32 7
  %549 = load i32, i32* %548, align 8
  %550 = add nsw i32 %549, -1
  store i32 %550, i32* %548, align 8
  br label %551

551:                                              ; preds = %546, %541, %536
  %552 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %553 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %552, i32 0, i32 2
  %554 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %553, i32 0, i32 0
  %555 = load i64, i64* %554, align 8
  %556 = load i64, i64* @IB_WR_TID_RDMA_WRITE, align 8
  %557 = icmp eq i64 %555, %556
  br i1 %557, label %558, label %565

558:                                              ; preds = %551
  %559 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %560 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %561 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 8
  %563 = add nsw i32 %562, 1
  %564 = call i32 @reset_psn(%struct.rvt_qp* %559, i32 %563)
  br label %573

565:                                              ; preds = %551
  %566 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %567 = load i32, i32* %10, align 4
  %568 = sub nsw i32 %567, 1
  %569 = call i32 @update_last_psn(%struct.rvt_qp* %566, i32 %568)
  %570 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %571 = load i32, i32* %10, align 4
  %572 = call i32 @reset_psn(%struct.rvt_qp* %570, i32 %571)
  br label %573

573:                                              ; preds = %565, %558
  %574 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %575 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %574, i32 0, i32 5
  %576 = load i32, i32* %575, align 8
  %577 = load i32, i32* %10, align 4
  %578 = call i32 @delta_psn(i32 %576, i32 %577)
  %579 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %14, align 8
  %580 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %579, i32 0, i32 0
  %581 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 8
  %583 = add nsw i32 %582, %578
  store i32 %583, i32* %581, align 8
  %584 = load i32, i32* @RVT_S_WAIT_SSN_CREDIT, align 4
  %585 = load i32, i32* @RVT_S_WAIT_ACK, align 4
  %586 = or i32 %584, %585
  %587 = xor i32 %586, -1
  %588 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %589 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %588, i32 0, i32 2
  %590 = load i32, i32* %589, align 4
  %591 = and i32 %590, %587
  store i32 %591, i32* %589, align 4
  %592 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %593 = call i32 @rvt_stop_rc_timers(%struct.rvt_qp* %592)
  %594 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %595 = load i32, i32* %9, align 4
  %596 = call i32 @rvt_add_rnr_timer(%struct.rvt_qp* %594, i32 %595)
  store i32 0, i32* %7, align 4
  br label %693

597:                                              ; preds = %268
  %598 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %599 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %598, i32 0, i32 0
  %600 = load i64, i64* %599, align 8
  %601 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %602 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %601, i32 0, i32 3
  %603 = load i64, i64* %602, align 8
  %604 = icmp eq i64 %600, %603
  br i1 %604, label %605, label %606

605:                                              ; preds = %597
  br label %689

606:                                              ; preds = %597
  %607 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %608 = load i32, i32* %10, align 4
  %609 = sub nsw i32 %608, 1
  %610 = call i32 @update_last_psn(%struct.rvt_qp* %607, i32 %609)
  %611 = load i32, i32* %9, align 4
  %612 = load i32, i32* @IB_AETH_CREDIT_SHIFT, align 4
  %613 = ashr i32 %611, %612
  %614 = load i32, i32* @IB_AETH_CREDIT_MASK, align 4
  %615 = and i32 %613, %614
  switch i32 %615, label %675 [
    i32 0, label %616
    i32 1, label %627
    i32 2, label %634
    i32 3, label %641
  ]

616:                                              ; preds = %606
  %617 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %14, align 8
  %618 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %617, i32 0, i32 0
  %619 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %618, i32 0, i32 2
  %620 = load i32, i32* %619, align 8
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %619, align 8
  %622 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %623 = load i32, i32* %10, align 4
  %624 = call i32 @hfi1_restart_rc(%struct.rvt_qp* %622, i32 %623, i32 0)
  %625 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %626 = call i32 @hfi1_schedule_send(%struct.rvt_qp* %625)
  br label %676

627:                                              ; preds = %606
  %628 = load i32, i32* @IB_WC_REM_INV_REQ_ERR, align 4
  store i32 %628, i32* %15, align 4
  %629 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %14, align 8
  %630 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %629, i32 0, i32 0
  %631 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %630, i32 0, i32 1
  %632 = load i32, i32* %631, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %631, align 4
  br label %648

634:                                              ; preds = %606
  %635 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %635, i32* %15, align 4
  %636 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %14, align 8
  %637 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %636, i32 0, i32 0
  %638 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %637, i32 0, i32 1
  %639 = load i32, i32* %638, align 4
  %640 = add nsw i32 %639, 1
  store i32 %640, i32* %638, align 4
  br label %648

641:                                              ; preds = %606
  %642 = load i32, i32* @IB_WC_REM_OP_ERR, align 4
  store i32 %642, i32* %15, align 4
  %643 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %14, align 8
  %644 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %643, i32 0, i32 0
  %645 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %644, i32 0, i32 1
  %646 = load i32, i32* %645, align 4
  %647 = add nsw i32 %646, 1
  store i32 %647, i32* %645, align 4
  br label %648

648:                                              ; preds = %641, %634, %627, %534
  %649 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %650 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %649, i32 0, i32 9
  %651 = load i64, i64* %650, align 8
  %652 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %653 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %652, i32 0, i32 0
  %654 = load i64, i64* %653, align 8
  %655 = icmp eq i64 %651, %654
  br i1 %655, label %656, label %674

656:                                              ; preds = %648
  %657 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %658 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %657, i32 0, i32 2
  %659 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %658, i32 0, i32 0
  %660 = load i64, i64* %659, align 8
  %661 = load i64, i64* @IB_WR_TID_RDMA_READ, align 8
  %662 = icmp eq i64 %660, %661
  br i1 %662, label %663, label %666

663:                                              ; preds = %656
  %664 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %665 = call i32 @hfi1_kern_read_tid_flow_free(%struct.rvt_qp* %664)
  br label %666

666:                                              ; preds = %663, %656
  %667 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %668 = load %struct.rvt_swqe*, %struct.rvt_swqe** %17, align 8
  %669 = load i32, i32* %15, align 4
  %670 = call i32 @hfi1_trdma_send_complete(%struct.rvt_qp* %667, %struct.rvt_swqe* %668, i32 %669)
  %671 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %672 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %673 = call i32 @rvt_error_qp(%struct.rvt_qp* %671, i32 %672)
  br label %674

674:                                              ; preds = %666, %648
  br label %676

675:                                              ; preds = %606
  br label %688

676:                                              ; preds = %674, %616
  %677 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %678 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %677, i32 0, i32 10
  %679 = load i32, i32* %678, align 8
  %680 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %681 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %680, i32 0, i32 11
  store i32 %679, i32* %681, align 4
  %682 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %683 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %682, i32 0, i32 8
  %684 = load i32, i32* %683, align 4
  %685 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %686 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %685, i32 0, i32 7
  store i32 %684, i32* %686, align 8
  br label %689

687:                                              ; preds = %268
  br label %688

688:                                              ; preds = %687, %675
  br label %689

689:                                              ; preds = %688, %676, %605, %504, %496, %351, %135, %68
  %690 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %691 = call i32 @rvt_stop_rc_timers(%struct.rvt_qp* %690)
  %692 = load i32, i32* %18, align 4
  store i32 %692, i32* %7, align 4
  br label %693

693:                                              ; preds = %689, %573, %479, %478
  %694 = load i32, i32* %7, align 4
  ret i32 %694
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i64) #1

declare dso_local %struct.hfi1_ibport* @rcd_to_iport(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @delta_psn(i32, i32) #1

declare dso_local i32 @OP(i32) #1

declare dso_local i32 @TID_OP(i32) #1

declare dso_local i32 @set_restart_qp(%struct.rvt_qp*, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @opfn_conn_reply(%struct.rvt_qp*, i32) #1

declare dso_local i32 @hfi1_schedule_send(%struct.rvt_qp*) #1

declare dso_local %struct.rvt_swqe* @do_rc_completion(%struct.rvt_qp*, %struct.rvt_swqe*, %struct.hfi1_ibport*) #1

declare dso_local i32 @trace_hfi1_rc_ack_do(%struct.rvt_qp*, i32, i32, %struct.rvt_swqe*) #1

declare dso_local i32 @trace_hfi1_sender_do_rc_ack(%struct.rvt_qp*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local %struct.TYPE_12__* @wqe_to_tid_req(%struct.rvt_swqe*) #1

declare dso_local i32 @rvt_mod_retry_timer_ext(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rvt_stop_rc_timers(%struct.rvt_qp*) #1

declare dso_local i32 @cmp_psn(i32, i32) #1

declare dso_local i32 @update_qp_retry_state(%struct.rvt_qp*, i32, i32, i32) #1

declare dso_local i32 @rvt_mod_retry_timer(%struct.rvt_qp*) #1

declare dso_local i32 @reset_psn(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rvt_get_credit(%struct.rvt_qp*, i32) #1

declare dso_local i32 @update_last_psn(%struct.rvt_qp*, i32) #1

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @rvt_add_rnr_timer(%struct.rvt_qp*, i32) #1

declare dso_local i32 @hfi1_restart_rc(%struct.rvt_qp*, i32, i32) #1

declare dso_local i32 @hfi1_kern_read_tid_flow_free(%struct.rvt_qp*) #1

declare dso_local i32 @hfi1_trdma_send_complete(%struct.rvt_qp*, %struct.rvt_swqe*, i32) #1

declare dso_local i32 @rvt_error_qp(%struct.rvt_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
