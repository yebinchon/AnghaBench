; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_do_rc_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_do_rc_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { i32 }
%struct.rvt_swqe = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.hfi1_ibport = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.hfi1_pportdata = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sdma_engine = type { i32 }

@ib_hfi1_wc_opcode = common dso_local global i32* null, align 8
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@HFI1_HAS_SEND_DMA = common dso_local global i32 0, align 4
@IB_WR_TID_RDMA_WRITE = common dso_local global i64 0, align 8
@SEND_LAST = common dso_local global i32 0, align 4
@IB_QPS_SQD = common dso_local global i64 0, align 8
@HFI1_S_TID_WAIT_INTERLCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rvt_swqe* @do_rc_completion(%struct.rvt_qp* %0, %struct.rvt_swqe* %1, %struct.hfi1_ibport* %2) #0 {
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca %struct.rvt_swqe*, align 8
  %6 = alloca %struct.hfi1_ibport*, align 8
  %7 = alloca %struct.hfi1_qp_priv*, align 8
  %8 = alloca %struct.hfi1_pportdata*, align 8
  %9 = alloca %struct.sdma_engine*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %4, align 8
  store %struct.rvt_swqe* %1, %struct.rvt_swqe** %5, align 8
  store %struct.hfi1_ibport* %2, %struct.hfi1_ibport** %6, align 8
  %12 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %13 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %12, i32 0, i32 15
  %14 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %13, align 8
  store %struct.hfi1_qp_priv* %14, %struct.hfi1_qp_priv** %7, align 8
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %16 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %15, i32 0, i32 14
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %19 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %20 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @trace_hfi1_rc_completion(%struct.rvt_qp* %18, i32 %21)
  %23 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %24 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %27 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %26, i32 0, i32 13
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @cmp_psn(i32 %25, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %3
  %32 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %33 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %36 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @cmp_psn(i32 %34, i32 %37)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %31, %3
  %41 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %42 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %43 = call i32 @trdma_clean_swqe(%struct.rvt_qp* %41, %struct.rvt_swqe* %42)
  %44 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %45 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %46 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %47 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @trace_hfi1_qp_send_completion(%struct.rvt_qp* %44, %struct.rvt_swqe* %45, i32 %48)
  %50 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %51 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %52 = load i32*, i32** @ib_hfi1_wc_opcode, align 8
  %53 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %54 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IB_WC_SUCCESS, align 4
  %60 = call i32 @rvt_qp_complete_swqe(%struct.rvt_qp* %50, %struct.rvt_swqe* %51, i32 %58, i32 %59)
  br label %94

61:                                               ; preds = %31
  %62 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %6, align 8
  %63 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %62)
  store %struct.hfi1_pportdata* %63, %struct.hfi1_pportdata** %8, align 8
  %64 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %6, align 8
  %65 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @this_cpu_inc(i32 %68)
  %70 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %8, align 8
  %71 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @HFI1_HAS_SEND_DMA, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %61
  %79 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %80 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %79, i32 0, i32 10
  %81 = call i64 @rdma_ah_get_sl(i32* %80)
  store i64 %81, i64* %10, align 8
  %82 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %6, align 8
  %83 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %11, align 8
  %88 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call %struct.sdma_engine* @qp_to_sdma_engine(%struct.rvt_qp* %88, i64 %89)
  store %struct.sdma_engine* %90, %struct.sdma_engine** %9, align 8
  %91 = load %struct.sdma_engine*, %struct.sdma_engine** %9, align 8
  %92 = call i32 @sdma_engine_progress_schedule(%struct.sdma_engine* %91)
  br label %93

93:                                               ; preds = %78, %61
  br label %94

94:                                               ; preds = %93, %40
  %95 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %96 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %99 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %98, i32 0, i32 9
  store i32 %97, i32* %99, align 4
  %100 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %101 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @IB_WR_TID_RDMA_WRITE, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %94
  %107 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %108 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %109 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @update_last_psn(%struct.rvt_qp* %107, i32 %110)
  br label %112

112:                                              ; preds = %106, %94
  %113 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %114 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %117 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %161

120:                                              ; preds = %112
  %121 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %122 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  %125 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %126 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp sge i64 %124, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %131 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %130, i32 0, i32 1
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %129, %120
  %133 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %134 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %137 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %139 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %140 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %138, i64 %141)
  store %struct.rvt_swqe* %142, %struct.rvt_swqe** %5, align 8
  %143 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %144 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %147 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %145, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %132
  %151 = load i32, i32* @SEND_LAST, align 4
  %152 = call i32 @OP(i32 %151)
  %153 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %154 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %153, i32 0, i32 7
  store i32 %152, i32* %154, align 4
  %155 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %156 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %159 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %158, i32 0, i32 6
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %150, %132
  br label %196

161:                                              ; preds = %112
  %162 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %163 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %163, align 8
  %166 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %167 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp sge i64 %165, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %161
  %171 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %172 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %171, i32 0, i32 0
  store i64 0, i64* %172, align 8
  br label %173

173:                                              ; preds = %170, %161
  %174 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %175 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @IB_QPS_SQD, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %173
  %180 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %181 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %184 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %182, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %179
  %188 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %189 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %188, i32 0, i32 5
  store i64 0, i64* %189, align 8
  br label %190

190:                                              ; preds = %187, %179, %173
  %191 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %192 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %193 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %191, i64 %194)
  store %struct.rvt_swqe* %195, %struct.rvt_swqe** %5, align 8
  br label %196

196:                                              ; preds = %190, %160
  %197 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  %198 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @HFI1_S_TID_WAIT_INTERLCK, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %196
  %204 = load i32, i32* @HFI1_S_TID_WAIT_INTERLCK, align 4
  %205 = xor i32 %204, -1
  %206 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  %207 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %211 = call i32 @hfi1_schedule_send(%struct.rvt_qp* %210)
  br label %212

212:                                              ; preds = %203, %196
  %213 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  ret %struct.rvt_swqe* %213
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @trace_hfi1_rc_completion(%struct.rvt_qp*, i32) #1

declare dso_local i64 @cmp_psn(i32, i32) #1

declare dso_local i32 @trdma_clean_swqe(%struct.rvt_qp*, %struct.rvt_swqe*) #1

declare dso_local i32 @trace_hfi1_qp_send_completion(%struct.rvt_qp*, %struct.rvt_swqe*, i32) #1

declare dso_local i32 @rvt_qp_complete_swqe(%struct.rvt_qp*, %struct.rvt_swqe*, i32, i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i64 @rdma_ah_get_sl(i32*) #1

declare dso_local %struct.sdma_engine* @qp_to_sdma_engine(%struct.rvt_qp*, i64) #1

declare dso_local i32 @sdma_engine_progress_schedule(%struct.sdma_engine*) #1

declare dso_local i32 @update_last_psn(%struct.rvt_qp*, i32) #1

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i64) #1

declare dso_local i32 @OP(i32) #1

declare dso_local i32 @hfi1_schedule_send(%struct.rvt_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
