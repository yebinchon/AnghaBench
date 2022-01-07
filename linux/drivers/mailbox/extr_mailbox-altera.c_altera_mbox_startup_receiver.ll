; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_altera_mbox_startup_receiver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_altera_mbox_startup_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32 }
%struct.altera_mbox = type { i32, i32, %struct.mbox_chan*, i32 }

@altera_mbox_rx_interrupt = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@altera_mbox_poll_rx = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MBOX_POLLING_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @altera_mbox_startup_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_mbox_startup_receiver(%struct.mbox_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.altera_mbox*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  %6 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %7 = call %struct.altera_mbox* @mbox_chan_to_altera_mbox(%struct.mbox_chan* %6)
  store %struct.altera_mbox* %7, %struct.altera_mbox** %5, align 8
  %8 = load %struct.altera_mbox*, %struct.altera_mbox** %5, align 8
  %9 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.altera_mbox*, %struct.altera_mbox** %5, align 8
  %14 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @altera_mbox_rx_interrupt, align 4
  %17 = load i32, i32* @DRIVER_NAME, align 4
  %18 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %19 = call i32 @request_irq(i32 %15, i32 %16, i32 0, i32 %17, %struct.mbox_chan* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load %struct.altera_mbox*, %struct.altera_mbox** %5, align 8
  %25 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %30

26:                                               ; preds = %12
  %27 = load %struct.altera_mbox*, %struct.altera_mbox** %5, align 8
  %28 = call i32 @altera_mbox_rx_intmask(%struct.altera_mbox* %27, i32 1)
  store i32 0, i32* %2, align 4
  br label %45

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %32 = load %struct.altera_mbox*, %struct.altera_mbox** %5, align 8
  %33 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %32, i32 0, i32 2
  store %struct.mbox_chan* %31, %struct.mbox_chan** %33, align 8
  %34 = load %struct.altera_mbox*, %struct.altera_mbox** %5, align 8
  %35 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %34, i32 0, i32 1
  %36 = load i32, i32* @altera_mbox_poll_rx, align 4
  %37 = call i32 @timer_setup(i32* %35, i32 %36, i32 0)
  %38 = load %struct.altera_mbox*, %struct.altera_mbox** %5, align 8
  %39 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %38, i32 0, i32 1
  %40 = load i64, i64* @jiffies, align 8
  %41 = load i32, i32* @MBOX_POLLING_MS, align 4
  %42 = call i64 @msecs_to_jiffies(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @mod_timer(i32* %39, i64 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %30, %26
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.altera_mbox* @mbox_chan_to_altera_mbox(%struct.mbox_chan*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.mbox_chan*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @altera_mbox_rx_intmask(%struct.altera_mbox*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
