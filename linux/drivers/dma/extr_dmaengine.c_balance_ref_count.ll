; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_balance_ref_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_balance_ref_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i64 }
%struct.module = type { i32 }

@dmaengine_ref_count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @balance_ref_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_ref_count(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.module*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %4 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %5 = call %struct.module* @dma_chan_to_owner(%struct.dma_chan* %4)
  store %struct.module* %5, %struct.module** %3, align 8
  br label %6

6:                                                ; preds = %12, %1
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @dmaengine_ref_count, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load %struct.module*, %struct.module** %3, align 8
  %14 = call i32 @__module_get(%struct.module* %13)
  %15 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %16 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  br label %6

19:                                               ; preds = %6
  ret void
}

declare dso_local %struct.module* @dma_chan_to_owner(%struct.dma_chan*) #1

declare dso_local i32 @__module_get(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
