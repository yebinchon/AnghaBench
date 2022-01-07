; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_recv.c_rxe_rcv_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_recv.c_rxe_rcv_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pkt_info = type { i32, i32 }
%struct.sk_buff = type { i32 }

@RXE_REQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_pkt_info*, %struct.sk_buff*)* @rxe_rcv_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxe_rcv_pkt(%struct.rxe_pkt_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rxe_pkt_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.rxe_pkt_info* %0, %struct.rxe_pkt_info** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %6 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @RXE_REQ_MASK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %13 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @rxe_resp_queue_pkt(i32 %14, %struct.sk_buff* %15)
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %19 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @rxe_comp_queue_pkt(i32 %20, %struct.sk_buff* %21)
  br label %23

23:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @rxe_resp_queue_pkt(i32, %struct.sk_buff*) #1

declare dso_local i32 @rxe_comp_queue_pkt(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
