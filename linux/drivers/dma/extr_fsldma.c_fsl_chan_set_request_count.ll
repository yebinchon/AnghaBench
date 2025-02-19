; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsl_chan_set_request_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsl_chan_set_request_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsldma_chan = type { i32 }

@FSL_DMA_MR_BWC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsldma_chan*, i32)* @fsl_chan_set_request_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_chan_set_request_count(%struct.fsldma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.fsldma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fsldma_chan* %0, %struct.fsldma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 1024
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %11 = call i32 @get_mr(%struct.fsldma_chan* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @FSL_DMA_MR_BWC_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @__ilog2(i32 %16)
  %18 = shl i32 %17, 24
  %19 = load i32, i32* @FSL_DMA_MR_BWC_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @set_mr(%struct.fsldma_chan* %23, i32 %24)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @get_mr(%struct.fsldma_chan*) #1

declare dso_local i32 @__ilog2(i32) #1

declare dso_local i32 @set_mr(%struct.fsldma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
