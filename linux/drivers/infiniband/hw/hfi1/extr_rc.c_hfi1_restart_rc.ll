; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_hfi1_restart_rc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_hfi1_restart_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_6__, i32, i32, %struct.hfi1_qp_priv* }
%struct.TYPE_6__ = type { i32 }
%struct.hfi1_qp_priv = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rvt_swqe = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.hfi1_ibport = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.tid_rdma_request = type { i32 }

@IB_MIG_ARMED = common dso_local global i64 0, align 8
@IB_WR_OPFN = common dso_local global i64 0, align 8
@RVT_S_WAIT_ACK = common dso_local global i32 0, align 4
@IB_WR_TID_RDMA_READ = common dso_local global i64 0, align 8
@IB_WC_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@RVT_S_WAIT_FENCE = common dso_local global i32 0, align 4
@RVT_S_WAIT_RDMAR = common dso_local global i32 0, align 4
@RVT_S_WAIT_SSN_CREDIT = common dso_local global i32 0, align 4
@RVT_S_WAIT_PSN = common dso_local global i32 0, align 4
@HFI1_S_WAIT_TID_RESP = common dso_local global i32 0, align 4
@RVT_S_SEND_ONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_restart_rc(%struct.rvt_qp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_qp_priv*, align 8
  %8 = alloca %struct.rvt_swqe*, align 8
  %9 = alloca %struct.hfi1_ibport*, align 8
  %10 = alloca %struct.hfi1_ibport*, align 8
  %11 = alloca %struct.tid_rdma_request*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %13 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %12, i32 0, i32 11
  %14 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %13, align 8
  store %struct.hfi1_qp_priv* %14, %struct.hfi1_qp_priv** %7, align 8
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %17 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %15, i64 %18)
  store %struct.rvt_swqe* %19, %struct.rvt_swqe** %8, align 8
  %20 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %21 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %20, i32 0, i32 10
  %22 = call i32 @lockdep_assert_held(i32* %21)
  %23 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %24 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %23, i32 0, i32 9
  %25 = call i32 @lockdep_assert_held(i32* %24)
  %26 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %27 = call i32 @trace_hfi1_sender_restart_rc(%struct.rvt_qp* %26)
  %28 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %29 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %116

32:                                               ; preds = %3
  %33 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %34 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IB_MIG_ARMED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %40 = call i32 @hfi1_migrate_qp(%struct.rvt_qp* %39)
  %41 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %42 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %45 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %115

46:                                               ; preds = %32
  %47 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %48 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %51 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %114

54:                                               ; preds = %46
  %55 = load %struct.rvt_swqe*, %struct.rvt_swqe** %8, align 8
  %56 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IB_WR_OPFN, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %54
  %62 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %63 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %67 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.hfi1_ibport* @to_iport(i32 %65, i32 %68)
  store %struct.hfi1_ibport* %69, %struct.hfi1_ibport** %10, align 8
  %70 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %71 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  %72 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @opfn_conn_reply(%struct.rvt_qp* %70, i32 %74)
  %76 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %77 = load %struct.rvt_swqe*, %struct.rvt_swqe** %8, align 8
  %78 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %10, align 8
  %79 = call %struct.rvt_swqe* @do_rc_completion(%struct.rvt_qp* %76, %struct.rvt_swqe* %77, %struct.hfi1_ibport* %78)
  store %struct.rvt_swqe* %79, %struct.rvt_swqe** %8, align 8
  %80 = load i32, i32* @RVT_S_WAIT_ACK, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %83 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %113

86:                                               ; preds = %54
  %87 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %88 = call i32 @trace_hfi1_tid_write_sender_restart_rc(%struct.rvt_qp* %87, i32 0)
  %89 = load %struct.rvt_swqe*, %struct.rvt_swqe** %8, align 8
  %90 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IB_WR_TID_RDMA_READ, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %86
  %96 = load %struct.rvt_swqe*, %struct.rvt_swqe** %8, align 8
  %97 = call %struct.tid_rdma_request* @wqe_to_tid_req(%struct.rvt_swqe* %96)
  store %struct.tid_rdma_request* %97, %struct.tid_rdma_request** %11, align 8
  %98 = load %struct.tid_rdma_request*, %struct.tid_rdma_request** %11, align 8
  %99 = call i32 @hfi1_kern_exp_rcv_clear_all(%struct.tid_rdma_request* %98)
  %100 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  %101 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %104 = call i32 @hfi1_kern_clear_hw_flow(i32 %102, %struct.rvt_qp* %103)
  br label %105

