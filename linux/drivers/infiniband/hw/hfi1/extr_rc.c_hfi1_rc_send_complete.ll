; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_hfi1_rc_send_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_hfi1_rc_send_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i64, i64, i32, i64, i64, i64, i64, i32, i32, %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { i64, i64, i32, i32 }
%struct.hfi1_opa_header = type { i32 }
%struct.ib_other_headers = type { i32 }
%struct.rvt_swqe = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.tid_rdma_request = type { i64, i64, i64, i64 }

@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_SEND_OR_FLUSH_OR_RECV_OK = common dso_local global i32 0, align 4
@RDMA_READ_RESPONSE_FIRST = common dso_local global i32 0, align 4
@ATOMIC_ACKNOWLEDGE = common dso_local global i32 0, align 4
@READ_RESP = common dso_local global i32 0, align 4
@WRITE_RESP = common dso_local global i32 0, align 4
@WRITE_DATA = common dso_local global i32 0, align 4
@WRITE_DATA_LAST = common dso_local global i32 0, align 4
@ACK = common dso_local global i32 0, align 4
@RESYNC = common dso_local global i32 0, align 4
@WRITE_REQ = common dso_local global i32 0, align 4
@IB_BTH_REQ_ACK = common dso_local global i64 0, align 8
@RVT_S_TIMER = common dso_local global i32 0, align 4
@RVT_S_WAIT_RNR = common dso_local global i32 0, align 4
@RVT_S_WAIT_PSN = common dso_local global i32 0, align 4
@RVT_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@READ_REQ = common dso_local global i32 0, align 4
@HFI1_S_TID_RETRY_TIMER = common dso_local global i32 0, align 4
@IB_WR_TID_RDMA_WRITE = common dso_local global i64 0, align 8
@ib_hfi1_wc_opcode = common dso_local global i32* null, align 8
@IB_WC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_rc_send_complete(%struct.rvt_qp* %0, %struct.hfi1_opa_header* %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca %struct.hfi1_opa_header*, align 8
  %5 = alloca %struct.ib_other_headers*, align 8
  %6 = alloca %struct.hfi1_qp_priv*, align 8
  %7 = alloca %struct.rvt_swqe*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tid_rdma_request*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store %struct.hfi1_opa_header* %1, %struct.hfi1_opa_header** %4, align 8
  %13 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %14 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %13, i32 0, i32 11
  %15 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %14, align 8
  store %struct.hfi1_qp_priv* %15, %struct.hfi1_qp_priv** %6, align 8
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %17 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %16, i32 0, i32 10
  %18 = call i32 @lockdep_assert_held(i32* %17)
  %19 = load i32*, i32** @ib_rvt_state_ops, align 8
  %20 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %21 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RVT_SEND_OR_FLUSH_OR_RECV_OK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %360

29:                                               ; preds = %2
  %30 = load %struct.hfi1_opa_header*, %struct.hfi1_opa_header** %4, align 8
  %31 = call %struct.ib_other_headers* @hfi1_get_rc_ohdr(%struct.hfi1_opa_header* %30)
  store %struct.ib_other_headers* %31, %struct.ib_other_headers** %5, align 8
  %32 = load %struct.ib_other_headers*, %struct.ib_other_headers** %5, align 8
  %33 = call i64 @ib_bth_get_opcode(%struct.ib_other_headers* %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* @RDMA_READ_RESPONSE_FIRST, align 4
  %36 = call i64 @OP(i32 %35)
  %37 = icmp sge i64 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* @ATOMIC_ACKNOWLEDGE, align 4
  %41 = call i64 @OP(i32 %40)
  %42 = icmp sle i64 %39, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %38, %29
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* @READ_RESP, align 4
  %46 = call i64 @TID_OP(i32 %45)
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* @WRITE_RESP, align 4
  %51 = call i64 @TID_OP(i32 %50)
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %48, %43, %38
  %54 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %55 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @WARN_ON(i32 %59)
  %61 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %62 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 8
  br label %360

65:                                               ; preds = %48
  %66 = load %struct.ib_other_headers*, %struct.ib_other_headers** %5, align 8
  %67 = call i64 @ib_bth_get_psn(%struct.ib_other_headers* %66)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i32, i32* @WRITE_DATA, align 4
  %70 = call i64 @TID_OP(i32 %69)
  %71 = icmp ne i64 %68, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %65
  %73 = load i64, i64* %8, align 8
  %74 = load i32, i32* @WRITE_DATA_LAST, align 4
  %75 = call i64 @TID_OP(i32 %74)
  %76 = icmp ne i64 %73, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* @ACK, align 4
  %80 = call i64 @TID_OP(i32 %79)
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i64, i64* %8, align 8
  %84 = load i32, i32* @RESYNC, align 4
  %85 = call i64 @TID_OP(i32 %84)
  %86 = icmp ne i64 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @reset_sending_psn(%struct.rvt_qp* %88, i64 %89)
  br label %91

91:                                               ; preds = %87, %82, %77, %72, %65
  %92 = load i64, i64* %8, align 8
  %93 = load i32, i32* @WRITE_REQ, align 4
  %94 = call i64 @TID_OP(i32 %93)
  %95 = icmp sge i64 %92, %94
  br i1 %95, label %96, label %137

96:                                               ; preds = %91
  %97 = load i64, i64* %8, align 8
  %98 = load i32, i32* @WRITE_DATA_LAST, align 4
  %99 = call i64 @TID_OP(i32 %98)
  %100 = icmp sle i64 %97, %99
  br i1 %100, label %101, label %137

101:                                              ; preds = %96
  %102 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %6, align 8
  %103 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %9, align 8
  %105 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %6, align 8
  %106 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %10, align 8
  %108 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %109 = load i64, i64* %10, align 8
  %110 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %108, i64 %109)
  store %struct.rvt_swqe* %110, %struct.rvt_swqe** %7, align 8
  %111 = load %struct.rvt_swqe*, %struct.rvt_swqe** %7, align 8
  %112 = call %struct.tid_rdma_request* @wqe_to_tid_req(%struct.rvt_swqe* %111)
  store %struct.tid_rdma_request* %112, %struct.tid_rdma_request** %12, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %136

116:                                              ; preds = %101
  %117 = load %struct.tid_rdma_request*, %struct.tid_rdma_request** %12, align 8
  %118 = getelementptr inbounds %struct.tid_rdma_request, %struct.tid_rdma_request* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.tid_rdma_request*, %struct.tid_rdma_request** %12, align 8
  %121 = getelementptr inbounds %struct.tid_rdma_request, %struct.tid_rdma_request* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp slt i64 %119, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %116
  %125 = load i64, i64* %10, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %129 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %130, 1
  store i64 %131, i64* %10, align 8
  br label %135

132:                                              ; preds = %124
  %133 = load i64, i64* %10, align 8
  %134 = sub nsw i64 %133, 1
  store i64 %134, i64* %10, align 8
  br label %135

135:                                              ; preds = %132, %127
  br label %136

136:                                              ; preds = %135, %116, %101
  br label %144

137:                                              ; preds = %96, %91
  %138 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %139 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %9, align 8
  %141 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %142 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %10, align 8
  br label %144

144:                                              ; preds = %137, %136
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* @IB_BTH_REQ_ACK, align 8
  %147 = and i64 %145, %146
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %204

149:                                              ; preds = %144
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* %9, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %204

153:                                              ; preds = %149
  %154 = load i64, i64* %8, align 8
  %155 = load i32, i32* @WRITE_DATA, align 4
  %156 = call i64 @TID_OP(i32 %155)
  %157 = icmp ne i64 %154, %156
  br i1 %157, label %158, label %204

158:                                              ; preds = %153
  %159 = load i64, i64* %8, align 8
  %160 = load i32, i32* @WRITE_DATA_LAST, align 4
  %161 = call i64 @TID_OP(i32 %160)
  %162 = icmp ne i64 %159, %161
  br i1 %162, label %163, label %204

163:                                              ; preds = %158
  %164 = load i64, i64* %8, align 8
  %165 = load i32, i32* @RESYNC, align 4
  %166 = call i64 @TID_OP(i32 %165)
  %167 = icmp ne i64 %164, %166
  br i1 %167, label %168, label %204

168:                                              ; preds = %163
  %169 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %170 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @RVT_S_TIMER, align 4
  %173 = load i32, i32* @RVT_S_WAIT_RNR, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @RVT_S_WAIT_PSN, align 4
  %176 = or i32 %174, %175
  %177 = and i32 %171, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %204, label %179

179:                                              ; preds = %168
  %180 = load i32*, i32** @ib_rvt_state_ops, align 8
  %181 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %182 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %204

189:                                              ; preds = %179
  %190 = load i64, i64* %8, align 8
  %191 = load i32, i32* @READ_REQ, align 4
  %192 = call i64 @TID_OP(i32 %191)
  %193 = icmp eq i64 %190, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %189
  %195 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %196 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %6, align 8
  %197 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @rvt_add_retry_timer_ext(%struct.rvt_qp* %195, i32 %198)
  br label %203

200:                                              ; preds = %189
  %201 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %202 = call i32 @rvt_add_retry_timer(%struct.rvt_qp* %201)
  br label %203

203:                                              ; preds = %200, %194
  br label %204

204:                                              ; preds = %203, %179, %168, %163, %158, %153, %149, %144
  %205 = load i64, i64* %8, align 8
  %206 = load i32, i32* @WRITE_DATA, align 4
  %207 = call i64 @TID_OP(i32 %206)
  %208 = icmp eq i64 %205, %207
  br i1 %208, label %219, label %209

209:                                              ; preds = %204
  %210 = load i64, i64* %8, align 8
  %211 = load i32, i32* @WRITE_DATA_LAST, align 4
  %212 = call i64 @TID_OP(i32 %211)
  %213 = icmp eq i64 %210, %212
  br i1 %213, label %219, label %214

214:                                              ; preds = %209
  %215 = load i64, i64* %8, align 8
  %216 = load i32, i32* @RESYNC, align 4
  %217 = call i64 @TID_OP(i32 %216)
  %218 = icmp eq i64 %215, %217
  br i1 %218, label %219, label %267

219:                                              ; preds = %214, %209, %204
  %220 = load i64, i64* %11, align 8
  %221 = load i64, i64* @IB_BTH_REQ_ACK, align 8
  %222 = and i64 %220, %221
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %267

224:                                              ; preds = %219
  %225 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %6, align 8
  %226 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @HFI1_S_TID_RETRY_TIMER, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %267, label %231

231:                                              ; preds = %224
  %232 = load i32*, i32** @ib_rvt_state_ops, align 8
  %233 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %234 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %267

241:                                              ; preds = %231
  %242 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %243 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %244 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %242, i64 %245)
  store %struct.rvt_swqe* %246, %struct.rvt_swqe** %7, align 8
  %247 = load %struct.rvt_swqe*, %struct.rvt_swqe** %7, align 8
  %248 = call %struct.tid_rdma_request* @wqe_to_tid_req(%struct.rvt_swqe* %247)
  store %struct.tid_rdma_request* %248, %struct.tid_rdma_request** %12, align 8
  %249 = load %struct.rvt_swqe*, %struct.rvt_swqe** %7, align 8
  %250 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @IB_WR_TID_RDMA_WRITE, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %266

