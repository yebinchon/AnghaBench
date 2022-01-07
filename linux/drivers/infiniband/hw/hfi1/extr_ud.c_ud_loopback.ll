; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ud.c_ud_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ud.c_ud_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i32, i64, i32, i32, %struct.TYPE_9__, i64, i32, i32, i32, %struct.hfi1_qp_priv* }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.hfi1_qp_priv = type { i64 }
%struct.rvt_swqe = type { i64, %struct.TYPE_12__, %struct.rvt_sge* }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.rvt_sge = type { %struct.ib_grh* }
%struct.ib_grh = type { i32 }
%struct.hfi1_ibport = type { %struct.TYPE_13__, i32* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.hfi1_pportdata = type { i32, i32, i32* }
%struct.rdma_ah_attr = type { i32 }
%struct.rvt_sge_state = type { %struct.rvt_sge, i32, %struct.rvt_sge* }
%struct.ib_wc = type { i64, i32, i32, i64, i32, i32, i64, %struct.TYPE_9__*, i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ib_global_route = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@IB_QPT_GSI = common dso_local global i64 0, align 8
@IB_QPT_UD = common dso_local global i32 0, align 4
@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@IB_WR_SEND_WITH_IMM = common dso_local global i64 0, align 8
@IB_WC_WITH_IMM = common dso_local global i32 0, align 4
@RVT_R_REUSE_SGE = common dso_local global i32 0, align 4
@IB_WC_LOC_QP_OP_ERR = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@HFI1_PKT_TYPE_16B = common dso_local global i64 0, align 8
@OPA_GID_INDEX = common dso_local global i64 0, align 8
@HFI1_PORT_GUID_INDEX = common dso_local global i64 0, align 8
@IB_WC_GRH = common dso_local global i32 0, align 4
@RVT_R_WRID_VALID = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@IB_WC_RECV = common dso_local global i32 0, align 4
@IB_QPT_SMI = common dso_local global i64 0, align 8
@U16_MAX = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*, %struct.rvt_swqe*)* @ud_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ud_loopback(%struct.rvt_qp* %0, %struct.rvt_swqe* %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca %struct.rvt_swqe*, align 8
  %5 = alloca %struct.hfi1_ibport*, align 8
  %6 = alloca %struct.hfi1_pportdata*, align 8
  %7 = alloca %struct.hfi1_qp_priv*, align 8
  %8 = alloca %struct.rvt_qp*, align 8
  %9 = alloca %struct.rdma_ah_attr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rvt_sge_state, align 8
  %12 = alloca %struct.rvt_sge*, align 8
  %13 = alloca %struct.ib_wc, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.ib_grh, align 4
  %23 = alloca %struct.ib_global_route, align 8
  %24 = alloca i64, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store %struct.rvt_swqe* %1, %struct.rvt_swqe** %4, align 8
  %25 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %26 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %30 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.hfi1_ibport* @to_iport(i32 %28, i32 %31)
  store %struct.hfi1_ibport* %32, %struct.hfi1_ibport** %5, align 8
  %33 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %34 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %33, i32 0, i32 11
  %35 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %34, align 8
  store %struct.hfi1_qp_priv* %35, %struct.hfi1_qp_priv** %7, align 8
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %38 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ib_to_rvt(i32 %40)
  %42 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %43 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %42, i32 0, i32 0
  %44 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %45 = call i32 @rvt_get_swqe_remote_qpn(%struct.rvt_swqe* %44)
  %46 = call %struct.rvt_qp* @rvt_lookup_qpn(i32 %41, %struct.TYPE_13__* %43, i32 %45)
  store %struct.rvt_qp* %46, %struct.rvt_qp** %8, align 8
  %47 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %48 = icmp ne %struct.rvt_qp* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %2
  %50 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %51 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = call i32 (...) @rcu_read_unlock()
  br label %522

56:                                               ; preds = %2
  %57 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %58 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IB_QPT_GSI, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @IB_QPT_UD, align 4
  %65 = sext i32 %64 to i64
  br label %71

66:                                               ; preds = %56
  %67 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %68 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  br label %71

71:                                               ; preds = %66, %63
  %72 = phi i64 [ %65, %63 ], [ %70, %66 ]
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %15, align 4
  %74 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %75 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @IB_QPT_GSI, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* @IB_QPT_UD, align 4
  %82 = sext i32 %81 to i64
  br label %88

83:                                               ; preds = %71
  %84 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %85 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  br label %88

88:                                               ; preds = %83, %80
  %89 = phi i64 [ %82, %80 ], [ %87, %83 ]
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %104, label %94

94:                                               ; preds = %88
  %95 = load i32*, i32** @ib_rvt_state_ops, align 8
  %96 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %97 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %94, %88
  %105 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %106 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %520

110:                                              ; preds = %94
  %111 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %112 = call %struct.rdma_ah_attr* @rvt_get_swqe_ah_attr(%struct.rvt_swqe* %111)
  store %struct.rdma_ah_attr* %112, %struct.rdma_ah_attr** %9, align 8
  %113 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %114 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %113)
  store %struct.hfi1_pportdata* %114, %struct.hfi1_pportdata** %6, align 8
  %115 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %116 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %174

120:                                              ; preds = %110
  %121 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %122 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %9, align 8
  %125 = call i64 @rdma_ah_get_sl(%struct.rdma_ah_attr* %124)
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %19, align 4
  %128 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %129 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %130 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @hfi1_get_pkey(%struct.hfi1_ibport* %128, i64 %131)
  store i32 %132, i32* %17, align 4
  %133 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %134 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %9, align 8
  %137 = call i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr* %136)
  %138 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %139 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 1, %140
  %142 = sub nsw i32 %141, 1
  %143 = and i32 %137, %142
  %144 = or i32 %135, %143
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %18, align 8
  %146 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %150 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %149, i32 0, i32 7
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %18, align 8
  %153 = call i32 @ingress_pkey_check(%struct.hfi1_pportdata* %146, i32 %147, i32 %148, i64 %151, i64 %152, i32 0)
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %173

