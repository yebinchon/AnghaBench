; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mmp_pdma_chan = type { i32, i64, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @mmp_pdma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmp_pdma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mmp_pdma_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.mmp_pdma_chan* @to_mmp_pdma_chan(%struct.dma_chan* %5)
  store %struct.mmp_pdma_chan* %6, %struct.mmp_pdma_chan** %3, align 8
  %7 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %7, i32 0, i32 3
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %3, align 8
  %12 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %12, i32 0, i32 5
  %14 = call i32 @mmp_pdma_free_desc_list(%struct.mmp_pdma_chan* %11, i32* %13)
  %15 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %3, align 8
  %16 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %3, align 8
  %17 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %16, i32 0, i32 4
  %18 = call i32 @mmp_pdma_free_desc_list(%struct.mmp_pdma_chan* %15, i32* %17)
  %19 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %3, align 8
  %20 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %19, i32 0, i32 3
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %3, align 8
  %24 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @dma_pool_destroy(i32* %25)
  %27 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %3, align 8
  %28 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %3, align 8
  %30 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %3, align 8
  %32 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %3, align 8
  %34 = call i32 @mmp_pdma_free_phy(%struct.mmp_pdma_chan* %33)
  ret void
}

declare dso_local %struct.mmp_pdma_chan* @to_mmp_pdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mmp_pdma_free_desc_list(%struct.mmp_pdma_chan*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

declare dso_local i32 @mmp_pdma_free_phy(%struct.mmp_pdma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
