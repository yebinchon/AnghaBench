; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_omap_mbox_chan_send_noirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_omap_mbox_chan_send_noirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@IRQ_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_mbox*, i32)* @omap_mbox_chan_send_noirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mbox_chan_send_noirq(%struct.omap_mbox* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_mbox*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omap_mbox* %0, %struct.omap_mbox** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @EBUSY, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %9 = call i32 @mbox_fifo_full(%struct.omap_mbox* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %2
  %12 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %13 = load i32, i32* @IRQ_RX, align 4
  %14 = call i32 @_omap_mbox_enable_irq(%struct.omap_mbox* %12, i32 %13)
  %15 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @mbox_fifo_write(%struct.omap_mbox* %15, i32 %16)
  store i32 0, i32* %5, align 4
  %18 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %19 = load i32, i32* @IRQ_RX, align 4
  %20 = call i32 @_omap_mbox_disable_irq(%struct.omap_mbox* %18, i32 %19)
  %21 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %22 = call i32 @mbox_fifo_read(%struct.omap_mbox* %21)
  %23 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %24 = load i32, i32* @IRQ_RX, align 4
  %25 = call i32 @ack_mbox_irq(%struct.omap_mbox* %23, i32 %24)
  br label %26

26:                                               ; preds = %11, %2
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @mbox_fifo_full(%struct.omap_mbox*) #1

declare dso_local i32 @_omap_mbox_enable_irq(%struct.omap_mbox*, i32) #1

declare dso_local i32 @mbox_fifo_write(%struct.omap_mbox*, i32) #1

declare dso_local i32 @_omap_mbox_disable_irq(%struct.omap_mbox*, i32) #1

declare dso_local i32 @mbox_fifo_read(%struct.omap_mbox*) #1

declare dso_local i32 @ack_mbox_irq(%struct.omap_mbox*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