156:                                              ; preds = %120
  %157 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %158 = load i32, i32* %17, align 4
  %159 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %9, align 8
  %160 = call i64 @rdma_ah_get_sl(%struct.rdma_ah_attr* %159)
  %161 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %162 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %166 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %165, i32 0, i32 6
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i64, i64* %18, align 8
  %170 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %9, align 8
  %171 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %170)
  %172 = call i32 @hfi1_bad_pkey(%struct.hfi1_ibport* %157, i32 %158, i64 %160, i32 %164, i32 %168, i64 %169, i32 %171)
  br label %520

173:                                              ; preds = %120
  br label %174

174:                                              ; preds = %173, %110
  %175 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %176 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %175, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %204

180:                                              ; preds = %174
  %181 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %182 = call i64 @rvt_get_swqe_remote_qkey(%struct.rvt_swqe* %181)
  %183 = trunc i64 %182 to i32
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %187 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  br label %192

189:                                              ; preds = %180
  %190 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %191 = call i64 @rvt_get_swqe_remote_qkey(%struct.rvt_swqe* %190)
  br label %192

192:                                              ; preds = %189, %185
  %193 = phi i64 [ %188, %185 ], [ %191, %189 ]
  store i64 %193, i64* %20, align 8
  %194 = load i64, i64* %20, align 8
  %195 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %196 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %194, %197
  %199 = zext i1 %198 to i32
  %200 = call i64 @unlikely(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %192
  br label %520

203:                                              ; preds = %192
  br label %204

204:                                              ; preds = %203, %174
  %205 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %206 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %14, align 8
  %208 = call i32 @memset(%struct.ib_wc* %13, i32 0, i32 72)
  %209 = load i64, i64* %14, align 8
  %210 = add i64 %209, 4
  %211 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 0
  store i64 %210, i64* %211, align 8
  %212 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %213 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @IB_WR_SEND_WITH_IMM, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %228

218:                                              ; preds = %204
  %219 = load i32, i32* @IB_WC_WITH_IMM, align 4
  %220 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 11
  store i32 %219, i32* %220, align 4
  %221 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %222 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 12
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  br label %228

228:                                              ; preds = %218, %204
  %229 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %230 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %229, i32 0, i32 4
  %231 = load i64, i64* %10, align 8
  %232 = call i32 @spin_lock_irqsave(i32* %230, i64 %231)
  %233 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %234 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @RVT_R_REUSE_SGE, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %228
  %240 = load i32, i32* @RVT_R_REUSE_SGE, align 4
  %241 = xor i32 %240, -1
  %242 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %243 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = and i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %272

246:                                              ; preds = %228
  %247 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %248 = call i32 @rvt_get_rwqe(%struct.rvt_qp* %247, i32 0)
  store i32 %248, i32* %21, align 4
  %249 = load i32, i32* %21, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %253 = load i32, i32* @IB_WC_LOC_QP_OP_ERR, align 4
  %254 = call i32 @rvt_rc_error(%struct.rvt_qp* %252, i32 %253)
  br label %515

255:                                              ; preds = %246
  %256 = load i32, i32* %21, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %271, label %258

258:                                              ; preds = %255
  %259 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %260 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %259, i32 0, i32 6
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %258
  %265 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %266 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %264, %258
  br label %515

271:                                              ; preds = %255
  br label %272

272:                                              ; preds = %271, %239
  %273 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %276 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %275, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = icmp sgt i64 %274, %277
  %279 = zext i1 %278 to i32
  %280 = call i64 @unlikely(i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %293

282:                                              ; preds = %272
  %283 = load i32, i32* @RVT_R_REUSE_SGE, align 4
  %284 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %285 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 8
  %288 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %289 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %290, align 4
  br label %515

293:                                              ; preds = %272
  %294 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %9, align 8
  %295 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %294)
  %296 = load i32, i32* @IB_AH_GRH, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %343

299:                                              ; preds = %293
  %300 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %9, align 8
  %301 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %300)
  %302 = bitcast %struct.ib_global_route* %23 to i8*
  %303 = bitcast %struct.ib_global_route* %301 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %302, i8* align 8 %303, i64 16, i1 false)
  %304 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  %305 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @HFI1_PKT_TYPE_16B, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %332

