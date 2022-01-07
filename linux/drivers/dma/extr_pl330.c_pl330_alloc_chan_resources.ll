; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_pl330_chan = type { i32, i32, i32, %struct.pl330_dmac* }
%struct.pl330_dmac = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@pl330_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @pl330_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl330_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.dma_pl330_chan*, align 8
  %5 = alloca %struct.pl330_dmac*, align 8
  %6 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %8 = call %struct.dma_pl330_chan* @to_pchan(%struct.dma_chan* %7)
  store %struct.dma_pl330_chan* %8, %struct.dma_pl330_chan** %4, align 8
  %9 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %4, align 8
  %10 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %9, i32 0, i32 3
  %11 = load %struct.pl330_dmac*, %struct.pl330_dmac** %10, align 8
  store %struct.pl330_dmac* %11, %struct.pl330_dmac** %5, align 8
  %12 = load %struct.pl330_dmac*, %struct.pl330_dmac** %5, align 8
  %13 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %17 = call i32 @dma_cookie_init(%struct.dma_chan* %16)
  %18 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %4, align 8
  %19 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.pl330_dmac*, %struct.pl330_dmac** %5, align 8
  %21 = call i32 @pl330_request_channel(%struct.pl330_dmac* %20)
  %22 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %4, align 8
  %23 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %4, align 8
  %25 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %1
  %29 = load %struct.pl330_dmac*, %struct.pl330_dmac** %5, align 8
  %30 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %29, i32 0, i32 0
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %46

35:                                               ; preds = %1
  %36 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %4, align 8
  %37 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %36, i32 0, i32 1
  %38 = load i32, i32* @pl330_tasklet, align 4
  %39 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %4, align 8
  %40 = ptrtoint %struct.dma_pl330_chan* %39 to i64
  %41 = call i32 @tasklet_init(i32* %37, i32 %38, i64 %40)
  %42 = load %struct.pl330_dmac*, %struct.pl330_dmac** %5, align 8
  %43 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %42, i32 0, i32 0
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %35, %28
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.dma_pl330_chan* @to_pchan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dma_cookie_init(%struct.dma_chan*) #1

declare dso_local i32 @pl330_request_channel(%struct.pl330_dmac*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
