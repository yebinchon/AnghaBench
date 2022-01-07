; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_skb_too_long.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_skb_too_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipoib_dev_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_cm_skb_too_long(%struct.net_device* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %9)
  store %struct.ipoib_dev_priv* %10, %struct.ipoib_dev_priv** %7, align 8
  %11 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %12 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @skb_queue_empty(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @skb_dst_update_pmtu(%struct.sk_buff* %15, i32 %16)
  %18 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %19 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @skb_queue_tail(i32* %20, %struct.sk_buff* %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %27 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %30 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @queue_work(i32 %28, i32* %31)
  br label %33

33:                                               ; preds = %25, %3
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @skb_dst_update_pmtu(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
