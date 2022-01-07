; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsldma_chan = type { i32 }

@FSL_DMA_CHAN_PAUSE_EXT = common dso_local global i32 0, align 4
@FSL_DMA_MR_EMP_EN = common dso_local global i32 0, align 4
@FSL_DMA_CHAN_START_EXT = common dso_local global i32 0, align 4
@FSL_DMA_MR_EMS_EN = common dso_local global i32 0, align 4
@FSL_DMA_MR_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsldma_chan*)* @dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_start(%struct.fsldma_chan* %0) #0 {
  %2 = alloca %struct.fsldma_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.fsldma_chan* %0, %struct.fsldma_chan** %2, align 8
  %4 = load %struct.fsldma_chan*, %struct.fsldma_chan** %2, align 8
  %5 = call i32 @get_mr(%struct.fsldma_chan* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.fsldma_chan*, %struct.fsldma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @FSL_DMA_CHAN_PAUSE_EXT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.fsldma_chan*, %struct.fsldma_chan** %2, align 8
  %14 = call i32 @set_bcr(%struct.fsldma_chan* %13, i32 0)
  %15 = load i32, i32* @FSL_DMA_MR_EMP_EN, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @FSL_DMA_MR_EMP_EN, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %12
  %24 = load %struct.fsldma_chan*, %struct.fsldma_chan** %2, align 8
  %25 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FSL_DMA_CHAN_START_EXT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @FSL_DMA_MR_EMS_EN, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %42

34:                                               ; preds = %23
  %35 = load i32, i32* @FSL_DMA_MR_EMS_EN, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @FSL_DMA_MR_CS, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %34, %30
  %43 = load %struct.fsldma_chan*, %struct.fsldma_chan** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @set_mr(%struct.fsldma_chan* %43, i32 %44)
  ret void
}

declare dso_local i32 @get_mr(%struct.fsldma_chan*) #1

declare dso_local i32 @set_bcr(%struct.fsldma_chan*, i32) #1

declare dso_local i32 @set_mr(%struct.fsldma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
