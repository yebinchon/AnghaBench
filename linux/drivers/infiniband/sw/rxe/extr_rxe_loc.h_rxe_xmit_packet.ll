; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_loc.h_rxe_xmit_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_loc.h_rxe_xmit_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.rxe_pkt_info = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rxe_dev = type { i32 }

@RXE_REQ_MASK = common dso_local global i32 0, align 4
@QP_STATE_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Packet dropped. QP is not in ready state\0A\00", align 1
@RXE_LOOPBACK_MASK = common dso_local global i32 0, align 4
@RXE_CNT_SEND_ERR = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@RXE_END_MASK = common dso_local global i32 0, align 4
@wqe_state_done = common dso_local global i32 0, align 4
@RXE_CNT_SENT_PKTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.sk_buff*)* @rxe_xmit_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_xmit_packet(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_qp*, align 8
  %6 = alloca %struct.rxe_pkt_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rxe_dev*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %5, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %11 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %12 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RXE_REQ_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %17 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.rxe_dev* @to_rdev(i32 %19)
  store %struct.rxe_dev* %20, %struct.rxe_dev** %10, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %25 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @QP_STATE_READY, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %23, %3
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %35 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @QP_STATE_READY, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33, %23
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %98

42:                                               ; preds = %33, %30
  %43 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %44 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RXE_LOOPBACK_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call i32 @SKB_TO_PKT(%struct.sk_buff* %50)
  %52 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %53 = call i32 @memcpy(i32 %51, %struct.rxe_pkt_info* %52, i32 16)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call i32 @rxe_loopback(%struct.sk_buff* %54)
  store i32 0, i32* %8, align 4
  br label %60

56:                                               ; preds = %42
  %57 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call i32 @rxe_send(%struct.rxe_pkt_info* %57, %struct.sk_buff* %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.rxe_dev*, %struct.rxe_dev** %10, align 8
  %65 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.rxe_dev*, %struct.rxe_dev** %10, align 8
  %69 = load i32, i32* @RXE_CNT_SEND_ERR, align 4
  %70 = call i32 @rxe_counter_inc(%struct.rxe_dev* %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %103

72:                                               ; preds = %60
  %73 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %74 = call i64 @qp_type(%struct.rxe_qp* %73)
  %75 = load i64, i64* @IB_QPT_RC, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %79 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @RXE_END_MASK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %77
  %85 = load i32, i32* @wqe_state_done, align 4
  %86 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %87 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  %90 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %91 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = call i32 @rxe_run_task(i32* %92, i32 1)
  br label %94

94:                                               ; preds = %84, %77, %72
  %95 = load %struct.rxe_dev*, %struct.rxe_dev** %10, align 8
  %96 = load i32, i32* @RXE_CNT_SENT_PKTS, align 4
  %97 = call i32 @rxe_counter_inc(%struct.rxe_dev* %95, i32 %96)
  br label %101

98:                                               ; preds = %40
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = call i32 @kfree_skb(%struct.sk_buff* %99)
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %63
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @memcpy(i32, %struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @SKB_TO_PKT(%struct.sk_buff*) #1

declare dso_local i32 @rxe_loopback(%struct.sk_buff*) #1

declare dso_local i32 @rxe_send(%struct.rxe_pkt_info*, %struct.sk_buff*) #1

declare dso_local i32 @rxe_counter_inc(%struct.rxe_dev*, i32) #1

declare dso_local i64 @qp_type(%struct.rxe_qp*) #1

declare dso_local i32 @rxe_run_task(i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
