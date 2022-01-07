; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pkt_info = type { i32 }
%struct.sk_buff = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@RXE_LOOPBACK_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_prepare(%struct.rxe_pkt_info* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca %struct.rxe_pkt_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.rxe_pkt_info* %0, %struct.rxe_pkt_info** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @ETH_P_IP, align 4
  %12 = call i64 @htons(i32 %11)
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @prepare4(%struct.rxe_pkt_info* %15, %struct.sk_buff* %16)
  store i32 %17, i32* %7, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @ETH_P_IPV6, align 4
  %23 = call i64 @htons(i32 %22)
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @prepare6(%struct.rxe_pkt_info* %26, %struct.sk_buff* %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %18
  br label %30

30:                                               ; preds = %29, %14
  %31 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @rxe_icrc_hdr(%struct.rxe_pkt_info* %31, %struct.sk_buff* %32)
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %41 = call %struct.TYPE_4__* @rxe_get_av(%struct.rxe_pkt_info* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ether_addr_equal(i32 %39, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %30
  %47 = load i32, i32* @RXE_LOOPBACK_MASK, align 4
  %48 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %49 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %30
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @prepare4(%struct.rxe_pkt_info*, %struct.sk_buff*) #1

declare dso_local i32 @prepare6(%struct.rxe_pkt_info*, %struct.sk_buff*) #1

declare dso_local i32 @rxe_icrc_hdr(%struct.rxe_pkt_info*, %struct.sk_buff*) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local %struct.TYPE_4__* @rxe_get_av(%struct.rxe_pkt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
