; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_rxe_drain_resp_pkts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_rxe_drain_resp_pkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rxe_send_wqe = type { i32 }

@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_qp*, i32)* @rxe_drain_resp_pkts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxe_drain_resp_pkts(%struct.rxe_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.rxe_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rxe_send_wqe*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %12, %2
  %8 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %9 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %8, i32 0, i32 1
  %10 = call %struct.sk_buff* @skb_dequeue(i32* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %5, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %14 = call i32 @rxe_drop_ref(%struct.rxe_qp* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @kfree_skb(%struct.sk_buff* %15)
  br label %7

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %41, %17
  %19 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %20 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.rxe_send_wqe* @queue_head(i32 %22)
  store %struct.rxe_send_wqe* %23, %struct.rxe_send_wqe** %6, align 8
  %24 = icmp ne %struct.rxe_send_wqe* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %30 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %31 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %33 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %6, align 8
  %34 = call i32 @do_complete(%struct.rxe_qp* %32, %struct.rxe_send_wqe* %33)
  br label %41

35:                                               ; preds = %25
  %36 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %37 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @advance_consumer(i32 %39)
  br label %41

41:                                               ; preds = %35, %28
  br label %18

42:                                               ; preds = %18
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_qp*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.rxe_send_wqe* @queue_head(i32) #1

declare dso_local i32 @do_complete(%struct.rxe_qp*, %struct.rxe_send_wqe*) #1

declare dso_local i32 @advance_consumer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
