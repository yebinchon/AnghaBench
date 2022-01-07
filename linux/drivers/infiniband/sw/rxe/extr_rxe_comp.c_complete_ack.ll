; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_complete_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_complete_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_8__, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.TYPE_5__ = type { i64, i64, i32, i64, i32 }
%struct.rxe_pkt_info = type { i32 }
%struct.rxe_send_wqe = type { i64 }
%struct.ib_event.0 = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@QP_STATE_DRAIN = common dso_local global i64 0, align 8
@QP_STATE_DRAINED = common dso_local global i64 0, align 8
@IB_EVENT_SQ_DRAINED = common dso_local global i32 0, align 4
@COMPST_UPDATE_COMP = common dso_local global i32 0, align 4
@COMPST_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_send_wqe*)* @complete_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @complete_ack(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1, %struct.rxe_send_wqe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_qp*, align 8
  %6 = alloca %struct.rxe_pkt_info*, align 8
  %7 = alloca %struct.rxe_send_wqe*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ib_event.0, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %5, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %6, align 8
  store %struct.rxe_send_wqe* %2, %struct.rxe_send_wqe** %7, align 8
  %10 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %11 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %16 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %18 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  %20 = call i32 @atomic_inc(i32* %19)
  %21 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %22 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %14
  %27 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %28 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %31 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %34 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = call i32 @rxe_run_task(i32* %35, i32 1)
  br label %37

37:                                               ; preds = %26, %14
  br label %38

38:                                               ; preds = %37, %3
  %39 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %40 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @QP_STATE_DRAIN, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %112

48:                                               ; preds = %38
  %49 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %50 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %49, i32 0, i32 1
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %54 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @QP_STATE_DRAIN, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %106

59:                                               ; preds = %48
  %60 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %61 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %65 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %63, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %59
  %70 = load i64, i64* @QP_STATE_DRAINED, align 8
  %71 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %72 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %75 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %74, i32 0, i32 1
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %79 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %80, align 8
  %82 = icmp ne i32 (%struct.ib_event*, i32)* %81, null
  br i1 %82, label %83, label %105

83:                                               ; preds = %69
  %84 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %85 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %9, i32 0, i32 2
  store i32 %87, i32* %88, align 8
  %89 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %90 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %9, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %92, align 8
  %93 = load i32, i32* @IB_EVENT_SQ_DRAINED, align 4
  %94 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %9, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  %95 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %96 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %97, align 8
  %99 = bitcast %struct.ib_event.0* %9 to %struct.ib_event*
  %100 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %101 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 %98(%struct.ib_event* %99, i32 %103)
  br label %105

105:                                              ; preds = %83, %69
  br label %111

106:                                              ; preds = %59, %48
  %107 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %108 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %107, i32 0, i32 1
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  br label %111

111:                                              ; preds = %106, %105
  br label %112

112:                                              ; preds = %111, %38
  %113 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %114 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %115 = call i32 @do_complete(%struct.rxe_qp* %113, %struct.rxe_send_wqe* %114)
  %116 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %117 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %120 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @psn_compare(i32 %118, i64 %122)
  %124 = icmp sge i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %112
  %126 = load i32, i32* @COMPST_UPDATE_COMP, align 4
  store i32 %126, i32* %4, align 4
  br label %129

127:                                              ; preds = %112
  %128 = load i32, i32* @COMPST_DONE, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rxe_run_task(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @do_complete(%struct.rxe_qp*, %struct.rxe_send_wqe*) #1

declare dso_local i64 @psn_compare(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
