; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_altera_mbox_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_altera_mbox_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32 }
%struct.altera_mbox = type { i64 }

@MAILBOX_PTR_REG = common dso_local global i64 0, align 8
@MBOX_PTR = common dso_local global i64 0, align 8
@MAILBOX_CMD_REG = common dso_local global i64 0, align 8
@MBOX_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_chan*)* @altera_mbox_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_mbox_rx_data(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.altera_mbox*, align 8
  %4 = alloca [2 x i32], align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %5 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %6 = call %struct.altera_mbox* @mbox_chan_to_altera_mbox(%struct.mbox_chan* %5)
  store %struct.altera_mbox* %6, %struct.altera_mbox** %3, align 8
  %7 = load %struct.altera_mbox*, %struct.altera_mbox** %3, align 8
  %8 = call i64 @altera_mbox_pending(%struct.altera_mbox* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.altera_mbox*, %struct.altera_mbox** %3, align 8
  %12 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAILBOX_PTR_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  %17 = load i64, i64* @MBOX_PTR, align 8
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %17
  store i32 %16, i32* %18, align 4
  %19 = load %struct.altera_mbox*, %struct.altera_mbox** %3, align 8
  %20 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAILBOX_CMD_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl_relaxed(i64 %23)
  %25 = load i64, i64* @MBOX_CMD, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %25
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %29 = bitcast i32* %28 to i8*
  %30 = call i32 @mbox_chan_received_data(%struct.mbox_chan* %27, i8* %29)
  br label %31

31:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.altera_mbox* @mbox_chan_to_altera_mbox(%struct.mbox_chan*) #1

declare dso_local i64 @altera_mbox_pending(%struct.altera_mbox*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @mbox_chan_received_data(%struct.mbox_chan*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
