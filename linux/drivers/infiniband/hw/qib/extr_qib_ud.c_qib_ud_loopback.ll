; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_ud.c_qib_ud_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_ud.c_qib_ud_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i32, i64, i32, i32, %struct.TYPE_14__, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.rvt_swqe = type { i64, %struct.TYPE_17__, %struct.rvt_sge* }
%struct.TYPE_17__ = type { i64, i32, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.rvt_sge = type { i64, i64, i64, i64, %struct.TYPE_12__*, %struct.ib_grh* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__**, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.ib_grh* }
%struct.ib_grh = type { i32 }
%struct.qib_ibport = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.qib_pportdata = type { i32, i32, %struct.qib_devdata* }
%struct.qib_devdata = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.rvt_dev_info }
%struct.rvt_dev_info = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.rvt_sge_state = type { %struct.rvt_sge*, i64, %struct.rvt_sge }
%struct.ib_wc = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__*, i32, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.ib_global_route = type { i32 }

@IB_QPT_GSI = common dso_local global i64 0, align 8
@IB_QPT_UD = common dso_local global i32 0, align 4
@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@IB_WR_SEND_WITH_IMM = common dso_local global i64 0, align 8
@IB_WC_WITH_IMM = common dso_local global i32 0, align 4
@RVT_R_REUSE_SGE = common dso_local global i32 0, align 4
@IB_WC_LOC_QP_OP_ERR = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@RVT_SEGSZ = common dso_local global i64 0, align 8
@RVT_R_WRID_VALID = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@IB_WC_RECV = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*, %struct.rvt_swqe*)* @qib_ud_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_ud_loopback(%struct.rvt_qp* %0, %struct.rvt_swqe* %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca %struct.rvt_swqe*, align 8
  %5 = alloca %struct.qib_ibport*, align 8
  %6 = alloca %struct.qib_pportdata*, align 8
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca %struct.rvt_dev_info*, align 8
  %9 = alloca %struct.rvt_qp*, align 8
  %10 = alloca %struct.rdma_ah_attr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rvt_sge_state, align 8
  %13 = alloca %struct.rvt_sge*, align 8
  %14 = alloca %struct.ib_wc, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.ib_grh, align 4
  %24 = alloca %struct.ib_global_route*, align 8
  %25 = alloca i64, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store %struct.rvt_swqe* %1, %struct.rvt_swqe** %4, align 8
  %26 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %27 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %31 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.qib_ibport* @to_iport(i32 %29, i32 %32)
  store %struct.qib_ibport* %33, %struct.qib_ibport** %5, align 8
  %34 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %35 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %34)
  store %struct.qib_pportdata* %35, %struct.qib_pportdata** %6, align 8
  %36 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %37 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %36, i32 0, i32 2
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %37, align 8
  store %struct.qib_devdata* %38, %struct.qib_devdata** %7, align 8
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %40 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store %struct.rvt_dev_info* %41, %struct.rvt_dev_info** %8, align 8
  %42 = call i32 (...) @rcu_read_lock()
  %43 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %44 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %45 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %44, i32 0, i32 0
  %46 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %47 = call i32 @rvt_get_swqe_remote_qpn(%struct.rvt_swqe* %46)
  %48 = call %struct.rvt_qp* @rvt_lookup_qpn(%struct.rvt_dev_info* %43, %struct.TYPE_18__* %45, i32 %47)
  store %struct.rvt_qp* %48, %struct.rvt_qp** %9, align 8
  %49 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %50 = icmp ne %struct.rvt_qp* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %2
  %52 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %53 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %547

57:                                               ; preds = %2
  %58 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %59 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IB_QPT_GSI, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @IB_QPT_UD, align 4
  %66 = sext i32 %65 to i64
  br label %72

67:                                               ; preds = %57
  %68 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %69 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  br label %72

72:                                               ; preds = %67, %64
  %73 = phi i64 [ %66, %64 ], [ %71, %67 ]
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %16, align 4
  %75 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %76 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IB_QPT_GSI, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i32, i32* @IB_QPT_UD, align 4
  %83 = sext i32 %82 to i64
  br label %89

84:                                               ; preds = %72
  %85 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %86 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  br label %89

89:                                               ; preds = %84, %81
  %90 = phi i64 [ %83, %81 ], [ %88, %84 ]
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %105, label %95

