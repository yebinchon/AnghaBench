; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_t4_defer_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_t4_defer_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.chtls_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.chtls_dev*, i32)* @t4_defer_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_defer_reply(%struct.sk_buff* %0, %struct.chtls_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.chtls_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.chtls_dev* %1, %struct.chtls_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.TYPE_5__* @DEFERRED_SKB_CB(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = load %struct.chtls_dev*, %struct.chtls_dev** %5, align 8
  %12 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.chtls_dev*, %struct.chtls_dev** %5, align 8
  %16 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %15, i32 0, i32 0
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @__skb_queue_tail(%struct.TYPE_4__* %16, %struct.sk_buff* %17)
  %19 = load %struct.chtls_dev*, %struct.chtls_dev** %5, align 8
  %20 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %19, i32 0, i32 0
  %21 = call i32 @skb_queue_len(%struct.TYPE_4__* %20)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.chtls_dev*, %struct.chtls_dev** %5, align 8
  %25 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %24, i32 0, i32 1
  %26 = call i32 @schedule_work(i32* %25)
  br label %27

27:                                               ; preds = %23, %3
  %28 = load %struct.chtls_dev*, %struct.chtls_dev** %5, align 8
  %29 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  ret void
}

declare dso_local %struct.TYPE_5__* @DEFERRED_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_len(%struct.TYPE_4__*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
