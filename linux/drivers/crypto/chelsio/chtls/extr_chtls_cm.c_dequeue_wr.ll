; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_dequeue_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_dequeue_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.chtls_sock = type { %struct.sk_buff* }
%struct.TYPE_2__ = type { %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*)* @dequeue_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @dequeue_wr(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.chtls_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %5)
  store %struct.chtls_sock* %6, %struct.chtls_sock** %3, align 8
  %7 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %8 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %7, i32 0, i32 0
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %9, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i64 @likely(%struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.TYPE_2__* @WR_SKB_CB(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %18 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %19 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %18, i32 0, i32 0
  store %struct.sk_buff* %17, %struct.sk_buff** %19, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.TYPE_2__* @WR_SKB_CB(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %22, align 8
  br label %23

23:                                               ; preds = %13, %1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %24
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @WR_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
