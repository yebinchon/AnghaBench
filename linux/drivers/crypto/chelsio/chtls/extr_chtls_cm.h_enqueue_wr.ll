; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.h_enqueue_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.h_enqueue_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_sock = type { %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chtls_sock*, %struct.sk_buff*)* @enqueue_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_wr(%struct.chtls_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.chtls_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.chtls_sock* %0, %struct.chtls_sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = call %struct.TYPE_2__* @WR_SKB_CB(%struct.sk_buff* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i32 @skb_get(%struct.sk_buff* %8)
  %10 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %11 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %10, i32 0, i32 1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %17 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %16, i32 0, i32 1
  store %struct.sk_buff* %15, %struct.sk_buff** %17, align 8
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %21 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %20, i32 0, i32 0
  %22 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %23 = call %struct.TYPE_2__* @WR_SKB_CB(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.sk_buff* %19, %struct.sk_buff** %24, align 8
  br label %25

25:                                               ; preds = %18, %14
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %28 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %27, i32 0, i32 0
  store %struct.sk_buff* %26, %struct.sk_buff** %28, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @WR_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
