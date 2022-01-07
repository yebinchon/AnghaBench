; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls.h_process_cpl_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls.h_process_cpl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { void (%struct.sock*, %struct.sk_buff*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (void (%struct.sock*, %struct.sk_buff*)*, %struct.sock*, %struct.sk_buff*)* @process_cpl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_cpl_msg(void (%struct.sock*, %struct.sk_buff*)* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca void (%struct.sock*, %struct.sk_buff*)*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store void (%struct.sock*, %struct.sk_buff*)* %0, void (%struct.sock*, %struct.sk_buff*)** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %8 = call i32 @skb_reset_mac_header(%struct.sk_buff* %7)
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = call i32 @skb_reset_network_header(%struct.sk_buff* %9)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call i32 @skb_reset_transport_header(%struct.sk_buff* %11)
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call i32 @bh_lock_sock(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call i32 @sock_owned_by_user(%struct.sock* %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load void (%struct.sock*, %struct.sk_buff*)*, void (%struct.sock*, %struct.sk_buff*)** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call %struct.TYPE_2__* @BLOG_SKB_CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store void (%struct.sock*, %struct.sk_buff*)* %20, void (%struct.sock*, %struct.sk_buff*)** %23, align 8
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i32 @__sk_add_backlog(%struct.sock* %24, %struct.sk_buff* %25)
  br label %31

27:                                               ; preds = %3
  %28 = load void (%struct.sock*, %struct.sk_buff*)*, void (%struct.sock*, %struct.sk_buff*)** %4, align 8
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  call void %28(%struct.sock* %29, %struct.sk_buff* %30)
  br label %31

31:                                               ; preds = %27, %19
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = call i32 @bh_unlock_sock(%struct.sock* %32)
  ret void
}

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @BLOG_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @__sk_add_backlog(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