309:                                              ; preds = %299
  %310 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %23, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %309
  %314 = load i64, i64* @OPA_GID_INDEX, align 8
  %315 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %23, i32 0, i32 0
  store i64 %314, i64* %315, align 8
  br label %316

316:                                              ; preds = %313, %309
  %317 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %23, i32 0, i32 1
  %318 = call i64 @ib_is_opa_gid(%struct.TYPE_14__* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %331

320:                                              ; preds = %316
  %321 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %322 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %321, i32 0, i32 2
  %323 = load i32*, i32** %322, align 8
  %324 = load i64, i64* @HFI1_PORT_GUID_INDEX, align 8
  %325 = getelementptr inbounds i32, i32* %323, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @cpu_to_be64(i32 %326)
  %328 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %23, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 0
  store i32 %327, i32* %330, align 8
  br label %331

331:                                              ; preds = %320, %316
  br label %332

332:                                              ; preds = %331, %299
  %333 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %334 = call i32 @hfi1_make_grh(%struct.hfi1_ibport* %333, %struct.ib_grh* %22, %struct.ib_global_route* %23, i32 0, i32 0)
  %335 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %336 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %337 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %336, i32 0, i32 10
  %338 = call i32 @rvt_copy_sge(%struct.rvt_qp* %335, i32* %337, %struct.ib_grh* %22, i64 4, i32 1, i32 0)
  %339 = load i32, i32* @IB_WC_GRH, align 4
  %340 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 11
  %341 = load i32, i32* %340, align 4
  %342 = or i32 %341, %339
  store i32 %342, i32* %340, align 4
  br label %347

343:                                              ; preds = %293
  %344 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %345 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %344, i32 0, i32 10
  %346 = call i32 @rvt_skip_sge(i32* %345, i32 4, i32 1)
  br label %347

347:                                              ; preds = %343, %332
  %348 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %349 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %348, i32 0, i32 2
  %350 = load %struct.rvt_sge*, %struct.rvt_sge** %349, align 8
  %351 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %350, i64 1
  %352 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %11, i32 0, i32 2
  store %struct.rvt_sge* %351, %struct.rvt_sge** %352, align 8
  %353 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %11, i32 0, i32 0
  %354 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %355 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %354, i32 0, i32 2
  %356 = load %struct.rvt_sge*, %struct.rvt_sge** %355, align 8
  %357 = bitcast %struct.rvt_sge* %353 to i8*
  %358 = bitcast %struct.rvt_sge* %356 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %357, i8* align 8 %358, i64 8, i1 false)
  %359 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %360 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %11, i32 0, i32 1
  store i32 %362, i32* %363, align 8
  %364 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %11, i32 0, i32 0
  store %struct.rvt_sge* %364, %struct.rvt_sge** %12, align 8
  br label %365

