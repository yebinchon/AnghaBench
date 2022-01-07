; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_get_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_get_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.rxe_pkt_info = type { i32 }
%struct.sk_buff = type { i32 }

@QP_STATE_ERROR = common dso_local global i64 0, align 8
@RESPST_CHK_RESOURCE = common dso_local global i32 0, align 4
@RESPST_EXIT = common dso_local global i32 0, align 4
@RESPST_READ_REPLY = common dso_local global i32 0, align 4
@RESPST_CHK_PSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info**)* @get_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_req(%struct.rxe_qp* %0, %struct.rxe_pkt_info** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.rxe_pkt_info**, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %4, align 8
  store %struct.rxe_pkt_info** %1, %struct.rxe_pkt_info*** %5, align 8
  %7 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %8 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @QP_STATE_ERROR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %19, %13
  %15 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %16 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %15, i32 0, i32 1
  %17 = call %struct.sk_buff* @skb_dequeue(i32* %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %6, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %21 = call i32 @rxe_drop_ref(%struct.rxe_qp* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32 @kfree_skb(%struct.sk_buff* %22)
  br label %14

24:                                               ; preds = %14
  %25 = load i32, i32* @RESPST_CHK_RESOURCE, align 4
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %2
  %27 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %28 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %27, i32 0, i32 1
  %29 = call %struct.sk_buff* @skb_peek(i32* %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @RESPST_EXIT, align 4
  store i32 %33, i32* %3, align 4
  br label %49

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call %struct.rxe_pkt_info* @SKB_TO_PKT(%struct.sk_buff* %35)
  %37 = load %struct.rxe_pkt_info**, %struct.rxe_pkt_info*** %5, align 8
  store %struct.rxe_pkt_info* %36, %struct.rxe_pkt_info** %37, align 8
  %38 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %39 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @RESPST_READ_REPLY, align 4
  br label %47

45:                                               ; preds = %34
  %46 = load i32, i32* @RESPST_CHK_PSN, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %32, %24
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_qp*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.rxe_pkt_info* @SKB_TO_PKT(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