95:                                               ; preds = %89
  %96 = load i32*, i32** @ib_rvt_state_ops, align 8
  %97 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %98 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %95, %89
  %106 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %107 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %547

111:                                              ; preds = %95
  %112 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %113 = call %struct.rdma_ah_attr* @rvt_get_swqe_ah_attr(%struct.rvt_swqe* %112)
  store %struct.rdma_ah_attr* %113, %struct.rdma_ah_attr** %10, align 8
  %114 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %115 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %114)
  store %struct.qib_pportdata* %115, %struct.qib_pportdata** %6, align 8
  %116 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %117 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %121, label %172

121:                                              ; preds = %111
  %122 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %123 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %124 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %123, i32 0, i32 10
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @qib_get_pkey(%struct.qib_ibport* %122, i32 %125)
  store i32 %126, i32* %18, align 4
  %127 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %128 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %129 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @qib_get_pkey(%struct.qib_ibport* %127, i32 %130)
  store i32 %131, i32* %19, align 4
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %19, align 4
  %134 = call i32 @qib_pkey_ok(i32 %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %171

140:                                              ; preds = %121
  %141 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %142 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %145 = call i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr* %144)
  %146 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %147 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 1, %148
  %150 = sub nsw i32 %149, 1
  %151 = and i32 %145, %150
  %152 = or i32 %143, %151
  store i32 %152, i32* %20, align 4
  %153 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %154 = load i32, i32* %18, align 4
  %155 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %156 = call i32 @rdma_ah_get_sl(%struct.rdma_ah_attr* %155)
  %157 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %158 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %157, i32 0, i32 6
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %162 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %20, align 4
  %166 = call i32 @cpu_to_be16(i32 %165)
  %167 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %168 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %167)
  %169 = call i32 @cpu_to_be16(i32 %168)
  %170 = call i32 @qib_bad_pkey(%struct.qib_ibport* %153, i32 %154, i32 %156, i32 %160, i32 %164, i32 %166, i32 %169)
  br label %547

171:                                              ; preds = %121
  br label %172

172:                                              ; preds = %171, %111
  %173 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %174 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %173, i32 0, i32 6
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %202

178:                                              ; preds = %172
  %179 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %180 = call i64 @rvt_get_swqe_remote_qkey(%struct.rvt_swqe* %179)
  %181 = trunc i64 %180 to i32
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %185 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  br label %190

187:                                              ; preds = %178
  %188 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %189 = call i64 @rvt_get_swqe_remote_qkey(%struct.rvt_swqe* %188)
  br label %190

