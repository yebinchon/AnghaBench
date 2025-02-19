; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { i32 }
%struct.rxe_pkt_info = type { i32 }
%struct.sk_buff = type { i32 }

@IB_OPCODE_RC_ACKNOWLEDGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed sending ack\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*, i32, i32)* @send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_ack(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rxe_qp*, align 8
  %6 = alloca %struct.rxe_pkt_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rxe_pkt_info, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %5, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %13 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %14 = load i32, i32* @IB_OPCODE_RC_ACKNOWLEDGE, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.sk_buff* @prepare_ack_packet(%struct.rxe_qp* %12, %struct.rxe_pkt_info* %13, %struct.rxe_pkt_info* %10, i32 %14, i32 0, i32 %15, i32 %16, i32* null)
  store %struct.sk_buff* %17, %struct.sk_buff** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  br label %32

23:                                               ; preds = %4
  %24 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %26 = call i32 @rxe_xmit_packet(%struct.rxe_qp* %24, %struct.rxe_pkt_info* %10, %struct.sk_buff* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  br label %32

32:                                               ; preds = %31, %20
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local %struct.sk_buff* @prepare_ack_packet(%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_pkt_info*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rxe_xmit_packet(%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.sk_buff*) #1

declare dso_local i32 @pr_err_ratelimited(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
