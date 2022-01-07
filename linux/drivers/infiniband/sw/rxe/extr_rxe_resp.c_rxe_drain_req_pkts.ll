; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_rxe_drain_req_pkts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_rxe_drain_req_pkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_qp*, i32)* @rxe_drain_req_pkts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxe_drain_req_pkts(%struct.rxe_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.rxe_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %11, %2
  %7 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %8 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %7, i32 0, i32 2
  %9 = call %struct.sk_buff* @skb_dequeue(i32* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %5, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %13 = call i32 @rxe_drop_ref(%struct.rxe_qp* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @kfree_skb(%struct.sk_buff* %14)
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %47

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %41, %20
  %22 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %23 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %28 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %34 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @queue_head(i64 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %32, %26, %21
  %40 = phi i1 [ false, %26 ], [ false, %21 ], [ %38, %32 ]
  br i1 %40, label %41, label %47

41:                                               ; preds = %39
  %42 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %43 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @advance_consumer(i64 %45)
  br label %21

47:                                               ; preds = %19, %39
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_qp*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @queue_head(i64) #1

declare dso_local i32 @advance_consumer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