190:                                              ; preds = %187, %183
  %191 = phi i64 [ %186, %183 ], [ %189, %187 ]
  store i64 %191, i64* %21, align 8
  %192 = load i64, i64* %21, align 8
  %193 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %194 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %192, %195
  %197 = zext i1 %196 to i32
  %198 = call i64 @unlikely(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %190
  br label %547

201:                                              ; preds = %190
  br label %202

202:                                              ; preds = %201, %172
  %203 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %204 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %15, align 8
  %206 = call i32 @memset(%struct.ib_wc* %14, i32 0, i32 64)
  %207 = load i64, i64* %15, align 8
  %208 = add i64 %207, 4
  %209 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 0
  store i64 %208, i64* %209, align 8
  %210 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %211 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @IB_WR_SEND_WITH_IMM, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %202
  %217 = load i32, i32* @IB_WC_WITH_IMM, align 4
  %218 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 11
  store i32 %217, i32* %218, align 4
  %219 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %220 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 12
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  br label %226

226:                                              ; preds = %216, %202
  %227 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %228 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %227, i32 0, i32 4
  %229 = load i64, i64* %11, align 8
  %230 = call i32 @spin_lock_irqsave(i32* %228, i64 %229)
  %231 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %232 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @RVT_R_REUSE_SGE, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %226
  %238 = load i32, i32* @RVT_R_REUSE_SGE, align 4
  %239 = xor i32 %238, -1
  %240 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %241 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = and i32 %242, %239
  store i32 %243, i32* %241, align 8
  br label %270

244:                                              ; preds = %226
  %245 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %246 = call i32 @rvt_get_rwqe(%struct.rvt_qp* %245, i32 0)
  store i32 %246, i32* %22, align 4
  %247 = load i32, i32* %22, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %251 = load i32, i32* @IB_WC_LOC_QP_OP_ERR, align 4
  %252 = call i32 @rvt_rc_error(%struct.rvt_qp* %250, i32 %251)
  br label %542

253:                                              ; preds = %244
  %254 = load i32, i32* %22, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %269, label %256

256:                                              ; preds = %253
  %257 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %258 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %257, i32 0, i32 6
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %256
  %263 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %264 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %262, %256
  br label %542

269:                                              ; preds = %253
  br label %270

270:                                              ; preds = %269, %237
  %271 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %274 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = icmp sgt i64 %272, %275
  %277 = zext i1 %276 to i32
  %278 = call i64 @unlikely(i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %291

280:                                              ; preds = %270
  %281 = load i32, i32* @RVT_R_REUSE_SGE, align 4
  %282 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %283 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 8
  %286 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %287 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 4
  br label %542

291:                                              ; preds = %270
  %292 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %293 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %292)
  %294 = load i32, i32* @IB_AH_GRH, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %311

297:                                              ; preds = %291
  %298 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %299 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %298)
  store %struct.ib_global_route* %299, %struct.ib_global_route** %24, align 8
  %300 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %301 = load %struct.ib_global_route*, %struct.ib_global_route** %24, align 8
  %302 = call i32 @qib_make_grh(%struct.qib_ibport* %300, %struct.ib_grh* %23, %struct.ib_global_route* %301, i32 0, i32 0)
  %303 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %304 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %305 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %304, i32 0, i32 9
  %306 = call i32 @rvt_copy_sge(%struct.rvt_qp* %303, i32* %305, %struct.ib_grh* %23, i64 4, i32 1, i32 0)
  %307 = load i32, i32* @IB_WC_GRH, align 4
  %308 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 11
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %309, %307
  store i32 %310, i32* %308, align 4
  br label %315

311:                                              ; preds = %291
  %312 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %313 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %312, i32 0, i32 9
  %314 = call i32 @rvt_skip_sge(i32* %313, i32 4, i32 1)
  br label %315

315:                                              ; preds = %311, %297
  %316 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %317 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %316, i32 0, i32 2
  %318 = load %struct.rvt_sge*, %struct.rvt_sge** %317, align 8
  %319 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %318, i64 1
  %320 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %12, i32 0, i32 0
  store %struct.rvt_sge* %319, %struct.rvt_sge** %320, align 8
  %321 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %12, i32 0, i32 2
  %322 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %323 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %322, i32 0, i32 2
  %324 = load %struct.rvt_sge*, %struct.rvt_sge** %323, align 8
  %325 = bitcast %struct.rvt_sge* %321 to i8*
  %326 = bitcast %struct.rvt_sge* %324 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %325, i8* align 8 %326, i64 48, i1 false)
  %327 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %328 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %12, i32 0, i32 1
  store i64 %330, i64* %331, align 8
  %332 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %12, i32 0, i32 2
  store %struct.rvt_sge* %332, %struct.rvt_sge** %13, align 8
  br label %333

333:                                              ; preds = %456, %315
  %334 = load i64, i64* %15, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %460

336:                                              ; preds = %333
  %337 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %338 = load i64, i64* %15, align 8
  %339 = call i64 @rvt_get_sge_length(%struct.rvt_sge* %337, i64 %338)
  store i64 %339, i64* %25, align 8
  %340 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %341 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %342 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %341, i32 0, i32 9
  %343 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %344 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %343, i32 0, i32 5
  %345 = load %struct.ib_grh*, %struct.ib_grh** %344, align 8
  %346 = load i64, i64* %25, align 8
  %347 = call i32 @rvt_copy_sge(%struct.rvt_qp* %340, i32* %342, %struct.ib_grh* %345, i64 %346, i32 1, i32 0)
  %348 = load i64, i64* %25, align 8
  %349 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %350 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %349, i32 0, i32 5
  %351 = load %struct.ib_grh*, %struct.ib_grh** %350, align 8
  %352 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %351, i64 %348
  store %struct.ib_grh* %352, %struct.ib_grh** %350, align 8
  %353 = load i64, i64* %25, align 8
  %354 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %355 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = sub nsw i64 %356, %353
  store i64 %357, i64* %355, align 8
  %358 = load i64, i64* %25, align 8
  %359 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %360 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = sub nsw i64 %361, %358
  store i64 %362, i64* %360, align 8
  %363 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %364 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %380

