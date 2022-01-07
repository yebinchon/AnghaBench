; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_HDLC_irq_xpr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_HDLC_irq_xpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bchannel = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FLG_TX_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bchannel*)* @HDLC_irq_xpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HDLC_irq_xpr(%struct.bchannel* %0) #0 {
  %2 = alloca %struct.bchannel*, align 8
  store %struct.bchannel* %0, %struct.bchannel** %2, align 8
  %3 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %4 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %9 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %12 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %10, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %7
  %18 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %19 = call i32 @hdlc_fill_fifo(%struct.bchannel* %18)
  br label %46

20:                                               ; preds = %7, %1
  %21 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %22 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @dev_kfree_skb(%struct.TYPE_2__* %23)
  %25 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %26 = call i64 @get_next_bframe(%struct.bchannel* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %30 = call i32 @hdlc_fill_fifo(%struct.bchannel* %29)
  %31 = load i32, i32* @FLG_TX_EMPTY, align 4
  %32 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %33 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %32, i32 0, i32 1
  %34 = call i32 @test_and_clear_bit(i32 %31, i32* %33)
  br label %45

35:                                               ; preds = %20
  %36 = load i32, i32* @FLG_TX_EMPTY, align 4
  %37 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %38 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %37, i32 0, i32 1
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %43 = call i32 @hdlc_fill_fifo(%struct.bchannel* %42)
  br label %44

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %44, %28
  br label %46

46:                                               ; preds = %45, %17
  ret void
}

declare dso_local i32 @hdlc_fill_fifo(%struct.bchannel*) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_2__*) #1

declare dso_local i64 @get_next_bframe(%struct.bchannel*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
