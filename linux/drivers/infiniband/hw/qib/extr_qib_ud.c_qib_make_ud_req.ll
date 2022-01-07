; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_ud.c_qib_make_ud_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_ud.c_qib_make_ud_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_19__, i32, %struct.TYPE_11__, %struct.rvt_swqe*, i32, %struct.TYPE_11__*, i32, i32, i32, %struct.qib_qp_priv* }
%struct.TYPE_19__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i32 }
%struct.rvt_swqe = type { i32, i32, %struct.TYPE_16__, i32* }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.qib_qp_priv = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i8**, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.ib_other_headers, %struct.TYPE_12__ }
%struct.ib_other_headers = type { %struct.TYPE_18__, i8** }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8**, i32 }
%struct.TYPE_12__ = type { %struct.ib_other_headers, i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.qib_pportdata = type { i32, i32 }
%struct.qib_ibport = type { i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }

@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_PROCESS_NEXT_SEND_OK = common dso_local global i32 0, align 4
@RVT_FLUSH_SEND = common dso_local global i32 0, align 4
@RVT_S_WAIT_DMA = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IB_MULTICAST_LID_BASE = common dso_local global i8* null, align 8
@IB_LID_PERMISSIVE = common dso_local global i8* null, align 8
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@QIB_LRH_GRH = common dso_local global i32 0, align 4
@QIB_LRH_BTH = common dso_local global i32 0, align 4
@IB_WR_SEND_WITH_IMM = common dso_local global i64 0, align 8
@IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE = common dso_local global i32 0, align 4
@IB_OPCODE_UD_SEND_ONLY = common dso_local global i32 0, align 4
@IB_QPT_SMI = common dso_local global i64 0, align 8
@SIZE_OF_CRC = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@IB_BTH_SOLICITED = common dso_local global i32 0, align 4
@QIB_DEFAULT_P_KEY = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@QIB_MULTICAST_QPN = common dso_local global i32 0, align 4
@QIB_PSN_MASK = common dso_local global i32 0, align 4
@RVT_S_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_make_ud_req(%struct.rvt_qp* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.qib_qp_priv*, align 8
  %7 = alloca %struct.ib_other_headers*, align 8
  %8 = alloca %struct.rdma_ah_attr*, align 8
  %9 = alloca %struct.qib_pportdata*, align 8
  %10 = alloca %struct.qib_ibport*, align 8
  %11 = alloca %struct.rvt_swqe*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %4, align 8
  store i64* %1, i64** %5, align 8
  %20 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %21 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %20, i32 0, i32 17
  %22 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %21, align 8
  store %struct.qib_qp_priv* %22, %struct.qib_qp_priv** %6, align 8
  store i32 0, i32* %17, align 4
  %23 = load i32*, i32** @ib_rvt_state_ops, align 8
  %24 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %25 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RVT_PROCESS_NEXT_SEND_OK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %74, label %32

32:                                               ; preds = %2
  %33 = load i32*, i32** @ib_rvt_state_ops, align 8
  %34 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %35 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RVT_FLUSH_SEND, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  br label %538

43:                                               ; preds = %32
  %44 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %45 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %48 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %47, i32 0, i32 16
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @READ_ONCE(i32 %49)
  %51 = icmp eq i64 %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %538

53:                                               ; preds = %43
  %54 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %6, align 8
  %55 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %54, i32 0, i32 1
  %56 = call i64 @atomic_read(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @RVT_S_WAIT_DMA, align 4
  %60 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %61 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %538

64:                                               ; preds = %53
  %65 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %66 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %67 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %65, i64 %68)
  store %struct.rvt_swqe* %69, %struct.rvt_swqe** %11, align 8
  %70 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %71 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %72 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %73 = call i32 @rvt_send_complete(%struct.rvt_qp* %70, %struct.rvt_swqe* %71, i32 %72)
  br label %537

74:                                               ; preds = %2
  %75 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %76 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %79 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %78, i32 0, i32 16
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @READ_ONCE(i32 %80)
  %82 = icmp eq i64 %77, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %538

84:                                               ; preds = %74
  %85 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %86 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %87 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %85, i64 %88)
  store %struct.rvt_swqe* %89, %struct.rvt_swqe** %11, align 8
  %90 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %91 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %97 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = icmp sge i32 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %84
  store i32 0, i32* %18, align 4
  br label %101

101:                                              ; preds = %100, %84
  %102 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %103 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %107 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %106, i32 0, i32 15
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.qib_ibport* @to_iport(i32 %105, i32 %108)
  store %struct.qib_ibport* %109, %struct.qib_ibport** %10, align 8
  %110 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %111 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %110)
  store %struct.qib_pportdata* %111, %struct.qib_pportdata** %9, align 8
  %112 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %113 = call %struct.rdma_ah_attr* @rvt_get_swqe_ah_attr(%struct.rvt_swqe* %112)
  store %struct.rdma_ah_attr* %113, %struct.rdma_ah_attr** %8, align 8
  %114 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %115 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %114)
  %116 = load i8*, i8** @IB_MULTICAST_LID_BASE, align 8
  %117 = call i32 @be16_to_cpu(i8* %116)
  %118 = icmp sge i32 %115, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %101
  %120 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %121 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %120)
  %122 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %123 = call i32 @be16_to_cpu(i8* %122)
  %124 = icmp ne i32 %121, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %127 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %126, i32 0, i32 1
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @this_cpu_inc(i32 %130)
  br label %139