367:                                              ; preds = %336
  %368 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %12, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = add nsw i64 %369, -1
  store i64 %370, i64* %368, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %379

372:                                              ; preds = %367
  %373 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %374 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %12, i32 0, i32 0
  %375 = load %struct.rvt_sge*, %struct.rvt_sge** %374, align 8
  %376 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %375, i32 1
  store %struct.rvt_sge* %376, %struct.rvt_sge** %374, align 8
  %377 = bitcast %struct.rvt_sge* %373 to i8*
  %378 = bitcast %struct.rvt_sge* %375 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %377, i8* align 8 %378, i64 48, i1 false)
  br label %379

379:                                              ; preds = %372, %367
  br label %456

380:                                              ; preds = %336
  %381 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %382 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %385, label %455

385:                                              ; preds = %380
  %386 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %387 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %386, i32 0, i32 4
  %388 = load %struct.TYPE_12__*, %struct.TYPE_12__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 2
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %455

392:                                              ; preds = %385
  %393 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %394 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %393, i32 0, i32 2
  %395 = load i64, i64* %394, align 8
  %396 = add nsw i64 %395, 1
  store i64 %396, i64* %394, align 8
  %397 = load i64, i64* @RVT_SEGSZ, align 8
  %398 = icmp sge i64 %396, %397
  br i1 %398, label %399, label %414

399:                                              ; preds = %392
  %400 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %401 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %400, i32 0, i32 3
  %402 = load i64, i64* %401, align 8
  %403 = add nsw i64 %402, 1
  store i64 %403, i64* %401, align 8
  %404 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %405 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %404, i32 0, i32 4
  %406 = load %struct.TYPE_12__*, %struct.TYPE_12__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %406, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = icmp sge i64 %403, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %399
  br label %460

411:                                              ; preds = %399
  %412 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %413 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %412, i32 0, i32 2
  store i64 0, i64* %413, align 8
  br label %414

414:                                              ; preds = %411, %392
  %415 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %416 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %415, i32 0, i32 4
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i32 0, i32 1
  %419 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %418, align 8
  %420 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %421 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %420, i32 0, i32 3
  %422 = load i64, i64* %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %419, i64 %422
  %424 = load %struct.TYPE_11__*, %struct.TYPE_11__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %424, i32 0, i32 0
  %426 = load %struct.TYPE_10__*, %struct.TYPE_10__** %425, align 8
  %427 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %428 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %426, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %430, i32 0, i32 1
  %432 = load %struct.ib_grh*, %struct.ib_grh** %431, align 8
  %433 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %434 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %433, i32 0, i32 5
  store %struct.ib_grh* %432, %struct.ib_grh** %434, align 8
  %435 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %436 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %435, i32 0, i32 4
  %437 = load %struct.TYPE_12__*, %struct.TYPE_12__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %437, i32 0, i32 1
  %439 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %438, align 8
  %440 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %441 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %440, i32 0, i32 3
  %442 = load i64, i64* %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %439, i64 %442
  %444 = load %struct.TYPE_11__*, %struct.TYPE_11__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %444, i32 0, i32 0
  %446 = load %struct.TYPE_10__*, %struct.TYPE_10__** %445, align 8
  %447 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %448 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %447, i32 0, i32 2
  %449 = load i64, i64* %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %446, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %454 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %453, i32 0, i32 0
  store i64 %452, i64* %454, align 8
  br label %455

455:                                              ; preds = %414, %385, %380
  br label %456

456:                                              ; preds = %455, %379
  %457 = load i64, i64* %25, align 8
  %458 = load i64, i64* %15, align 8
  %459 = sub nsw i64 %458, %457
  store i64 %459, i64* %15, align 8
  br label %333

460:                                              ; preds = %410, %333
  %461 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %462 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %461, i32 0, i32 9
  %463 = call i32 @rvt_put_ss(i32* %462)
  %464 = load i32, i32* @RVT_R_WRID_VALID, align 4
  %465 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %466 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %465, i32 0, i32 8
  %467 = call i32 @test_and_clear_bit(i32 %464, i32* %466)
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %470, label %469

469:                                              ; preds = %460
  br label %542