365:                                              ; preds = %368, %347
  %366 = load i64, i64* %14, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %389

368:                                              ; preds = %365
  %369 = load %struct.rvt_sge*, %struct.rvt_sge** %12, align 8
  %370 = load i64, i64* %14, align 8
  %371 = call i64 @rvt_get_sge_length(%struct.rvt_sge* %369, i64 %370)
  store i64 %371, i64* %24, align 8
  %372 = load i64, i64* %24, align 8
  %373 = icmp eq i64 %372, 0
  %374 = zext i1 %373 to i32
  %375 = call i32 @WARN_ON_ONCE(i32 %374)
  %376 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %377 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %378 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %377, i32 0, i32 10
  %379 = load %struct.rvt_sge*, %struct.rvt_sge** %12, align 8
  %380 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %379, i32 0, i32 0
  %381 = load %struct.ib_grh*, %struct.ib_grh** %380, align 8
  %382 = load i64, i64* %24, align 8
  %383 = call i32 @rvt_copy_sge(%struct.rvt_qp* %376, i32* %378, %struct.ib_grh* %381, i64 %382, i32 1, i32 0)
  %384 = load i64, i64* %24, align 8
  %385 = call i32 @rvt_update_sge(%struct.rvt_sge_state* %11, i64 %384, i32 0)
  %386 = load i64, i64* %24, align 8
  %387 = load i64, i64* %14, align 8
  %388 = sub nsw i64 %387, %386
  store i64 %388, i64* %14, align 8
  br label %365

389:                                              ; preds = %365
  %390 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %391 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %390, i32 0, i32 10
  %392 = call i32 @rvt_put_ss(i32* %391)
  %393 = load i32, i32* @RVT_R_WRID_VALID, align 4
  %394 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %395 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %394, i32 0, i32 9
  %396 = call i32 @test_and_clear_bit(i32 %393, i32* %395)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %399, label %398

398:                                              ; preds = %389
  br label %515

399:                                              ; preds = %389
  %400 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %401 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %400, i32 0, i32 8
  %402 = load i32, i32* %401, align 8
  %403 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 10
  store i32 %402, i32* %403, align 8
  %404 = load i32, i32* @IB_WC_SUCCESS, align 4
  %405 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 9
  store i32 %404, i32* %405, align 4
  %406 = load i32, i32* @IB_WC_RECV, align 4
  %407 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 8
  store i32 %406, i32* %407, align 8
  %408 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %409 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %408, i32 0, i32 6
  %410 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 7
  store %struct.TYPE_9__* %409, %struct.TYPE_9__** %410, align 8
  %411 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %412 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %411, i32 0, i32 6
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 8
  %415 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 1
  store i32 %414, i32* %415, align 8
  %416 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %417 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %416, i32 0, i32 6
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* @IB_QPT_GSI, align 8
  %421 = icmp eq i64 %419, %420
  br i1 %421, label %429, label %422

422:                                              ; preds = %399
  %423 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %424 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %423, i32 0, i32 6
  %425 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* @IB_QPT_SMI, align 8
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %429, label %453

429:                                              ; preds = %422, %399
  %430 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %431 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %430, i32 0, i32 6
  %432 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = load i64, i64* @IB_QPT_GSI, align 8
  %435 = icmp eq i64 %433, %434
  br i1 %435, label %443, label %436

436:                                              ; preds = %429
  %437 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %438 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %437, i32 0, i32 6
  %439 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = load i64, i64* @IB_QPT_SMI, align 8
  %442 = icmp eq i64 %440, %441
  br i1 %442, label %443, label %447

443:                                              ; preds = %436, %429
  %444 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %445 = call i64 @rvt_get_swqe_pkey_index(%struct.rvt_swqe* %444)
  %446 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 6
  store i64 %445, i64* %446, align 8
  br label %452

447:                                              ; preds = %436
  %448 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %449 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %448, i32 0, i32 7
  %450 = load i64, i64* %449, align 8
  %451 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 6
  store i64 %450, i64* %451, align 8
  br label %452

452:                                              ; preds = %447, %443
  br label %455

