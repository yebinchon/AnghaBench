; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_do_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_do_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { i32 }
%struct.rxe_pkt_info = type { i32 }
%struct.rxe_send_wqe = type { i32 }

@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@to_mem_obj = common dso_local global i32 0, align 4
@COMPST_ERROR = common dso_local global i32 0, align 4
@COMPST_COMP_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_send_wqe*)* @do_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_atomic(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1, %struct.rxe_send_wqe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_qp*, align 8
  %6 = alloca %struct.rxe_pkt_info*, align 8
  %7 = alloca %struct.rxe_send_wqe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %5, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %6, align 8
  store %struct.rxe_send_wqe* %2, %struct.rxe_send_wqe** %7, align 8
  %10 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %11 = call i32 @atmack_orig(%struct.rxe_pkt_info* %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %13 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %16 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %17 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %16, i32 0, i32 0
  %18 = load i32, i32* @to_mem_obj, align 4
  %19 = call i32 @copy_data(i32 %14, i32 %15, i32* %17, i32* %9, i32 4, i32 %18, i32* null)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @COMPST_ERROR, align 4
  store i32 %23, i32* %4, align 4
  br label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @COMPST_COMP_ACK, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @atmack_orig(%struct.rxe_pkt_info*) #1

declare dso_local i32 @copy_data(i32, i32, i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
