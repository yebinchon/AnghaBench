; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_skb_tx_dtor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_skb_tx_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { %struct.rxe_qp* }
%struct.rxe_qp = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@RXE_INFLIGHT_SKBS_PER_QP_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @rxe_skb_tx_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxe_skb_tx_dtor(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load %struct.rxe_qp*, %struct.rxe_qp** %10, align 8
  store %struct.rxe_qp* %11, %struct.rxe_qp** %4, align 8
  %12 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %13 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %12, i32 0, i32 2
  %14 = call i32 @atomic_dec_return(i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %16 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @RXE_INFLIGHT_SKBS_PER_QP_LOW, align 4
  %22 = icmp slt i32 %20, %21
  br label %23

23:                                               ; preds = %19, %1
  %24 = phi i1 [ false, %1 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %30 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @rxe_run_task(i32* %31, i32 1)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %35 = call i32 @rxe_drop_ref(%struct.rxe_qp* %34)
  ret void
}

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rxe_run_task(i32*, i32) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
