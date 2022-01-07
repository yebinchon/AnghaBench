; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_rollback_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_rollback_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rxe_send_wqe = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_send_wqe*, %struct.rxe_qp*, %struct.rxe_send_wqe*, i32)* @rollback_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rollback_state(%struct.rxe_send_wqe* %0, %struct.rxe_qp* %1, %struct.rxe_send_wqe* %2, i32 %3) #0 {
  %5 = alloca %struct.rxe_send_wqe*, align 8
  %6 = alloca %struct.rxe_qp*, align 8
  %7 = alloca %struct.rxe_send_wqe*, align 8
  %8 = alloca i32, align 4
  store %struct.rxe_send_wqe* %0, %struct.rxe_send_wqe** %5, align 8
  store %struct.rxe_qp* %1, %struct.rxe_qp** %6, align 8
  store %struct.rxe_send_wqe* %2, %struct.rxe_send_wqe** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %10 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %13 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %15 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %18 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %20 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %5, align 8
  %23 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %26 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