453:                                              ; preds = %422
  %454 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 6
  store i64 0, i64* %454, align 8
  br label %455

455:                                              ; preds = %453, %452
  %456 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %457 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %9, align 8
  %460 = call i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr* %459)
  %461 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %462 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = shl i32 1, %463
  %465 = sub nsw i32 %464, 1
  %466 = and i32 %460, %465
  %467 = or i32 %458, %466
  %468 = load i32, i32* @U16_MAX, align 4
  %469 = and i32 %467, %468
  %470 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 2
  store i32 %469, i32* %470, align 4
  %471 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 2
  %472 = load i32, i32* %471, align 4
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %485

474:                                              ; preds = %455
  %475 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %476 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %475, i32 0, i32 6
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = load i64, i64* @IB_QPT_GSI, align 8
  %480 = icmp eq i64 %478, %479
  br i1 %480, label %481, label %485

481:                                              ; preds = %474
  %482 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %483 = call i32 @be16_to_cpu(i32 %482)
  %484 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 2
  store i32 %483, i32* %484, align 4
  br label %485

485:                                              ; preds = %481, %474, %455
  %486 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %9, align 8
  %487 = call i64 @rdma_ah_get_sl(%struct.rdma_ah_attr* %486)
  %488 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 3
  store i64 %487, i64* %488, align 8
  %489 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %9, align 8
  %490 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %489)
  %491 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %492 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = shl i32 1, %493
  %495 = sub nsw i32 %494, 1
  %496 = and i32 %490, %495
  %497 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 4
  store i32 %496, i32* %497, align 8
  %498 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %499 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %498, i32 0, i32 5
  %500 = load i32, i32* %499, align 4
  %501 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 5
  store i32 %500, i32* %501, align 4
  %502 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %503 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %504 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 8
  %507 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %508 = and i32 %506, %507
  %509 = call i32 @rvt_recv_cq(%struct.rvt_qp* %502, %struct.ib_wc* %13, i32 %508)
  %510 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %5, align 8
  %511 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %512, align 8
  br label %515

515:                                              ; preds = %485, %398, %282, %270, %251
  %516 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %517 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %516, i32 0, i32 4
  %518 = load i64, i64* %10, align 8
  %519 = call i32 @spin_unlock_irqrestore(i32* %517, i64 %518)
  br label %520

520:                                              ; preds = %515, %202, %156, %104
  %521 = call i32 (...) @rcu_read_unlock()
  br label %522

522:                                              ; preds = %520, %49
  ret void
}

declare dso_local %struct.hfi1_ibport* @to_iport(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rvt_qp* @rvt_lookup_qpn(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ib_to_rvt(i32) #1

declare dso_local i32 @rvt_get_swqe_remote_qpn(%struct.rvt_swqe*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.rdma_ah_attr* @rvt_get_swqe_ah_attr(%struct.rvt_swqe*) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i64 @rdma_ah_get_sl(%struct.rdma_ah_attr*) #1

declare dso_local i32 @hfi1_get_pkey(%struct.hfi1_ibport*, i64) #1

declare dso_local i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ingress_pkey_check(%struct.hfi1_pportdata*, i32, i32, i64, i64, i32) #1

declare dso_local i32 @hfi1_bad_pkey(%struct.hfi1_ibport*, i32, i64, i32, i32, i64, i32) #1

declare dso_local i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i64 @rvt_get_swqe_remote_qkey(%struct.rvt_swqe*) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rvt_get_rwqe(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rvt_rc_error(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ib_is_opa_gid(%struct.TYPE_14__*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @hfi1_make_grh(%struct.hfi1_ibport*, %struct.ib_grh*, %struct.ib_global_route*, i32, i32) #1

declare dso_local i32 @rvt_copy_sge(%struct.rvt_qp*, i32*, %struct.ib_grh*, i64, i32, i32) #1

declare dso_local i32 @rvt_skip_sge(i32*, i32, i32) #1

declare dso_local i64 @rvt_get_sge_length(%struct.rvt_sge*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rvt_update_sge(%struct.rvt_sge_state*, i64, i32) #1

declare dso_local i32 @rvt_put_ss(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @rvt_get_swqe_pkey_index(%struct.rvt_swqe*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @rvt_recv_cq(%struct.rvt_qp*, %struct.ib_wc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
