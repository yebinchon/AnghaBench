; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_dma_chan = type { i32, i32 }

@ATC_IS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @atc_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atc_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.at_dma_chan*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.at_dma_chan*
  store %struct.at_dma_chan* %6, %struct.at_dma_chan** %3, align 8
  %7 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* @ATC_IS_ERROR, align 4
  %12 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %12, i32 0, i32 1
  %14 = call i64 @test_and_clear_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %18 = call i32 @atc_handle_error(%struct.at_dma_chan* %17)
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %21 = call i64 @atc_chan_is_cyclic(%struct.at_dma_chan* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %25 = call i32 @atc_handle_cyclic(%struct.at_dma_chan* %24)
  br label %29

26:                                               ; preds = %19
  %27 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %28 = call i32 @atc_advance_work(%struct.at_dma_chan* %27)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %16
  %31 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %32 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %31, i32 0, i32 0
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @atc_handle_error(%struct.at_dma_chan*) #1

declare dso_local i64 @atc_chan_is_cyclic(%struct.at_dma_chan*) #1

declare dso_local i32 @atc_handle_cyclic(%struct.at_dma_chan*) #1

declare dso_local i32 @atc_advance_work(%struct.at_dma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
