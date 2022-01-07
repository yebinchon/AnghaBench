; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_is_current_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_is_current_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dma_chan = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.stm32_dma_sg_req* }
%struct.stm32_dma_sg_req = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.stm32_dma_device = type { i32 }

@STM32_DMA_SCR_DBM = common dso_local global i32 0, align 4
@STM32_DMA_SCR_CT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dma_chan*)* @stm32_dma_is_current_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dma_is_current_sg(%struct.stm32_dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_dma_chan*, align 8
  %4 = alloca %struct.stm32_dma_device*, align 8
  %5 = alloca %struct.stm32_dma_sg_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stm32_dma_chan* %0, %struct.stm32_dma_chan** %3, align 8
  %9 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %10 = call %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan* %9)
  store %struct.stm32_dma_device* %10, %struct.stm32_dma_device** %4, align 8
  %11 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %4, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @STM32_DMA_SCR(i32 %15)
  %17 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %14, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @STM32_DMA_SCR_DBM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %61

23:                                               ; preds = %1
  %24 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %25 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.stm32_dma_sg_req*, %struct.stm32_dma_sg_req** %27, align 8
  %29 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %30 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.stm32_dma_sg_req, %struct.stm32_dma_sg_req* %28, i64 %31
  store %struct.stm32_dma_sg_req* %32, %struct.stm32_dma_sg_req** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @STM32_DMA_SCR_CT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %23
  %38 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @STM32_DMA_SM0AR(i32 %39)
  %41 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %38, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.stm32_dma_sg_req*, %struct.stm32_dma_sg_req** %5, align 8
  %44 = getelementptr inbounds %struct.stm32_dma_sg_req, %struct.stm32_dma_sg_req* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %42, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %61

49:                                               ; preds = %23
  %50 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @STM32_DMA_SM1AR(i32 %51)
  %53 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %50, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.stm32_dma_sg_req*, %struct.stm32_dma_sg_req** %5, align 8
  %56 = getelementptr inbounds %struct.stm32_dma_sg_req, %struct.stm32_dma_sg_req* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %54, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %49, %37, %22
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan*) #1

declare dso_local i32 @stm32_dma_read(%struct.stm32_dma_device*, i32) #1

declare dso_local i32 @STM32_DMA_SCR(i32) #1

declare dso_local i32 @STM32_DMA_SM0AR(i32) #1

declare dso_local i32 @STM32_DMA_SM1AR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
