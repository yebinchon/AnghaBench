; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_check_psn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_check_psn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rxe_pkt_info = type { i64 }
%struct.rxe_send_wqe = type { i64, i64, i32 }

@wqe_state_pending = common dso_local global i64 0, align 8
@WR_ATOMIC_OR_READ_MASK = common dso_local global i32 0, align 4
@COMPST_ERROR_RETRY = common dso_local global i32 0, align 4
@COMPST_COMP_WQE = common dso_local global i32 0, align 4
@COMPST_DONE = common dso_local global i32 0, align 4
@COMPST_COMP_ACK = common dso_local global i32 0, align 4
@COMPST_CHECK_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_send_wqe*)* @check_psn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_psn(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1, %struct.rxe_send_wqe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_qp*, align 8
  %6 = alloca %struct.rxe_pkt_info*, align 8
  %7 = alloca %struct.rxe_send_wqe*, align 8
  %8 = alloca i64, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %5, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %6, align 8
  store %struct.rxe_send_wqe* %2, %struct.rxe_send_wqe** %7, align 8
  %9 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %10 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %13 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @psn_compare(i64 %11, i64 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %20 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @wqe_state_pending, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %26 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @WR_ATOMIC_OR_READ_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @COMPST_ERROR_RETRY, align 4
  store i32 %32, i32* %4, align 4
  br label %76

33:                                               ; preds = %24
  %34 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %35 = call i32 @reset_retry_counters(%struct.rxe_qp* %34)
  %36 = load i32, i32* @COMPST_COMP_WQE, align 4
  store i32 %36, i32* %4, align 4
  br label %76

37:                                               ; preds = %18
  %38 = load i32, i32* @COMPST_DONE, align 4
  store i32 %38, i32* %4, align 4
  br label %76

39:                                               ; preds = %3
  %40 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %41 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %44 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @psn_compare(i64 %42, i64 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %39
  %51 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %52 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %55 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @COMPST_COMP_ACK, align 4
  store i32 %59, i32* %4, align 4
  br label %76

60:                                               ; preds = %50
  %61 = load i32, i32* @COMPST_DONE, align 4
  store i32 %61, i32* %4, align 4
  br label %76

62:                                               ; preds = %39
  %63 = load i64, i64* %8, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %67 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @WR_ATOMIC_OR_READ_MASK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @COMPST_DONE, align 4
  store i32 %73, i32* %4, align 4
  br label %76

74:                                               ; preds = %65, %62
  %75 = load i32, i32* @COMPST_CHECK_ACK, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %72, %60, %58, %37, %33, %31
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @psn_compare(i64, i64) #1

declare dso_local i32 @reset_retry_counters(%struct.rxe_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
