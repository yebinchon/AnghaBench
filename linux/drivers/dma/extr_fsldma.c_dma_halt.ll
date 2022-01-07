; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_dma_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_dma_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsldma_chan = type { i32 }

@FSL_DMA_IP_MASK = common dso_local global i32 0, align 4
@FSL_DMA_IP_85XX = common dso_local global i32 0, align 4
@FSL_DMA_MR_CA = common dso_local global i32 0, align 4
@FSL_DMA_MR_CS = common dso_local global i32 0, align 4
@FSL_DMA_MR_EMS_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA halt timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsldma_chan*)* @dma_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_halt(%struct.fsldma_chan* %0) #0 {
  %2 = alloca %struct.fsldma_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fsldma_chan* %0, %struct.fsldma_chan** %2, align 8
  %5 = load %struct.fsldma_chan*, %struct.fsldma_chan** %2, align 8
  %6 = call i32 @get_mr(%struct.fsldma_chan* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.fsldma_chan*, %struct.fsldma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FSL_DMA_IP_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @FSL_DMA_IP_85XX, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load i32, i32* @FSL_DMA_MR_CA, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.fsldma_chan*, %struct.fsldma_chan** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @set_mr(%struct.fsldma_chan* %18, i32 %19)
  %21 = load i32, i32* @FSL_DMA_MR_CA, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %14, %1
  %26 = load i32, i32* @FSL_DMA_MR_CS, align 4
  %27 = load i32, i32* @FSL_DMA_MR_EMS_EN, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.fsldma_chan*, %struct.fsldma_chan** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @set_mr(%struct.fsldma_chan* %32, i32 %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %45, %25
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 100
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load %struct.fsldma_chan*, %struct.fsldma_chan** %2, align 8
  %40 = call i64 @dma_is_idle(%struct.fsldma_chan* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %55

43:                                               ; preds = %38
  %44 = call i32 @udelay(i32 10)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %35

48:                                               ; preds = %35
  %49 = load %struct.fsldma_chan*, %struct.fsldma_chan** %2, align 8
  %50 = call i64 @dma_is_idle(%struct.fsldma_chan* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load %struct.fsldma_chan*, %struct.fsldma_chan** %2, align 8
  %54 = call i32 @chan_err(%struct.fsldma_chan* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %42, %52, %48
  ret void
}

declare dso_local i32 @get_mr(%struct.fsldma_chan*) #1

declare dso_local i32 @set_mr(%struct.fsldma_chan*, i32) #1

declare dso_local i64 @dma_is_idle(%struct.fsldma_chan*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @chan_err(%struct.fsldma_chan*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
