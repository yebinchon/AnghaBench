; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.c_iop_adma_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.c_iop_adma_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.iop_adma_chan = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @iop_adma_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iop_adma_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.iop_adma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %4 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %5 = call %struct.iop_adma_chan* @to_iop_adma_chan(%struct.dma_chan* %4)
  store %struct.iop_adma_chan* %5, %struct.iop_adma_chan** %3, align 8
  %6 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %3, align 8
  %7 = getelementptr inbounds %struct.iop_adma_chan, %struct.iop_adma_chan* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.iop_adma_chan, %struct.iop_adma_chan* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %3, align 8
  %14 = call i32 @iop_chan_append(%struct.iop_adma_chan* %13)
  br label %15

15:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.iop_adma_chan* @to_iop_adma_chan(%struct.dma_chan*) #1

declare dso_local i32 @iop_chan_append(%struct.iop_adma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
