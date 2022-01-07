; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.rxe_qp* }
%struct.rxe_pkt_info = type { i32 }
%struct.sk_buff = type { i32 }

@RESPST_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*)* @cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cleanup(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1) #0 {
  %3 = alloca %struct.rxe_qp*, align 8
  %4 = alloca %struct.rxe_pkt_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %3, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %4, align 8
  %6 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %7 = icmp ne %struct.rxe_pkt_info* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %10 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %9, i32 0, i32 1
  %11 = call %struct.sk_buff* @skb_dequeue(i32* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %5, align 8
  %12 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %13 = call i32 @rxe_drop_ref(%struct.rxe_qp* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @kfree_skb(%struct.sk_buff* %14)
  br label %16

16:                                               ; preds = %8, %2
  %17 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %18 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.rxe_qp*, %struct.rxe_qp** %19, align 8
  %21 = icmp ne %struct.rxe_qp* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %24 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.rxe_qp*, %struct.rxe_qp** %25, align 8
  %27 = call i32 @rxe_drop_ref(%struct.rxe_qp* %26)
  %28 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %29 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.rxe_qp* null, %struct.rxe_qp** %30, align 8
  br label %31

31:                                               ; preds = %22, %16
  %32 = load i32, i32* @RESPST_DONE, align 4
  ret i32 %32
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_qp*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
