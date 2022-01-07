; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_ep93xx_dma_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_ep93xx_dma_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_chan = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ep93xx_dma_chan*)* }
%struct.ep93xx_dma_desc = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"got interrupt while active list is empty\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@EP93XX_DMA_IS_CYCLIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown interrupt!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ep93xx_dma_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_dma_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ep93xx_dma_chan*, align 8
  %7 = alloca %struct.ep93xx_dma_desc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ep93xx_dma_chan*
  store %struct.ep93xx_dma_chan* %10, %struct.ep93xx_dma_chan** %6, align 8
  %11 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %6, align 8
  %13 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %6, align 8
  %16 = call %struct.ep93xx_dma_desc* @ep93xx_dma_get_active(%struct.ep93xx_dma_chan* %15)
  store %struct.ep93xx_dma_desc* %16, %struct.ep93xx_dma_desc** %7, align 8
  %17 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %7, align 8
  %18 = icmp ne %struct.ep93xx_dma_desc* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %6, align 8
  %21 = call i32 @chan2dev(%struct.ep93xx_dma_chan* %20)
  %22 = call i32 @dev_warn(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %6, align 8
  %24 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %62

27:                                               ; preds = %2
  %28 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %6, align 8
  %29 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.ep93xx_dma_chan*)*, i32 (%struct.ep93xx_dma_chan*)** %31, align 8
  %33 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %6, align 8
  %34 = call i32 %32(%struct.ep93xx_dma_chan* %33)
  switch i32 %34, label %52 [
    i32 129, label %35
    i32 128, label %41
  ]

35:                                               ; preds = %27
  %36 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %7, align 8
  %37 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %6, align 8
  %39 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %38, i32 0, i32 1
  %40 = call i32 @tasklet_schedule(i32* %39)
  br label %57

41:                                               ; preds = %27
  %42 = load i32, i32* @EP93XX_DMA_IS_CYCLIC, align 4
  %43 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %6, align 8
  %44 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %43, i32 0, i32 2
  %45 = call i32 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %6, align 8
  %49 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %48, i32 0, i32 1
  %50 = call i32 @tasklet_schedule(i32* %49)
  br label %51

51:                                               ; preds = %47, %41
  br label %57

52:                                               ; preds = %27
  %53 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %6, align 8
  %54 = call i32 @chan2dev(%struct.ep93xx_dma_chan* %53)
  %55 = call i32 @dev_warn(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @IRQ_NONE, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %52, %51, %35
  %58 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %6, align 8
  %59 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %19
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ep93xx_dma_desc* @ep93xx_dma_get_active(%struct.ep93xx_dma_chan*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.ep93xx_dma_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
