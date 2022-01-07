; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_get_srq_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_get_srq_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_10__, %struct.TYPE_7__, %struct.rxe_srq* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.rxe_srq = type { i64, %struct.TYPE_11__, %struct.TYPE_8__, i64 }
%struct.TYPE_11__ = type { i32, i32 (%struct.ib_event*, i32)* }
%struct.ib_event = type opaque
%struct.TYPE_8__ = type { i32, %struct.rxe_queue* }
%struct.rxe_queue = type { i32 }
%struct.rxe_recv_wqe = type { i32 }
%struct.ib_event.0 = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

@RESPST_ERR_RNR = common dso_local global i32 0, align 4
@RESPST_CHK_LENGTH = common dso_local global i32 0, align 4
@IB_EVENT_SRQ_LIMIT_REACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*)* @get_srq_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_srq_wqe(%struct.rxe_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxe_qp*, align 8
  %4 = alloca %struct.rxe_srq*, align 8
  %5 = alloca %struct.rxe_queue*, align 8
  %6 = alloca %struct.rxe_recv_wqe*, align 8
  %7 = alloca %struct.ib_event.0, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %3, align 8
  %8 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %9 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %8, i32 0, i32 2
  %10 = load %struct.rxe_srq*, %struct.rxe_srq** %9, align 8
  store %struct.rxe_srq* %10, %struct.rxe_srq** %4, align 8
  %11 = load %struct.rxe_srq*, %struct.rxe_srq** %4, align 8
  %12 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.rxe_queue*, %struct.rxe_queue** %13, align 8
  store %struct.rxe_queue* %14, %struct.rxe_queue** %5, align 8
  %15 = load %struct.rxe_srq*, %struct.rxe_srq** %4, align 8
  %16 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @RESPST_ERR_RNR, align 4
  store i32 %20, i32* %2, align 4
  br label %106

21:                                               ; preds = %1
  %22 = load %struct.rxe_srq*, %struct.rxe_srq** %4, align 8
  %23 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.rxe_queue*, %struct.rxe_queue** %5, align 8
  %27 = call %struct.rxe_recv_wqe* @queue_head(%struct.rxe_queue* %26)
  store %struct.rxe_recv_wqe* %27, %struct.rxe_recv_wqe** %6, align 8
  %28 = load %struct.rxe_recv_wqe*, %struct.rxe_recv_wqe** %6, align 8
  %29 = icmp ne %struct.rxe_recv_wqe* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %21
  %31 = load %struct.rxe_srq*, %struct.rxe_srq** %4, align 8
  %32 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load i32, i32* @RESPST_ERR_RNR, align 4
  store i32 %35, i32* %2, align 4
  br label %106

36:                                               ; preds = %21
  %37 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %38 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.rxe_recv_wqe*, %struct.rxe_recv_wqe** %6, align 8
  %41 = call i32 @memcpy(%struct.TYPE_12__* %39, %struct.rxe_recv_wqe* %40, i32 4)
  %42 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %43 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %47 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32* %45, i32** %48, align 8
  %49 = load %struct.rxe_queue*, %struct.rxe_queue** %5, align 8
  %50 = call i32 @advance_consumer(%struct.rxe_queue* %49)
  %51 = load %struct.rxe_srq*, %struct.rxe_srq** %4, align 8
  %52 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %36
  %56 = load %struct.rxe_srq*, %struct.rxe_srq** %4, align 8
  %57 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.ib_event*, i32)* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.rxe_queue*, %struct.rxe_queue** %5, align 8
  %63 = call i64 @queue_count(%struct.rxe_queue* %62)
  %64 = load %struct.rxe_srq*, %struct.rxe_srq** %4, align 8
  %65 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.rxe_srq*, %struct.rxe_srq** %4, align 8
  %70 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %77

71:                                               ; preds = %61, %55, %36
  %72 = load %struct.rxe_srq*, %struct.rxe_srq** %4, align 8
  %73 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock_bh(i32* %74)
  %76 = load i32, i32* @RESPST_CHK_LENGTH, align 4
  store i32 %76, i32* %2, align 4
  br label %106

77:                                               ; preds = %68
  %78 = load %struct.rxe_srq*, %struct.rxe_srq** %4, align 8
  %79 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_bh(i32* %80)
  %82 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %83 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %7, i32 0, i32 2
  store i32 %85, i32* %86, align 4
  %87 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %88 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %7, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @IB_EVENT_SRQ_LIMIT_REACHED, align 4
  %94 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %7, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = load %struct.rxe_srq*, %struct.rxe_srq** %4, align 8
  %96 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %97, align 8
  %99 = bitcast %struct.ib_event.0* %7 to %struct.ib_event*
  %100 = load %struct.rxe_srq*, %struct.rxe_srq** %4, align 8
  %101 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 %98(%struct.ib_event* %99, i32 %103)
  %105 = load i32, i32* @RESPST_CHK_LENGTH, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %77, %71, %30, %19
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.rxe_recv_wqe* @queue_head(%struct.rxe_queue*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.rxe_recv_wqe*, i32) #1

declare dso_local i32 @advance_consumer(%struct.rxe_queue*) #1

declare dso_local i64 @queue_count(%struct.rxe_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