132:                                              ; preds = %119
  %133 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %134 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %133, i32 0, i32 1
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @this_cpu_inc(i32 %137)
  br label %139

139:                                              ; preds = %132, %125
  br label %200

140:                                              ; preds = %101
  %141 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %142 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %141, i32 0, i32 1
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @this_cpu_inc(i32 %145)
  %147 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %148 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %147)
  %149 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %150 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 1, %151
  %153 = sub nsw i32 %152, 1
  %154 = xor i32 %153, -1
  %155 = and i32 %148, %154
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %16, align 4
  %157 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %158 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %156, %159
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %199

164:                                              ; preds = %140
  %165 = load i64*, i64** %5, align 8
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %19, align 8
  %167 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %6, align 8
  %168 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %167, i32 0, i32 1
  %169 = call i64 @atomic_read(i32* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load i32, i32* @RVT_S_WAIT_DMA, align 4
  %173 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %174 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %538

177:                                              ; preds = %164
  %178 = load i32, i32* %18, align 4
  %179 = sext i32 %178 to i64
  %180 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %181 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %180, i32 0, i32 2
  store i64 %179, i64* %181, align 8
  %182 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %183 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %182, i32 0, i32 14
  %184 = load i64, i64* %19, align 8
  %185 = call i32 @spin_unlock_irqrestore(i32* %183, i64 %184)
  %186 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %187 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %188 = call i32 @qib_ud_loopback(%struct.rvt_qp* %186, %struct.rvt_swqe* %187)
  %189 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %190 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %189, i32 0, i32 14
  %191 = load i64, i64* %19, align 8
  %192 = call i32 @spin_lock_irqsave(i32* %190, i64 %191)
  %193 = load i64, i64* %19, align 8
  %194 = load i64*, i64** %5, align 8
  store i64 %193, i64* %194, align 8
  %195 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %196 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %197 = load i32, i32* @IB_WC_SUCCESS, align 4
  %198 = call i32 @rvt_send_complete(%struct.rvt_qp* %195, %struct.rvt_swqe* %196, i32 %197)
  br label %537

199:                                              ; preds = %140
  br label %200

200:                                              ; preds = %199, %139
  %201 = load i32, i32* %18, align 4
  %202 = sext i32 %201 to i64
  %203 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %204 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %203, i32 0, i32 2
  store i64 %202, i64* %204, align 8
  %205 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %206 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sub nsw i32 0, %207
  %209 = and i32 %208, 3
  store i32 %209, i32* %13, align 4
  %210 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %211 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %212, %213
  %215 = ashr i32 %214, 2
  store i32 %215, i32* %12, align 4
  %216 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %217 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %216, i32 0, i32 4
  store i32 7, i32* %217, align 4
  %218 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %219 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %222 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 8
  %223 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %224 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %223, i32 0, i32 10
  %225 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %226 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %225, i32 0, i32 13
  store %struct.TYPE_11__* %224, %struct.TYPE_11__** %226, align 8
  %227 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %228 = call i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr* %227)
  %229 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %230 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %229, i32 0, i32 12
  store i32 %228, i32* %230, align 8
  %231 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %232 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %233 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %232, i32 0, i32 11
  store %struct.rvt_swqe* %231, %struct.rvt_swqe** %233, align 8
  %234 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %235 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %234, i32 0, i32 3
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %240 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %239, i32 0, i32 10
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 3
  store i32 %238, i32* %241, align 8
  %242 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %243 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %242, i32 0, i32 3
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  %246 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %247 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %246, i32 0, i32 10
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 2
  store i32* %245, i32** %248, align 8
  %249 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %250 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %254 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %253, i32 0, i32 10
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 1
  store i32 %252, i32* %255, align 4
  %256 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %257 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %260 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %259, i32 0, i32 10
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  store i32 %258, i32* %261, align 8
  %262 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %263 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %262)
  %264 = load i32, i32* @IB_AH_GRH, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %295

