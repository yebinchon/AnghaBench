; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pkt_info = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@rxe_skb_tx_dtor = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown layer 3 protocol: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"error sending packet: %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_send(%struct.rxe_pkt_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_pkt_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.rxe_pkt_info* %0, %struct.rxe_pkt_info** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load i32, i32* @rxe_skb_tx_dtor, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %11 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %20 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = call i32 @rxe_add_ref(%struct.TYPE_7__* %21)
  %23 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %24 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = call i32 @atomic_inc(i32* %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @ETH_P_IP, align 4
  %32 = call i64 @htons(i32 %31)
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.TYPE_6__* @skb_dst(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_net(i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i32 @ip_local_out(i32 %39, i32 %42, %struct.sk_buff* %43)
  store i32 %44, i32* %6, align 4
  br label %82

45:                                               ; preds = %2
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @ETH_P_IPV6, align 4
  %50 = call i64 @htons(i32 %49)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call %struct.TYPE_6__* @skb_dst(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_net(i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i32 @ip6_local_out(i32 %57, i32 %60, %struct.sk_buff* %61)
  store i32 %62, i32* %6, align 4
  br label %81

63:                                               ; preds = %45
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %66)
  %68 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %69 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = call i32 @atomic_dec(i32* %71)
  %73 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %74 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = call i32 @rxe_drop_ref(%struct.TYPE_7__* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %93

81:                                               ; preds = %52
  br label %82

82:                                               ; preds = %81, %34
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @net_xmit_eval(i32 %83)
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EAGAIN, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %93

92:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %87, %63
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @rxe_add_ref(%struct.TYPE_7__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ip_local_out(i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local %struct.TYPE_6__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @ip6_local_out(i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @rxe_drop_ref(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @net_xmit_eval(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
