; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsl_chan_set_src_loop_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsl_chan_set_src_loop_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsldma_chan = type { i32 }

@FSL_DMA_MR_SAHE = common dso_local global i32 0, align 4
@FSL_DMA_MR_SAHTS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsldma_chan*, i32)* @fsl_chan_set_src_loop_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_chan_set_src_loop_size(%struct.fsldma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.fsldma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fsldma_chan* %0, %struct.fsldma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %7 = call i32 @get_mr(%struct.fsldma_chan* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %26 [
    i32 0, label %9
    i32 1, label %14
    i32 2, label %14
    i32 4, label %14
    i32 8, label %14
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @FSL_DMA_MR_SAHE, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  br label %26

14:                                               ; preds = %2, %2, %2, %2
  %15 = load i32, i32* @FSL_DMA_MR_SAHTS_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @FSL_DMA_MR_SAHE, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @__ilog2(i32 %20)
  %22 = shl i32 %21, 14
  %23 = or i32 %19, %22
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %2, %14, %9
  %27 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @set_mr(%struct.fsldma_chan* %27, i32 %28)
  ret void
}

declare dso_local i32 @get_mr(%struct.fsldma_chan*) #1

declare dso_local i32 @__ilog2(i32) #1

declare dso_local i32 @set_mr(%struct.fsldma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