255:                                              ; preds = %241
  %256 = load %struct.tid_rdma_request*, %struct.tid_rdma_request** %12, align 8
  %257 = getelementptr inbounds %struct.tid_rdma_request, %struct.tid_rdma_request* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.tid_rdma_request*, %struct.tid_rdma_request** %12, align 8
  %260 = getelementptr inbounds %struct.tid_rdma_request, %struct.tid_rdma_request* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = icmp slt i64 %258, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %255
  %264 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %265 = call i32 @hfi1_add_tid_retry_timer(%struct.rvt_qp* %264)
  br label %266

266:                                              ; preds = %263, %255, %241
  br label %267

267:                                              ; preds = %266, %231, %224, %219, %214
  br label %268

268:                                              ; preds = %300, %267
  %269 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %270 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %269, i32 0, i32 5
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %273 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %271, %274
  br i1 %275, label %276, label %321

276:                                              ; preds = %268
  %277 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %278 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %279 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %278, i32 0, i32 5
  %280 = load i64, i64* %279, align 8
  %281 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %277, i64 %280)
  store %struct.rvt_swqe* %281, %struct.rvt_swqe** %7, align 8
  %282 = load %struct.rvt_swqe*, %struct.rvt_swqe** %7, align 8
  %283 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %286 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %285, i32 0, i32 8
  %287 = load i64, i64* %286, align 8
  %288 = call i64 @cmp_psn(i64 %284, i64 %287)
  %289 = icmp sge i64 %288, 0
  br i1 %289, label %290, label %300

