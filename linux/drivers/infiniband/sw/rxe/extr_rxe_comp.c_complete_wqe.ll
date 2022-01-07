; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_complete_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_complete_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rxe_pkt_info = type { i32 }
%struct.rxe_send_wqe = type { i64, i32 }

@wqe_state_pending = common dso_local global i64 0, align 8
@BTH_PSN_MASK = common dso_local global i32 0, align 4
@COMPST_GET_WQE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_send_wqe*)* @complete_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @complete_wqe(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1, %struct.rxe_send_wqe* %2) #0 {
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.rxe_pkt_info*, align 8
  %6 = alloca %struct.rxe_send_wqe*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %4, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %5, align 8
  store %struct.rxe_send_wqe* %2, %struct.rxe_send_wqe** %6, align 8
  %7 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %8 = icmp ne %struct.rxe_pkt_info* %7, null
  br i1 %8, label %9, label %53

9:                                                ; preds = %3
  %10 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %11 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @wqe_state_pending, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %9
  %16 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %17 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %20 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @psn_compare(i32 %18, i32 %22)
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %15
  %26 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %27 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* @BTH_PSN_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %33 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %36 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 -1, i32* %37, align 4
  br label %38

38:                                               ; preds = %25, %15
  %39 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %40 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %46 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %49 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @rxe_run_task(i32* %50, i32 1)
  br label %52

52:                                               ; preds = %44, %38
  br label %53

53:                                               ; preds = %52, %9, %3
  %54 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %55 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %56 = call i32 @do_complete(%struct.rxe_qp* %54, %struct.rxe_send_wqe* %55)
  %57 = load i32, i32* @COMPST_GET_WQE, align 4
  ret i32 %57
}

declare dso_local i64 @psn_compare(i32, i32) #1

declare dso_local i32 @rxe_run_task(i32*, i32) #1

declare dso_local i32 @do_complete(%struct.rxe_qp*, %struct.rxe_send_wqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