267:                                              ; preds = %200
  %268 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %269 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %6, align 8
  %270 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %269, i32 0, i32 0
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 1
  %275 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %276 = call i32 @rdma_ah_read_grh(%struct.rdma_ah_attr* %275)
  %277 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %278 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %12, align 4
  %281 = call i64 @qib_make_grh(%struct.qib_ibport* %268, i32* %274, i32 %276, i32 %279, i32 %280)
  %282 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %283 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %285, %281
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %283, align 4
  %288 = load i32, i32* @QIB_LRH_GRH, align 4
  store i32 %288, i32* %15, align 4
  %289 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %6, align 8
  %290 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %289, i32 0, i32 0
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  store %struct.ib_other_headers* %294, %struct.ib_other_headers** %7, align 8
  br label %302

295:                                              ; preds = %200
  %296 = load i32, i32* @QIB_LRH_BTH, align 4
  store i32 %296, i32* %15, align 4
  %297 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %6, align 8
  %298 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %297, i32 0, i32 0
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  store %struct.ib_other_headers* %301, %struct.ib_other_headers** %7, align 8
  br label %302

302:                                              ; preds = %295, %267
  %303 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %304 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @IB_WR_SEND_WITH_IMM, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %325

309:                                              ; preds = %302
  %310 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %311 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 4
  %314 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %315 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.ib_other_headers*, %struct.ib_other_headers** %7, align 8
  %320 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 1
  store i32 %318, i32* %322, align 8
  %323 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE, align 4
  %324 = shl i32 %323, 24
  store i32 %324, i32* %14, align 4
  br label %328

325:                                              ; preds = %302
  %326 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY, align 4
  %327 = shl i32 %326, 24
  store i32 %327, i32* %14, align 4
  br label %328

328:                                              ; preds = %325, %309
  %329 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %330 = call i64 @rdma_ah_get_sl(%struct.rdma_ah_attr* %329)
  %331 = shl i64 %330, 4
  %332 = load i32, i32* %15, align 4
  %333 = sext i32 %332 to i64
  %334 = or i64 %333, %331
  %335 = trunc i64 %334 to i32
  store i32 %335, i32* %15, align 4
  %336 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %337 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %336, i32 0, i32 8
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @IB_QPT_SMI, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %345

342:                                              ; preds = %328
  %343 = load i32, i32* %15, align 4
  %344 = or i32 %343, 61440
  store i32 %344, i32* %15, align 4
  br label %356

345:                                              ; preds = %328
  %346 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %347 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %350 = call i64 @rdma_ah_get_sl(%struct.rdma_ah_attr* %349)
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = shl i32 %352, 12
  %354 = load i32, i32* %15, align 4
  %355 = or i32 %354, %353
  store i32 %355, i32* %15, align 4
  br label %356

356:                                              ; preds = %345, %342
  %357 = load i32, i32* %15, align 4
  %358 = call i8* @cpu_to_be16(i32 %357)
  %359 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %6, align 8
  %360 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %359, i32 0, i32 0
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 0
  %363 = load i8**, i8*** %362, align 8
  %364 = getelementptr inbounds i8*, i8** %363, i64 0
  store i8* %358, i8** %364, align 8
  %365 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %366 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %365)
  %367 = call i8* @cpu_to_be16(i32 %366)
  %368 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %6, align 8
  %369 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %368, i32 0, i32 0
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 0
  %372 = load i8**, i8*** %371, align 8
  %373 = getelementptr inbounds i8*, i8** %372, i64 1
  store i8* %367, i8** %373, align 8
  %374 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %375 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* %12, align 4
  %378 = add nsw i32 %376, %377
  %379 = load i32, i32* @SIZE_OF_CRC, align 4
  %380 = add nsw i32 %378, %379
  %381 = call i8* @cpu_to_be16(i32 %380)
  %382 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %6, align 8
  %383 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %382, i32 0, i32 0
  %384 = load %struct.TYPE_15__*, %struct.TYPE_15__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %384, i32 0, i32 0
  %386 = load i8**, i8*** %385, align 8
  %387 = getelementptr inbounds i8*, i8** %386, i64 2
  store i8* %381, i8** %387, align 8
  %388 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %389 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  store i32 %390, i32* %16, align 4
  %391 = load i32, i32* %16, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %412