290:                                              ; preds = %276
  %291 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %292 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %291, i32 0, i32 8
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %295 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %294, i32 0, i32 7
  %296 = load i64, i64* %295, align 8
  %297 = call i64 @cmp_psn(i64 %293, i64 %296)
  %298 = icmp sle i64 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %290
  br label %321

300:                                              ; preds = %290, %276
  %301 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %302 = load %struct.rvt_swqe*, %struct.rvt_swqe** %7, align 8
  %303 = call i32 @trdma_clean_swqe(%struct.rvt_qp* %301, %struct.rvt_swqe* %302)
  %304 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %305 = load %struct.rvt_swqe*, %struct.rvt_swqe** %7, align 8
  %306 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %307 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %306, i32 0, i32 5
  %308 = load i64, i64* %307, align 8
  %309 = call i32 @trace_hfi1_qp_send_completion(%struct.rvt_qp* %304, %struct.rvt_swqe* %305, i64 %308)
  %310 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %311 = load %struct.rvt_swqe*, %struct.rvt_swqe** %7, align 8
  %312 = load i32*, i32** @ib_hfi1_wc_opcode, align 8
  %313 = load %struct.rvt_swqe*, %struct.rvt_swqe** %7, align 8
  %314 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds i32, i32* %312, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @IB_WC_SUCCESS, align 4
  %320 = call i32 @rvt_qp_complete_swqe(%struct.rvt_qp* %310, %struct.rvt_swqe* %311, i32 %318, i32 %319)
  br label %268