470:                                              ; preds = %460
  %471 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %472 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %471, i32 0, i32 7
  %473 = load i32, i32* %472, align 8
  %474 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 10
  store i32 %473, i32* %474, align 8
  %475 = load i32, i32* @IB_WC_SUCCESS, align 4
  %476 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 9
  store i32 %475, i32* %476, align 4
  %477 = load i32, i32* @IB_WC_RECV, align 4
  %478 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 8
  store i32 %477, i32* %478, align 8
  %479 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %480 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %479, i32 0, i32 6
  %481 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 7
  store %struct.TYPE_14__* %480, %struct.TYPE_14__** %481, align 8
  %482 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %483 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %482, i32 0, i32 6
  %484 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 8
  %486 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 1
  store i32 %485, i32* %486, align 8
  %487 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %488 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %487, i32 0, i32 6
  %489 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %488, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = load i64, i64* @IB_QPT_GSI, align 8
  %492 = icmp eq i64 %490, %491
  br i1 %492, label %493, label %496

493:                                              ; preds = %470
  %494 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %495 = call i32 @rvt_get_swqe_pkey_index(%struct.rvt_swqe* %494)
  br label %497

496:                                              ; preds = %470
  br label %497

497:                                              ; preds = %496, %493
  %498 = phi i32 [ %495, %493 ], [ 0, %496 ]
  %499 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 6
  store i32 %498, i32* %499, align 4
  %500 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %501 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %504 = call i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr* %503)
  %505 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %506 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = shl i32 1, %507
  %509 = sub nsw i32 %508, 1
  %510 = and i32 %504, %509
  %511 = or i32 %502, %510
  %512 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 2
  store i32 %511, i32* %512, align 4
  %513 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %514 = call i32 @rdma_ah_get_sl(%struct.rdma_ah_attr* %513)
  %515 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 5
  store i32 %514, i32* %515, align 8
  %516 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %10, align 8
  %517 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %516)
  %518 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %519 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = shl i32 1, %520
  %522 = sub nsw i32 %521, 1
  %523 = and i32 %517, %522
  %524 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 3
  store i32 %523, i32* %524, align 8
  %525 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %526 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %525, i32 0, i32 5
  %527 = load i32, i32* %526, align 4
  %528 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 4
  store i32 %527, i32* %528, align 4
  %529 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %530 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %531 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %531, i32 0, i32 1
  %533 = load i32, i32* %532, align 8
  %534 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %535 = and i32 %533, %534
  %536 = call i32 @rvt_recv_cq(%struct.rvt_qp* %529, %struct.ib_wc* %14, i32 %535)
  %537 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %538 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %539, align 4
  br label %542

542:                                              ; preds = %497, %469, %280, %268, %249
  %543 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %544 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %543, i32 0, i32 4
  %545 = load i64, i64* %11, align 8
  %546 = call i32 @spin_unlock_irqrestore(i32* %544, i64 %545)
  br label %547

547:                                              ; preds = %542, %200, %140, %105, %51
  %548 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rvt_qp* @rvt_lookup_qpn(%struct.rvt_dev_info*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @rvt_get_swqe_remote_qpn(%struct.rvt_swqe*) #1

declare dso_local %struct.rdma_ah_attr* @rvt_get_swqe_ah_attr(%struct.rvt_swqe*) #1

declare dso_local i32 @qib_get_pkey(%struct.qib_ibport*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qib_pkey_ok(i32, i32) #1

declare dso_local i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr*) #1

declare dso_local i32 @qib_bad_pkey(%struct.qib_ibport*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rdma_ah_get_sl(%struct.rdma_ah_attr*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i64 @rvt_get_swqe_remote_qkey(%struct.rvt_swqe*) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rvt_get_rwqe(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rvt_rc_error(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @qib_make_grh(%struct.qib_ibport*, %struct.ib_grh*, %struct.ib_global_route*, i32, i32) #1

declare dso_local i32 @rvt_copy_sge(%struct.rvt_qp*, i32*, %struct.ib_grh*, i64, i32, i32) #1

declare dso_local i32 @rvt_skip_sge(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @rvt_get_sge_length(%struct.rvt_sge*, i64) #1

declare dso_local i32 @rvt_put_ss(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @rvt_get_swqe_pkey_index(%struct.rvt_swqe*) #1

declare dso_local i32 @rvt_recv_cq(%struct.rvt_qp*, %struct.ib_wc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