393:                                              ; preds = %356
  %394 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %395 = call i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr* %394)
  %396 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %397 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = shl i32 1, %398
  %400 = sub nsw i32 %399, 1
  %401 = and i32 %395, %400
  %402 = load i32, i32* %16, align 4
  %403 = or i32 %402, %401
  store i32 %403, i32* %16, align 4
  %404 = load i32, i32* %16, align 4
  %405 = call i8* @cpu_to_be16(i32 %404)
  %406 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %6, align 8
  %407 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %406, i32 0, i32 0
  %408 = load %struct.TYPE_15__*, %struct.TYPE_15__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %408, i32 0, i32 0
  %410 = load i8**, i8*** %409, align 8
  %411 = getelementptr inbounds i8*, i8** %410, i64 3
  store i8* %405, i8** %411, align 8
  br label %420

412:                                              ; preds = %356
  %413 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %414 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %6, align 8
  %415 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %414, i32 0, i32 0
  %416 = load %struct.TYPE_15__*, %struct.TYPE_15__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %416, i32 0, i32 0
  %418 = load i8**, i8*** %417, align 8
  %419 = getelementptr inbounds i8*, i8** %418, i64 3
  store i8* %413, i8** %419, align 8
  br label %420

420:                                              ; preds = %412, %393
  %421 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %422 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %421, i32 0, i32 2
  %423 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %420
  %429 = load i32, i32* @IB_BTH_SOLICITED, align 4
  %430 = load i32, i32* %14, align 4
  %431 = or i32 %430, %429
  store i32 %431, i32* %14, align 4
  br label %432

432:                                              ; preds = %428, %420
  %433 = load i32, i32* %13, align 4
  %434 = shl i32 %433, 20
  %435 = load i32, i32* %14, align 4
  %436 = or i32 %435, %434
  store i32 %436, i32* %14, align 4
  %437 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %438 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %437, i32 0, i32 8
  %439 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = load i64, i64* @IB_QPT_SMI, align 8
  %442 = icmp eq i64 %440, %441
  br i1 %442, label %443, label %445

443:                                              ; preds = %432
  %444 = load i32, i32* @QIB_DEFAULT_P_KEY, align 4
  br label %463

445:                                              ; preds = %432
  %446 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %447 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %448 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %447, i32 0, i32 8
  %449 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = load i64, i64* @IB_QPT_GSI, align 8
  %452 = icmp eq i64 %450, %451
  br i1 %452, label %453, label %456

453:                                              ; preds = %445
  %454 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %455 = call i32 @rvt_get_swqe_pkey_index(%struct.rvt_swqe* %454)
  br label %460

456:                                              ; preds = %445
  %457 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %458 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %457, i32 0, i32 9
  %459 = load i32, i32* %458, align 8
  br label %460

460:                                              ; preds = %456, %453
  %461 = phi i32 [ %455, %453 ], [ %459, %456 ]
  %462 = call i32 @qib_get_pkey(%struct.qib_ibport* %446, i32 %461)
  br label %463

463:                                              ; preds = %460, %443
  %464 = phi i32 [ %444, %443 ], [ %462, %460 ]
  %465 = load i32, i32* %14, align 4
  %466 = or i32 %465, %464
  store i32 %466, i32* %14, align 4
  %467 = load i32, i32* %14, align 4
  %468 = call i8* @cpu_to_be32(i32 %467)
  %469 = load %struct.ib_other_headers*, %struct.ib_other_headers** %7, align 8
  %470 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %469, i32 0, i32 1
  %471 = load i8**, i8*** %470, align 8
  %472 = getelementptr inbounds i8*, i8** %471, i64 0
  store i8* %468, i8** %472, align 8
  %473 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %474 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %473)
  %475 = load i8*, i8** @IB_MULTICAST_LID_BASE, align 8
  %476 = call i32 @be16_to_cpu(i8* %475)
  %477 = icmp sge i32 %474, %476
  br i1 %477, label %478, label %487

478:                                              ; preds = %463
  %479 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %480 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %479)
  %481 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %482 = call i32 @be16_to_cpu(i8* %481)
  %483 = icmp ne i32 %480, %482
  br i1 %483, label %484, label %487

484:                                              ; preds = %478
  %485 = load i32, i32* @QIB_MULTICAST_QPN, align 4
  %486 = call i8* @cpu_to_be32(i32 %485)
  br label %491