321:                                              ; preds = %299, %268
  %322 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %323 = load i64, i64* %11, align 8
  %324 = call i32 @trace_hfi1_sendcomplete(%struct.rvt_qp* %322, i64 %323)
  %325 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %326 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @RVT_S_WAIT_PSN, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %360

331:                                              ; preds = %321
  %332 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %333 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %332, i32 0, i32 8
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %336 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %335, i32 0, i32 7
  %337 = load i64, i64* %336, align 8
  %338 = call i64 @cmp_psn(i64 %334, i64 %337)
  %339 = icmp sgt i64 %338, 0
  br i1 %339, label %340, label %360

340:                                              ; preds = %331
  %341 = load i32, i32* @RVT_S_WAIT_PSN, align 4
  %342 = xor i32 %341, -1
  %343 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %344 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 8
  %346 = and i32 %345, %342
  store i32 %346, i32* %344, align 8
  %347 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %348 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %347, i32 0, i32 6
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %351 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %350, i32 0, i32 8
  store i64 %349, i64* %351, align 8
  %352 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %353 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %352, i32 0, i32 6
  %354 = load i64, i64* %353, align 8
  %355 = sub nsw i64 %354, 1
  %356 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %357 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %356, i32 0, i32 7
  store i64 %355, i64* %357, align 8
  %358 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %359 = call i32 @hfi1_schedule_send(%struct.rvt_qp* %358)
  br label %360

360:                                              ; preds = %28, %53, %340, %331, %321
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.ib_other_headers* @hfi1_get_rc_ohdr(%struct.hfi1_opa_header*) #1

declare dso_local i64 @ib_bth_get_opcode(%struct.ib_other_headers*) #1

declare dso_local i64 @OP(i32) #1

declare dso_local i64 @TID_OP(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ib_bth_get_psn(%struct.ib_other_headers*) #1

declare dso_local i32 @reset_sending_psn(%struct.rvt_qp*, i64) #1

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i64) #1

declare dso_local %struct.tid_rdma_request* @wqe_to_tid_req(%struct.rvt_swqe*) #1

declare dso_local i32 @rvt_add_retry_timer_ext(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rvt_add_retry_timer(%struct.rvt_qp*) #1

declare dso_local i32 @hfi1_add_tid_retry_timer(%struct.rvt_qp*) #1

declare dso_local i64 @cmp_psn(i64, i64) #1

declare dso_local i32 @trdma_clean_swqe(%struct.rvt_qp*, %struct.rvt_swqe*) #1

declare dso_local i32 @trace_hfi1_qp_send_completion(%struct.rvt_qp*, %struct.rvt_swqe*, i64) #1

declare dso_local i32 @rvt_qp_complete_swqe(%struct.rvt_qp*, %struct.rvt_swqe*, i32, i32) #1

declare dso_local i32 @trace_hfi1_sendcomplete(%struct.rvt_qp*, i64) #1

declare dso_local i32 @hfi1_schedule_send(%struct.rvt_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
