; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_configure_next_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_configure_next_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dma_chan = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.stm32_dma_sg_req* }
%struct.stm32_dma_sg_req = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.stm32_dma_device = type { i32 }

@STM32_DMA_SCR_DBM = common dso_local global i32 0, align 4
@STM32_DMA_SCR_CT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"CT=1 <=> SM0AR: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"CT=0 <=> SM1AR: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_dma_chan*)* @stm32_dma_configure_next_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_dma_configure_next_sg(%struct.stm32_dma_chan* %0) #0 {
  %2 = alloca %struct.stm32_dma_chan*, align 8
  %3 = alloca %struct.stm32_dma_device*, align 8
  %4 = alloca %struct.stm32_dma_sg_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stm32_dma_chan* %0, %struct.stm32_dma_chan** %2, align 8
  %9 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %10 = call %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan* %9)
  store %struct.stm32_dma_device* %10, %struct.stm32_dma_device** %3, align 8
  %11 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @STM32_DMA_SCR(i32 %15)
  %17 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %14, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @STM32_DMA_SCR_DBM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %84

22:                                               ; preds = %1
  %23 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %24 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %27 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %25, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %34 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %22
  %36 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %37 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load %struct.stm32_dma_sg_req*, %struct.stm32_dma_sg_req** %39, align 8
  %41 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %42 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.stm32_dma_sg_req, %struct.stm32_dma_sg_req* %40, i64 %43
  store %struct.stm32_dma_sg_req* %44, %struct.stm32_dma_sg_req** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @STM32_DMA_SCR_CT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %35
  %50 = load %struct.stm32_dma_sg_req*, %struct.stm32_dma_sg_req** %4, align 8
  %51 = getelementptr inbounds %struct.stm32_dma_sg_req, %struct.stm32_dma_sg_req* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  %54 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @STM32_DMA_SM0AR(i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @stm32_dma_write(%struct.stm32_dma_device* %54, i32 %56, i32 %57)
  %59 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %60 = call i32 @chan2dev(%struct.stm32_dma_chan* %59)
  %61 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @STM32_DMA_SM0AR(i32 %62)
  %64 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %61, i32 %63)
  %65 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %83

66:                                               ; preds = %35
  %67 = load %struct.stm32_dma_sg_req*, %struct.stm32_dma_sg_req** %4, align 8
  %68 = getelementptr inbounds %struct.stm32_dma_sg_req, %struct.stm32_dma_sg_req* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %7, align 4
  %71 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @STM32_DMA_SM1AR(i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @stm32_dma_write(%struct.stm32_dma_device* %71, i32 %73, i32 %74)
  %76 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %77 = call i32 @chan2dev(%struct.stm32_dma_chan* %76)
  %78 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @STM32_DMA_SM1AR(i32 %79)
  %81 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %78, i32 %80)
  %82 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %66, %49
  br label %84

84:                                               ; preds = %83, %1
  ret void
}

declare dso_local %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan*) #1

declare dso_local i32 @stm32_dma_read(%struct.stm32_dma_device*, i32) #1

declare dso_local i32 @STM32_DMA_SCR(i32) #1

declare dso_local i32 @stm32_dma_write(%struct.stm32_dma_device*, i32, i32) #1

declare dso_local i32 @STM32_DMA_SM0AR(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(%struct.stm32_dma_chan*) #1

declare dso_local i32 @STM32_DMA_SM1AR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