487:                                              ; preds = %478, %463
  %488 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %489 = call i32 @rvt_get_swqe_remote_qpn(%struct.rvt_swqe* %488)
  %490 = call i8* @cpu_to_be32(i32 %489)
  br label %491

491:                                              ; preds = %487, %484
  %492 = phi i8* [ %486, %484 ], [ %490, %487 ]
  %493 = load %struct.ib_other_headers*, %struct.ib_other_headers** %7, align 8
  %494 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %493, i32 0, i32 1
  %495 = load i8**, i8*** %494, align 8
  %496 = getelementptr inbounds i8*, i8** %495, i64 1
  store i8* %492, i8** %496, align 8
  %497 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %498 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = load i32, i32* @QIB_PSN_MASK, align 4
  %501 = and i32 %499, %500
  %502 = call i8* @cpu_to_be32(i32 %501)
  %503 = load %struct.ib_other_headers*, %struct.ib_other_headers** %7, align 8
  %504 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %503, i32 0, i32 1
  %505 = load i8**, i8*** %504, align 8
  %506 = getelementptr inbounds i8*, i8** %505, i64 2
  store i8* %502, i8** %506, align 8
  %507 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %508 = call i32 @rvt_get_swqe_remote_qkey(%struct.rvt_swqe* %507)
  %509 = icmp slt i32 %508, 0
  br i1 %509, label %510, label %514

510:                                              ; preds = %491
  %511 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %512 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %511, i32 0, i32 6
  %513 = load i32, i32* %512, align 4
  br label %517

514:                                              ; preds = %491
  %515 = load %struct.rvt_swqe*, %struct.rvt_swqe** %11, align 8
  %516 = call i32 @rvt_get_swqe_remote_qkey(%struct.rvt_swqe* %515)
  br label %517

517:                                              ; preds = %514, %510
  %518 = phi i32 [ %513, %510 ], [ %516, %514 ]
  %519 = call i8* @cpu_to_be32(i32 %518)
  %520 = load %struct.ib_other_headers*, %struct.ib_other_headers** %7, align 8
  %521 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %522, i32 0, i32 0
  %524 = load i8**, i8*** %523, align 8
  %525 = getelementptr inbounds i8*, i8** %524, i64 0
  store i8* %519, i8** %525, align 8
  %526 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %527 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %526, i32 0, i32 8
  %528 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %527, i32 0, i32 1
  %529 = load i32, i32* %528, align 8
  %530 = call i8* @cpu_to_be32(i32 %529)
  %531 = load %struct.ib_other_headers*, %struct.ib_other_headers** %7, align 8
  %532 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %533, i32 0, i32 0
  %535 = load i8**, i8*** %534, align 8
  %536 = getelementptr inbounds i8*, i8** %535, i64 1
  store i8* %530, i8** %536, align 8
  br label %537

537:                                              ; preds = %517, %177, %64
  store i32 1, i32* %3, align 4
  br label %546

538:                                              ; preds = %171, %83, %58, %52, %42
  %539 = load i32, i32* @RVT_S_BUSY, align 4
  %540 = xor i32 %539, -1
  %541 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %542 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %541, i32 0, i32 7
  %543 = load i32, i32* %542, align 8
  %544 = and i32 %543, %540
  store i32 %544, i32* %542, align 8
  %545 = load i32, i32* %17, align 4
  store i32 %545, i32* %3, align 4
  br label %546

546:                                              ; preds = %538, %537
  %547 = load i32, i32* %3, align 4
  ret i32 %547
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i64) #1

declare dso_local i32 @rvt_send_complete(%struct.rvt_qp*, %struct.rvt_swqe*, i32) #1

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local %struct.rdma_ah_attr* @rvt_get_swqe_ah_attr(%struct.rvt_swqe*) #1

declare dso_local i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i32 @be16_to_cpu(i8*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_ud_loopback(%struct.rvt_qp*, %struct.rvt_swqe*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local i64 @qib_make_grh(%struct.qib_ibport*, i32*, i32, i32, i32) #1

declare dso_local i32 @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i64 @rdma_ah_get_sl(%struct.rdma_ah_attr*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr*) #1

declare dso_local i32 @qib_get_pkey(%struct.qib_ibport*, i32) #1

declare dso_local i32 @rvt_get_swqe_pkey_index(%struct.rvt_swqe*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @rvt_get_swqe_remote_qpn(%struct.rvt_swqe*) #1

declare dso_local i32 @rvt_get_swqe_remote_qkey(%struct.rvt_swqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
