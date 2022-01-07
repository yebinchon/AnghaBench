; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_hfi1_qp_priv_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_hfi1_qp_priv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { i32 }
%struct.rvt_qp = type { i32, %struct.TYPE_13__*, %struct.hfi1_qp_priv* }
%struct.TYPE_13__ = type { %struct.hfi1_ack_priv* }
%struct.hfi1_ack_priv = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.rvt_swqe* }
%struct.rvt_swqe = type { %struct.hfi1_swqe_priv* }
%struct.hfi1_swqe_priv = type { %struct.TYPE_15__ }
%struct.hfi1_qp_priv = type { i8*, %struct.TYPE_14__*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }
%struct.TYPE_11__ = type { i32, i8*, i8*, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.ib_qp_init_attr = type { i64 }

@opfn_send_conn_request = common dso_local global i32 0, align 4
@tid_rdma_trigger_resume = common dso_local global i32 0, align 4
@RXE_NUM_TID_FLOWS = common dso_local global i8* null, align 8
@KERN_GENERATION_RESERVED = common dso_local global i32 0, align 4
@WRITE_RESP = common dso_local global i32 0, align 4
@HFI1_QP_WQE_INVALID = common dso_local global i8* null, align 8
@TID_RNR_NAK_INIT = common dso_local global i32 0, align 4
@hfi1_tid_timeout = common dso_local global i32 0, align 4
@hfi1_tid_retry_timeout = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@TID_RDMA = common dso_local global i32 0, align 4
@TID_RDMA_MAX_PAGES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_qp_priv_init(%struct.rvt_dev_info* %0, %struct.rvt_qp* %1, %struct.ib_qp_init_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvt_dev_info*, align 8
  %6 = alloca %struct.rvt_qp*, align 8
  %7 = alloca %struct.ib_qp_init_attr*, align 8
  %8 = alloca %struct.hfi1_qp_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hfi1_devdata*, align 8
  %12 = alloca %struct.hfi1_swqe_priv*, align 8
  %13 = alloca %struct.rvt_swqe*, align 8
  %14 = alloca %struct.hfi1_ack_priv*, align 8
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %5, align 8
  store %struct.rvt_qp* %1, %struct.rvt_qp** %6, align 8
  store %struct.ib_qp_init_attr* %2, %struct.ib_qp_init_attr** %7, align 8
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %16 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %15, i32 0, i32 2
  %17 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %16, align 8
  store %struct.hfi1_qp_priv* %17, %struct.hfi1_qp_priv** %8, align 8
  %18 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %5, align 8
  %19 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %20 = call %struct.TYPE_14__* @qp_to_rcd(%struct.rvt_dev_info* %18, %struct.rvt_qp* %19)
  %21 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %22 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %21, i32 0, i32 1
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %22, align 8
  %23 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %24 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %23, i32 0, i32 18
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %28 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %27, i32 0, i32 18
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* @opfn_send_conn_request, align 4
  %31 = call i32 @INIT_WORK(i32* %29, i32 %30)
  %32 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %33 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %32, i32 0, i32 17
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* @tid_rdma_trigger_resume, align 4
  %36 = call i32 @INIT_WORK(i32* %34, i32 %35)
  %37 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %38 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %37, i32 0, i32 16
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load i8*, i8** @RXE_NUM_TID_FLOWS, align 8
  %41 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %42 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %41, i32 0, i32 16
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** @RXE_NUM_TID_FLOWS, align 8
  %45 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %46 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %45, i32 0, i32 16
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load i32, i32* @KERN_GENERATION_RESERVED, align 4
  %49 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %50 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %49, i32 0, i32 16
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @WRITE_RESP, align 4
  %53 = call i32 @TID_OP(i32 %52)
  %54 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %55 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %54, i32 0, i32 15
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** @HFI1_QP_WQE_INVALID, align 8
  %57 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %58 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %57, i32 0, i32 14
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @HFI1_QP_WQE_INVALID, align 8
  %60 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %61 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %60, i32 0, i32 13
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @HFI1_QP_WQE_INVALID, align 8
  %63 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %64 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %63, i32 0, i32 12
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @TID_RNR_NAK_INIT, align 4
  %66 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %67 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** @HFI1_QP_WQE_INVALID, align 8
  %69 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %70 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %69, i32 0, i32 10
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @HFI1_QP_WQE_INVALID, align 8
  %72 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %73 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %72, i32 0, i32 9
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** @HFI1_QP_WQE_INVALID, align 8
  %75 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %76 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %75, i32 0, i32 8
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** @HFI1_QP_WQE_INVALID, align 8
  %78 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %79 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %78, i32 0, i32 7
  store i8* %77, i8** %79, align 8
  %80 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %81 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %80, i32 0, i32 6
  %82 = call i32 @atomic_set(i32* %81, i32 0)
  %83 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %84 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %83, i32 0, i32 5
  %85 = call i32 @atomic_set(i32* %84, i32 0)
  %86 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %87 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %86, i32 0, i32 4
  %88 = load i32, i32* @hfi1_tid_timeout, align 4
  %89 = call i32 @timer_setup(i32* %87, i32 %88, i32 0)
  %90 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %91 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %90, i32 0, i32 3
  %92 = load i32, i32* @hfi1_tid_retry_timeout, align 4
  %93 = call i32 @timer_setup(i32* %91, i32 %92, i32 0)
  %94 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %95 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %94, i32 0, i32 2
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %7, align 8
  %98 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @IB_QPT_RC, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %224

102:                                              ; preds = %3
  %103 = load i32, i32* @TID_RDMA, align 4
  %104 = call i64 @HFI1_CAP_IS_KSET(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %224

106:                                              ; preds = %102
  %107 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %108 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %110, align 8
  store %struct.hfi1_devdata* %111, %struct.hfi1_devdata** %11, align 8
  %112 = load i32, i32* @TID_RDMA_MAX_PAGES, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 1
  %115 = trunc i64 %114 to i32
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %11, align 8
  %118 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @kzalloc_node(i32 %115, i32 %116, i32 %119)
  %121 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %122 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  %124 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %106
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %225

130:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %165, %130
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %134 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %168

137:                                              ; preds = %131
  %138 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %138, i32 %139)
  store %struct.rvt_swqe* %140, %struct.rvt_swqe** %13, align 8
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %11, align 8
  %143 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @kzalloc_node(i32 16, i32 %141, i32 %144)
  %146 = bitcast i8* %145 to %struct.hfi1_swqe_priv*
  store %struct.hfi1_swqe_priv* %146, %struct.hfi1_swqe_priv** %12, align 8
  %147 = load %struct.hfi1_swqe_priv*, %struct.hfi1_swqe_priv** %12, align 8
  %148 = icmp ne %struct.hfi1_swqe_priv* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %137
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %4, align 4
  br label %225

152:                                              ; preds = %137
  %153 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %154 = load %struct.hfi1_swqe_priv*, %struct.hfi1_swqe_priv** %12, align 8
  %155 = getelementptr inbounds %struct.hfi1_swqe_priv, %struct.hfi1_swqe_priv* %154, i32 0, i32 0
  %156 = call i32 @hfi1_init_trdma_req(%struct.rvt_qp* %153, %struct.TYPE_15__* %155)
  %157 = load %struct.rvt_swqe*, %struct.rvt_swqe** %13, align 8
  %158 = load %struct.hfi1_swqe_priv*, %struct.hfi1_swqe_priv** %12, align 8
  %159 = getelementptr inbounds %struct.hfi1_swqe_priv, %struct.hfi1_swqe_priv* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  store %struct.rvt_swqe* %157, %struct.rvt_swqe** %161, align 8
  %162 = load %struct.hfi1_swqe_priv*, %struct.hfi1_swqe_priv** %12, align 8
  %163 = load %struct.rvt_swqe*, %struct.rvt_swqe** %13, align 8
  %164 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %163, i32 0, i32 0
  store %struct.hfi1_swqe_priv* %162, %struct.hfi1_swqe_priv** %164, align 8
  br label %165

165:                                              ; preds = %152
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %131

168:                                              ; preds = %131
  store i32 0, i32* %9, align 4
  br label %169

169:                                              ; preds = %220, %168
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %5, align 8
  %172 = call i32 @rvt_max_atomic(%struct.rvt_dev_info* %171)
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %223

174:                                              ; preds = %169
  %175 = load i32, i32* @GFP_KERNEL, align 4
  %176 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %11, align 8
  %177 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @kzalloc_node(i32 16, i32 %175, i32 %178)
  %180 = bitcast i8* %179 to %struct.hfi1_ack_priv*
  store %struct.hfi1_ack_priv* %180, %struct.hfi1_ack_priv** %14, align 8
  %181 = load %struct.hfi1_ack_priv*, %struct.hfi1_ack_priv** %14, align 8
  %182 = icmp ne %struct.hfi1_ack_priv* %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %174
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %4, align 4
  br label %225

186:                                              ; preds = %174
  %187 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %188 = load %struct.hfi1_ack_priv*, %struct.hfi1_ack_priv** %14, align 8
  %189 = getelementptr inbounds %struct.hfi1_ack_priv, %struct.hfi1_ack_priv* %188, i32 0, i32 0
  %190 = call i32 @hfi1_init_trdma_req(%struct.rvt_qp* %187, %struct.TYPE_15__* %189)
  %191 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %192 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %191, i32 0, i32 1
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i64 %195
  %197 = load %struct.hfi1_ack_priv*, %struct.hfi1_ack_priv** %14, align 8
  %198 = getelementptr inbounds %struct.hfi1_ack_priv, %struct.hfi1_ack_priv* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  store %struct.TYPE_13__* %196, %struct.TYPE_13__** %200, align 8
  %201 = load %struct.hfi1_ack_priv*, %struct.hfi1_ack_priv** %14, align 8
  %202 = getelementptr inbounds %struct.hfi1_ack_priv, %struct.hfi1_ack_priv* %201, i32 0, i32 0
  %203 = load i32, i32* @GFP_KERNEL, align 4
  %204 = call i32 @hfi1_kern_exp_rcv_alloc_flows(%struct.TYPE_15__* %202, i32 %203)
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %186
  %208 = load %struct.hfi1_ack_priv*, %struct.hfi1_ack_priv** %14, align 8
  %209 = call i32 @kfree(%struct.hfi1_ack_priv* %208)
  %210 = load i32, i32* %10, align 4
  store i32 %210, i32* %4, align 4
  br label %225

211:                                              ; preds = %186
  %212 = load %struct.hfi1_ack_priv*, %struct.hfi1_ack_priv** %14, align 8
  %213 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %214 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %213, i32 0, i32 1
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  store %struct.hfi1_ack_priv* %212, %struct.hfi1_ack_priv** %219, align 8
  br label %220

220:                                              ; preds = %211
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %9, align 4
  br label %169

223:                                              ; preds = %169
  br label %224

224:                                              ; preds = %223, %102, %3
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %224, %207, %183, %149, %127
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local %struct.TYPE_14__* @qp_to_rcd(%struct.rvt_dev_info*, %struct.rvt_qp*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @TID_OP(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @HFI1_CAP_IS_KSET(i32) #1

declare dso_local i8* @kzalloc_node(i32, i32, i32) #1

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i32) #1

declare dso_local i32 @hfi1_init_trdma_req(%struct.rvt_qp*, %struct.TYPE_15__*) #1

declare dso_local i32 @rvt_max_atomic(%struct.rvt_dev_info*) #1

declare dso_local i32 @hfi1_kern_exp_rcv_alloc_flows(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @kfree(%struct.hfi1_ack_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
