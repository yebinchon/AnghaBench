; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_purge_write_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_purge_write_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.chtls_sock = type { i32 }
%struct.sk_buff = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @chtls_purge_write_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_purge_write_queue(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.chtls_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %5)
  store %struct.chtls_sock* %6, %struct.chtls_sock** %3, align 8
  br label %7

7:                                                ; preds = %12, %1
  %8 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %9 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %8, i32 0, i32 0
  %10 = call %struct.sk_buff* @__skb_dequeue(i32* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %4, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %19, %15
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @__kfree_skb(%struct.sk_buff* %22)
  br label %7

24:                                               ; preds = %7
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
