; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_dump_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_dump_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dma_chan = type { i32 }
%struct.stm32_dma_device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"SCR:   0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"NDTR:  0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"SPAR:  0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"SM0AR: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"SM1AR: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"SFCR:  0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_dma_chan*)* @stm32_dma_dump_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_dma_dump_reg(%struct.stm32_dma_chan* %0) #0 {
  %2 = alloca %struct.stm32_dma_chan*, align 8
  %3 = alloca %struct.stm32_dma_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stm32_dma_chan* %0, %struct.stm32_dma_chan** %2, align 8
  %10 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %11 = call %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan* %10)
  store %struct.stm32_dma_device* %11, %struct.stm32_dma_device** %3, align 8
  %12 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %13 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %14 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @STM32_DMA_SCR(i32 %15)
  %17 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %12, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %19 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %20 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @STM32_DMA_SNDTR(i32 %21)
  %23 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %18, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %25 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %26 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @STM32_DMA_SPAR(i32 %27)
  %29 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %24, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %31 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %32 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @STM32_DMA_SM0AR(i32 %33)
  %35 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %30, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %37 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %38 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @STM32_DMA_SM1AR(i32 %39)
  %41 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %36, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %43 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %44 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @STM32_DMA_SFCR(i32 %45)
  %47 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %42, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %49 = call i32 @chan2dev(%struct.stm32_dma_chan* %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %53 = call i32 @chan2dev(%struct.stm32_dma_chan* %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %57 = call i32 @chan2dev(%struct.stm32_dma_chan* %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %61 = call i32 @chan2dev(%struct.stm32_dma_chan* %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %65 = call i32 @chan2dev(%struct.stm32_dma_chan* %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dev_dbg(i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %69 = call i32 @chan2dev(%struct.stm32_dma_chan* %68)
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  ret void
}

declare dso_local %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan*) #1

declare dso_local i32 @stm32_dma_read(%struct.stm32_dma_device*, i32) #1

declare dso_local i32 @STM32_DMA_SCR(i32) #1

declare dso_local i32 @STM32_DMA_SNDTR(i32) #1

declare dso_local i32 @STM32_DMA_SPAR(i32) #1

declare dso_local i32 @STM32_DMA_SM0AR(i32) #1

declare dso_local i32 @STM32_DMA_SM1AR(i32) #1

declare dso_local i32 @STM32_DMA_SFCR(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(%struct.stm32_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
