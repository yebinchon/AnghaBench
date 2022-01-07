; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_do_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_do_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { i64, %struct.TYPE_8__, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rxe_send_wqe = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.rxe_dev = type { i32 }
%struct.rxe_cqe = type { i32 }

@IB_SIGNAL_ALL_WR = common dso_local global i64 0, align 8
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@IB_WR_SEND = common dso_local global i64 0, align 8
@IB_WR_SEND_WITH_IMM = common dso_local global i64 0, align 8
@IB_WR_SEND_WITH_INV = common dso_local global i64 0, align 8
@RXE_CNT_RDMA_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_qp*, %struct.rxe_send_wqe*)* @do_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_complete(%struct.rxe_qp* %0, %struct.rxe_send_wqe* %1) #0 {
  %3 = alloca %struct.rxe_qp*, align 8
  %4 = alloca %struct.rxe_send_wqe*, align 8
  %5 = alloca %struct.rxe_dev*, align 8
  %6 = alloca %struct.rxe_cqe, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %3, align 8
  store %struct.rxe_send_wqe* %1, %struct.rxe_send_wqe** %4, align 8
  %7 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %8 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.rxe_dev* @to_rdev(i32 %10)
  store %struct.rxe_dev* %11, %struct.rxe_dev** %5, align 8
  %12 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %13 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IB_SIGNAL_ALL_WR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %4, align 8
  %19 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %4, align 8
  %27 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IB_WC_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25, %17, %2
  %32 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %33 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %4, align 8
  %34 = call i32 @make_send_cqe(%struct.rxe_qp* %32, %struct.rxe_send_wqe* %33, %struct.rxe_cqe* %6)
  %35 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %36 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @advance_consumer(i32 %38)
  %40 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %41 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rxe_cq_post(i32 %42, %struct.rxe_cqe* %6, i32 0)
  br label %50

44:                                               ; preds = %25
  %45 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %46 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @advance_consumer(i32 %48)
  br label %50

50:                                               ; preds = %44, %31
  %51 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %4, align 8
  %52 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IB_WR_SEND, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %71, label %57

57:                                               ; preds = %50
  %58 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %4, align 8
  %59 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IB_WR_SEND_WITH_IMM, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %4, align 8
  %66 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IB_WR_SEND_WITH_INV, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %64, %57, %50
  %72 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %73 = load i32, i32* @RXE_CNT_RDMA_SEND, align 4
  %74 = call i32 @rxe_counter_inc(%struct.rxe_dev* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %64
  %76 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %77 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %83 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %86 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = call i32 @rxe_run_task(i32* %87, i32 1)
  br label %89

89:                                               ; preds = %81, %75
  ret void
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local i32 @make_send_cqe(%struct.rxe_qp*, %struct.rxe_send_wqe*, %struct.rxe_cqe*) #1

declare dso_local i32 @advance_consumer(i32) #1

declare dso_local i32 @rxe_cq_post(i32, %struct.rxe_cqe*, i32) #1

declare dso_local i32 @rxe_counter_inc(%struct.rxe_dev*, i32) #1

declare dso_local i32 @rxe_run_task(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
