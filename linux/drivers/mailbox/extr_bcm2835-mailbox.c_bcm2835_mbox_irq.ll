; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm2835-mailbox.c_bcm2835_mbox_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm2835-mailbox.c_bcm2835_mbox_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_mbox = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mbox_chan*, %struct.device* }
%struct.mbox_chan = type { i32 }
%struct.device = type { i32 }

@MAIL0_STA = common dso_local global i64 0, align 8
@ARM_MS_EMPTY = common dso_local global i32 0, align 4
@MAIL0_RD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Reply 0x%08X\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bcm2835_mbox_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_mbox_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bcm2835_mbox*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.mbox_chan*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bcm2835_mbox*
  store %struct.bcm2835_mbox* %10, %struct.bcm2835_mbox** %5, align 8
  %11 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %5, align 8
  %12 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %5, align 8
  %16 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mbox_chan*, %struct.mbox_chan** %17, align 8
  %19 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %18, i64 0
  store %struct.mbox_chan* %19, %struct.mbox_chan** %7, align 8
  br label %20

20:                                               ; preds = %31, %2
  %21 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %5, align 8
  %22 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MAIL0_STA, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  %27 = load i32, i32* @ARM_MS_EMPTY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %43

31:                                               ; preds = %20
  %32 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %5, align 8
  %33 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MAIL0_RD, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %42 = call i32 @mbox_chan_received_data(%struct.mbox_chan* %41, i32* %8)
  br label %20

43:                                               ; preds = %20
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %44
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mbox_chan_received_data(%struct.mbox_chan*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
