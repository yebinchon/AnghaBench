; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_chan_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_chan_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shdma_chan = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.shdma_ops = type { i64 (%struct.shdma_chan.0*, i32)* }
%struct.shdma_chan.0 = type opaque
%struct.TYPE_4__ = type { %struct.shdma_ops* }

@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @chan_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chan_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.shdma_chan*, align 8
  %6 = alloca %struct.shdma_ops*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.shdma_chan*
  store %struct.shdma_chan* %9, %struct.shdma_chan** %5, align 8
  %10 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %11 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_4__* @to_shdma_dev(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.shdma_ops*, %struct.shdma_ops** %15, align 8
  store %struct.shdma_ops* %16, %struct.shdma_ops** %6, align 8
  %17 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %18 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.shdma_ops*, %struct.shdma_ops** %6, align 8
  %21 = getelementptr inbounds %struct.shdma_ops, %struct.shdma_ops* %20, i32 0, i32 0
  %22 = load i64 (%struct.shdma_chan.0*, i32)*, i64 (%struct.shdma_chan.0*, i32)** %21, align 8
  %23 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %24 = bitcast %struct.shdma_chan* %23 to %struct.shdma_chan.0*
  %25 = load i32, i32* %3, align 4
  %26 = call i64 %22(%struct.shdma_chan.0* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @IRQ_NONE, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %7, align 4
  %34 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %35 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_4__* @to_shdma_dev(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
