; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_omap_mbox_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_omap_mbox_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IRQ_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mbox*)* @omap_mbox_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mbox_fini(%struct.omap_mbox* %0) #0 {
  %2 = alloca %struct.omap_mbox*, align 8
  store %struct.omap_mbox* %0, %struct.omap_mbox** %2, align 8
  %3 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %4 = load i32, i32* @IRQ_RX, align 4
  %5 = call i32 @_omap_mbox_disable_irq(%struct.omap_mbox* %3, i32 %4)
  %6 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %7 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %10 = call i32 @free_irq(i32 %8, %struct.omap_mbox* %9)
  %11 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %12 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @flush_work(i32* %14)
  %16 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %17 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i32 @mbox_queue_free(%struct.TYPE_2__* %18)
  ret void
}

declare dso_local i32 @_omap_mbox_disable_irq(%struct.omap_mbox*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.omap_mbox*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @mbox_queue_free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
