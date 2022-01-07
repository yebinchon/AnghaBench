; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_omap_mbox_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_omap_mbox_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { %struct.omap_mbox_queue*, %struct.TYPE_2__*, i64, i32, i32 }
%struct.omap_mbox_queue = type { %struct.omap_mbox* }
%struct.TYPE_2__ = type { i32 }

@mbox_rx_work = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mbox_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to register mailbox interrupt:%d\0A\00", align 1
@TXDONE_BY_ACK = common dso_local global i32 0, align 4
@IRQ_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_mbox*)* @omap_mbox_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mbox_startup(%struct.omap_mbox* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_mbox*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_mbox_queue*, align 8
  store %struct.omap_mbox* %0, %struct.omap_mbox** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %7 = load i32, i32* @mbox_rx_work, align 4
  %8 = call %struct.omap_mbox_queue* @mbox_queue_alloc(%struct.omap_mbox* %6, i32 %7)
  store %struct.omap_mbox_queue* %8, %struct.omap_mbox_queue** %5, align 8
  %9 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %5, align 8
  %10 = icmp ne %struct.omap_mbox_queue* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %5, align 8
  %16 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %17 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %16, i32 0, i32 0
  store %struct.omap_mbox_queue* %15, %struct.omap_mbox_queue** %17, align 8
  %18 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %19 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %5, align 8
  %20 = getelementptr inbounds %struct.omap_mbox_queue, %struct.omap_mbox_queue* %19, i32 0, i32 0
  store %struct.omap_mbox* %18, %struct.omap_mbox** %20, align 8
  %21 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %22 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @mbox_interrupt, align 4
  %25 = load i32, i32* @IRQF_SHARED, align 4
  %26 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %27 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %30 = call i32 @request_irq(i32 %23, i32 %24, i32 %25, i32 %28, %struct.omap_mbox* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %14
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %52

37:                                               ; preds = %14
  %38 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %39 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @TXDONE_BY_ACK, align 4
  %44 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %45 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %50 = load i32, i32* @IRQ_RX, align 4
  %51 = call i32 @_omap_mbox_enable_irq(%struct.omap_mbox* %49, i32 %50)
  store i32 0, i32* %2, align 4
  br label %58

52:                                               ; preds = %34
  %53 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %54 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %53, i32 0, i32 0
  %55 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %54, align 8
  %56 = call i32 @mbox_queue_free(%struct.omap_mbox_queue* %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %48, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.omap_mbox_queue* @mbox_queue_alloc(%struct.omap_mbox*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.omap_mbox*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @_omap_mbox_enable_irq(%struct.omap_mbox*, i32) #1

declare dso_local i32 @mbox_queue_free(%struct.omap_mbox_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
