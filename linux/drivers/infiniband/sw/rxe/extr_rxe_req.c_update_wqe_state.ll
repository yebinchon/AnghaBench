; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_update_wqe_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_update_wqe_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { i32 }
%struct.rxe_send_wqe = type { i32 }
%struct.rxe_pkt_info = type { i32 }

@RXE_END_MASK = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@wqe_state_pending = common dso_local global i32 0, align 4
@wqe_state_processing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_qp*, %struct.rxe_send_wqe*, %struct.rxe_pkt_info*)* @update_wqe_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_wqe_state(%struct.rxe_qp* %0, %struct.rxe_send_wqe* %1, %struct.rxe_pkt_info* %2) #0 {
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.rxe_send_wqe*, align 8
  %6 = alloca %struct.rxe_pkt_info*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %4, align 8
  store %struct.rxe_send_wqe* %1, %struct.rxe_send_wqe** %5, align 8
  store %struct.rxe_pkt_info* %2, %struct.rxe_pkt_info** %6, align 8
  %7 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %8 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RXE_END_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %15 = call i64 @qp_type(%struct.rxe_qp* %14)
  %16 = load i64, i64* @IB_QPT_RC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @wqe_state_pending, align 4
  %20 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %21 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %13
  br label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @wqe_state_processing, align 4
  %25 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %26 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %22
  ret void
}

declare dso_local i64 @qp_type(%struct.rxe_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