105:                                              ; preds = %95, %86
  %106 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %107 = load %struct.rvt_swqe*, %struct.rvt_swqe** %8, align 8
  %108 = load i32, i32* @IB_WC_RETRY_EXC_ERR, align 4
  %109 = call i32 @hfi1_trdma_send_complete(%struct.rvt_qp* %106, %struct.rvt_swqe* %107, i32 %108)
  %110 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %111 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %112 = call i32 @rvt_error_qp(%struct.rvt_qp* %110, i32 %111)
  br label %113

113:                                              ; preds = %105, %61
  br label %189

114:                                              ; preds = %46
  br label %189

115:                                              ; preds = %38
  br label %121

116:                                              ; preds = %3
  %117 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %118 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, -1
  store i64 %120, i64* %118, align 8
  br label %121

121:                                              ; preds = %116, %115
  %122 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %123 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %122, i32 0, i32 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %127 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = call %struct.hfi1_ibport* @to_iport(i32 %125, i32 %128)
  store %struct.hfi1_ibport* %129, %struct.hfi1_ibport** %9, align 8
  %130 = load %struct.rvt_swqe*, %struct.rvt_swqe** %8, align 8
  %131 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %143, label %136

136:                                              ; preds = %121
  %137 = load %struct.rvt_swqe*, %struct.rvt_swqe** %8, align 8
  %138 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @IB_WR_TID_RDMA_READ, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %136, %121
  %144 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %9, align 8
  %145 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %146, align 8
  br label %160

149:                                              ; preds = %136
  %150 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %151 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i64 @delta_psn(i32 %152, i32 %153)
  %155 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %9, align 8
  %156 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, %154
  store i64 %159, i64* %157, align 8
  br label %160

160:                                              ; preds = %149, %143
  %161 = load i32, i32* @RVT_S_WAIT_FENCE, align 4
  %162 = load i32, i32* @RVT_S_WAIT_RDMAR, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @RVT_S_WAIT_SSN_CREDIT, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @RVT_S_WAIT_PSN, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @RVT_S_WAIT_ACK, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @HFI1_S_WAIT_TID_RESP, align 4
  %171 = or i32 %169, %170
  %172 = xor i32 %171, -1
  %173 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %174 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %160
  %180 = load i32, i32* @RVT_S_SEND_ONE, align 4
  %181 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %182 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %179, %160
  %186 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @reset_psn(%struct.rvt_qp* %186, i32 %187)
  br label %189

189:                                              ; preds = %185, %114, %113
  ret void
}

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i64) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @trace_hfi1_sender_restart_rc(%struct.rvt_qp*) #1

declare dso_local i32 @hfi1_migrate_qp(%struct.rvt_qp*) #1

declare dso_local %struct.hfi1_ibport* @to_iport(i32, i32) #1

declare dso_local i32 @opfn_conn_reply(%struct.rvt_qp*, i32) #1

declare dso_local %struct.rvt_swqe* @do_rc_completion(%struct.rvt_qp*, %struct.rvt_swqe*, %struct.hfi1_ibport*) #1

declare dso_local i32 @trace_hfi1_tid_write_sender_restart_rc(%struct.rvt_qp*, i32) #1

declare dso_local %struct.tid_rdma_request* @wqe_to_tid_req(%struct.rvt_swqe*) #1

declare dso_local i32 @hfi1_kern_exp_rcv_clear_all(%struct.tid_rdma_request*) #1

declare dso_local i32 @hfi1_kern_clear_hw_flow(i32, %struct.rvt_qp*) #1

declare dso_local i32 @hfi1_trdma_send_complete(%struct.rvt_qp*, %struct.rvt_swqe*, i32) #1

declare dso_local i32 @rvt_error_qp(%struct.rvt_qp*, i32) #1

declare dso_local i64 @delta_psn(i32, i32) #1

declare dso_local i32 @reset_psn(%struct.rvt_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
