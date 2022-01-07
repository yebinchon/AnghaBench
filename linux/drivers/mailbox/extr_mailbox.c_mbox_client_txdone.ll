; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_mbox_client_txdone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_mbox_client_txdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TXDONE_BY_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Client can't run the TX ticker\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbox_client_txdone(%struct.mbox_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %6 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TXDONE_BY_ACK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %17 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @tx_tick(%struct.mbox_chan* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %15
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @tx_tick(%struct.mbox_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
