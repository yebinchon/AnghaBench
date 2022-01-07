; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mpc512x_dma.c_mpc_dma_device_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mpc512x_dma.c_mpc_dma_device_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mpc_dma_chan = type { i32, i32, i32, i32, i32 }
%struct.mpc_dma = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @mpc_dma_device_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_dma_device_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mpc_dma_chan*, align 8
  %4 = alloca %struct.mpc_dma*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.mpc_dma_chan* @dma_chan_to_mpc_dma_chan(%struct.dma_chan* %6)
  store %struct.mpc_dma_chan* %7, %struct.mpc_dma_chan** %3, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %9 = call %struct.mpc_dma* @dma_chan_to_mpc_dma(%struct.dma_chan* %8)
  store %struct.mpc_dma* %9, %struct.mpc_dma** %4, align 8
  %10 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %3, align 8
  %11 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.mpc_dma*, %struct.mpc_dma** %4, align 8
  %15 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @out_8(i32* %17, i32 %20)
  %22 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %22, i32 0, i32 4
  %24 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %3, align 8
  %25 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %24, i32 0, i32 1
  %26 = call i32 @list_splice_tail_init(i32* %23, i32* %25)
  %27 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %3, align 8
  %28 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %27, i32 0, i32 3
  %29 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %3, align 8
  %30 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %29, i32 0, i32 1
  %31 = call i32 @list_splice_tail_init(i32* %28, i32* %30)
  %32 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %3, align 8
  %33 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %32, i32 0, i32 2
  %34 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %3, align 8
  %35 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %34, i32 0, i32 1
  %36 = call i32 @list_splice_tail_init(i32* %33, i32* %35)
  %37 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %3, align 8
  %38 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %37, i32 0, i32 0
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  ret i32 0
}

declare dso_local %struct.mpc_dma_chan* @dma_chan_to_mpc_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.mpc_dma* @dma_chan_to_mpc_dma(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
