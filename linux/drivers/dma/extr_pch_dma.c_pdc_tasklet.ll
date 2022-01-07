; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pdc_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pdc_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_dma_chan = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"BUG: handle non-idle channel in tasklet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @pdc_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pch_dma_chan*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.pch_dma_chan*
  store %struct.pch_dma_chan* %6, %struct.pch_dma_chan** %3, align 8
  %7 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %8 = call i32 @pdc_is_idle(%struct.pch_dma_chan* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %11, i32 0, i32 2
  %13 = call i32 @chan2dev(i32* %12)
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %17 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %16, i32 0, i32 0
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %21 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %20, i32 0, i32 1
  %22 = call i64 @test_and_clear_bit(i32 0, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %26 = call i32 @pdc_handle_error(%struct.pch_dma_chan* %25)
  br label %30

27:                                               ; preds = %15
  %28 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %29 = call i32 @pdc_advance_work(%struct.pch_dma_chan* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %32 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %31, i32 0, i32 0
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  br label %35

35:                                               ; preds = %30, %10
  ret void
}

declare dso_local i32 @pdc_is_idle(%struct.pch_dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @chan2dev(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @pdc_handle_error(%struct.pch_dma_chan*) #1

declare dso_local i32 @pdc_advance_work(%struct.pch_dma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
