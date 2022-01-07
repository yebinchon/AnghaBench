; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcpci.c_tx_dirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcpci.c_tx_dirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dchannel = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dchannel*)* @tx_dirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_dirq(%struct.dchannel* %0) #0 {
  %2 = alloca %struct.dchannel*, align 8
  store %struct.dchannel* %0, %struct.dchannel** %2, align 8
  %3 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %4 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %9 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %12 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %10, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %7
  %18 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %19 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @hfcpci_fill_dfifo(i32 %20)
  br label %36

22:                                               ; preds = %7, %1
  %23 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %24 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call i32 @dev_kfree_skb(%struct.TYPE_2__* %25)
  %27 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %28 = call i64 @get_next_dframe(%struct.dchannel* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %32 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hfcpci_fill_dfifo(i32 %33)
  br label %35

35:                                               ; preds = %30, %22
  br label %36

36:                                               ; preds = %35, %17
  ret void
}

declare dso_local i32 @hfcpci_fill_dfifo(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_2__*) #1

declare dso_local i64 @get_next_dframe(%struct.dchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
