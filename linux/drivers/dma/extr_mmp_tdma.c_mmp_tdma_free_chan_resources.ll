; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mmp_tdma_chan = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @mmp_tdma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmp_tdma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mmp_tdma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %4 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %5 = call %struct.mmp_tdma_chan* @to_mmp_tdma_chan(%struct.dma_chan* %4)
  store %struct.mmp_tdma_chan* %5, %struct.mmp_tdma_chan** %3, align 8
  %6 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %7 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %15 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %18 = call i32 @devm_free_irq(i32 %13, i64 %16, %struct.mmp_tdma_chan* %17)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %21 = call i32 @mmp_tdma_free_descriptor(%struct.mmp_tdma_chan* %20)
  ret void
}

declare dso_local %struct.mmp_tdma_chan* @to_mmp_tdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @devm_free_irq(i32, i64, %struct.mmp_tdma_chan*) #1

declare dso_local i32 @mmp_tdma_free_descriptor(%struct.mmp_tdma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
