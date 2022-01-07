; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_altera_mbox_startup_sender.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_altera_mbox_startup_sender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32 }
%struct.altera_mbox = type { i32, i32, i64 }

@altera_mbox_tx_interrupt = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to register mailbox interrupt:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @altera_mbox_startup_sender to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_mbox_startup_sender(%struct.mbox_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.altera_mbox*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  %6 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %7 = call %struct.altera_mbox* @mbox_chan_to_altera_mbox(%struct.mbox_chan* %6)
  store %struct.altera_mbox* %7, %struct.altera_mbox** %5, align 8
  %8 = load %struct.altera_mbox*, %struct.altera_mbox** %5, align 8
  %9 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.altera_mbox*, %struct.altera_mbox** %5, align 8
  %14 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @altera_mbox_tx_interrupt, align 4
  %17 = load i32, i32* @DRIVER_NAME, align 4
  %18 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %19 = call i32 @request_irq(i32 %15, i32 %16, i32 0, i32 %17, %struct.mbox_chan* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %12
  %24 = load %struct.altera_mbox*, %struct.altera_mbox** %5, align 8
  %25 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %12
  br label %31

31:                                               ; preds = %30, %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.altera_mbox* @mbox_chan_to_altera_mbox(%struct.mbox_chan*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.mbox_chan*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
