; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_mISDN_freedchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_mISDN_freedchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dchannel = type { i32, i32, i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mISDN_freedchannel(%struct.dchannel* %0) #0 {
  %2 = alloca %struct.dchannel*, align 8
  store %struct.dchannel* %0, %struct.dchannel** %2, align 8
  %3 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %4 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %9 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @dev_kfree_skb(i32* %10)
  %12 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %13 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %12, i32 0, i32 4
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %16 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %21 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @dev_kfree_skb(i32* %22)
  %24 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %25 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %28 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %27, i32 0, i32 2
  %29 = call i32 @skb_queue_purge(i32* %28)
  %30 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %31 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %30, i32 0, i32 1
  %32 = call i32 @skb_queue_purge(i32* %31)
  %33 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %34 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %33, i32 0, i32 0
  %35 = call i32 @flush_work(i32* %34)
  ret i32 0
}

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
