; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c___mbox_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c___mbox_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { %struct.omap_mbox_queue* }
%struct.omap_mbox_queue = type { i32, i32, i32 }

@IRQ_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mbox*)* @__mbox_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mbox_rx_interrupt(%struct.omap_mbox* %0) #0 {
  %2 = alloca %struct.omap_mbox*, align 8
  %3 = alloca %struct.omap_mbox_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omap_mbox* %0, %struct.omap_mbox** %2, align 8
  %6 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %7 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %6, i32 0, i32 0
  %8 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %7, align 8
  store %struct.omap_mbox_queue* %8, %struct.omap_mbox_queue** %3, align 8
  br label %9

9:                                                ; preds = %29, %1
  %10 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %11 = call i32 @mbox_fifo_empty(%struct.omap_mbox* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %41

14:                                               ; preds = %9
  %15 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %3, align 8
  %16 = getelementptr inbounds %struct.omap_mbox_queue, %struct.omap_mbox_queue* %15, i32 0, i32 2
  %17 = call i32 @kfifo_avail(i32* %16)
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 4
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %25 = load i32, i32* @IRQ_RX, align 4
  %26 = call i32 @_omap_mbox_disable_irq(%struct.omap_mbox* %24, i32 %25)
  %27 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %3, align 8
  %28 = getelementptr inbounds %struct.omap_mbox_queue, %struct.omap_mbox_queue* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %45

29:                                               ; preds = %14
  %30 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %31 = call i32 @mbox_fifo_read(%struct.omap_mbox* %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %3, align 8
  %33 = getelementptr inbounds %struct.omap_mbox_queue, %struct.omap_mbox_queue* %32, i32 0, i32 2
  %34 = bitcast i32* %4 to i8*
  %35 = call i32 @kfifo_in(i32* %33, i8* %34, i32 4)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 4
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  br label %9

41:                                               ; preds = %9
  %42 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %43 = load i32, i32* @IRQ_RX, align 4
  %44 = call i32 @ack_mbox_irq(%struct.omap_mbox* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %23
  %46 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %47 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %46, i32 0, i32 0
  %48 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %47, align 8
  %49 = getelementptr inbounds %struct.omap_mbox_queue, %struct.omap_mbox_queue* %48, i32 0, i32 1
  %50 = call i32 @schedule_work(i32* %49)
  ret void
}

declare dso_local i32 @mbox_fifo_empty(%struct.omap_mbox*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfifo_avail(i32*) #1

declare dso_local i32 @_omap_mbox_disable_irq(%struct.omap_mbox*, i32) #1

declare dso_local i32 @mbox_fifo_read(%struct.omap_mbox*) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ack_mbox_irq(%struct.omap_mbox*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
