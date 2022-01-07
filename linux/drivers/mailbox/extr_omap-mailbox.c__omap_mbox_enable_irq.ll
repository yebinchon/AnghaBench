; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c__omap_mbox_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c__omap_mbox_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { i32, %struct.omap_mbox_fifo, %struct.omap_mbox_fifo }
%struct.omap_mbox_fifo = type { i32, i32 }

@IRQ_TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mbox*, i64)* @_omap_mbox_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_omap_mbox_enable_irq(%struct.omap_mbox* %0, i64 %1) #0 {
  %3 = alloca %struct.omap_mbox*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_mbox_fifo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.omap_mbox* %0, %struct.omap_mbox** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @IRQ_TX, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %14 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %13, i32 0, i32 2
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %17 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %16, i32 0, i32 1
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi %struct.omap_mbox_fifo* [ %14, %12 ], [ %17, %15 ]
  store %struct.omap_mbox_fifo* %19, %struct.omap_mbox_fifo** %6, align 8
  %20 = load %struct.omap_mbox_fifo*, %struct.omap_mbox_fifo** %6, align 8
  %21 = getelementptr inbounds %struct.omap_mbox_fifo, %struct.omap_mbox_fifo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.omap_mbox_fifo*, %struct.omap_mbox_fifo** %6, align 8
  %24 = getelementptr inbounds %struct.omap_mbox_fifo, %struct.omap_mbox_fifo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %27 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @mbox_read_reg(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %35 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @mbox_write_reg(i32 %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @mbox_read_reg(i32, i32) #1

declare dso_local i32 @mbox_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
