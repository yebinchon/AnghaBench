; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32, i64* }
%struct.of_dma = type { %struct.stm32_dma_device* }
%struct.stm32_dma_device = type { %struct.stm32_dma_chan*, %struct.TYPE_3__ }
%struct.stm32_dma_chan = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.stm32_dma_cfg = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"Bad number of cells\0A\00", align 1
@STM32_DMA_MAX_CHANNELS = common dso_local global i64 0, align 8
@STM32_DMA_MAX_REQUEST_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Bad channel and/or request id\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"No more channels available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @stm32_dma_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @stm32_dma_of_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.stm32_dma_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.stm32_dma_cfg, align 8
  %9 = alloca %struct.stm32_dma_chan*, align 8
  %10 = alloca %struct.dma_chan*, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %11 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %12 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %11, i32 0, i32 0
  %13 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %12, align 8
  store %struct.stm32_dma_device* %13, %struct.stm32_dma_device** %6, align 8
  %14 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %6, align 8
  %15 = getelementptr inbounds %struct.stm32_dma_device, %struct.stm32_dma_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %7, align 8
  %18 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %19 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %82

25:                                               ; preds = %2
  %26 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %27 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.stm32_dma_cfg, %struct.stm32_dma_cfg* %8, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.stm32_dma_cfg, %struct.stm32_dma_cfg* %8, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %39 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.stm32_dma_cfg, %struct.stm32_dma_cfg* %8, i32 0, i32 2
  store i64 %42, i64* %43, align 8
  %44 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %45 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 3
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.stm32_dma_cfg, %struct.stm32_dma_cfg* %8, i32 0, i32 3
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.stm32_dma_cfg, %struct.stm32_dma_cfg* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @STM32_DMA_MAX_CHANNELS, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %25
  %55 = getelementptr inbounds %struct.stm32_dma_cfg, %struct.stm32_dma_cfg* %8, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @STM32_DMA_MAX_REQUEST_ID, align 8
  %58 = icmp uge i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %25
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %82

62:                                               ; preds = %54
  %63 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %6, align 8
  %64 = getelementptr inbounds %struct.stm32_dma_device, %struct.stm32_dma_device* %63, i32 0, i32 0
  %65 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %64, align 8
  %66 = getelementptr inbounds %struct.stm32_dma_cfg, %struct.stm32_dma_cfg* %8, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %65, i64 %67
  store %struct.stm32_dma_chan* %68, %struct.stm32_dma_chan** %9, align 8
  %69 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %9, align 8
  %70 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call %struct.dma_chan* @dma_get_slave_channel(i32* %71)
  store %struct.dma_chan* %72, %struct.dma_chan** %10, align 8
  %73 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %74 = icmp ne %struct.dma_chan* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %62
  %76 = load %struct.device*, %struct.device** %7, align 8
  %77 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %82

78:                                               ; preds = %62
  %79 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %9, align 8
  %80 = call i32 @stm32_dma_set_config(%struct.stm32_dma_chan* %79, %struct.stm32_dma_cfg* %8)
  %81 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  store %struct.dma_chan* %81, %struct.dma_chan** %3, align 8
  br label %82

82:                                               ; preds = %78, %75, %59, %22
  %83 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %83
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.dma_chan* @dma_get_slave_channel(i32*) #1

declare dso_local i32 @stm32_dma_set_config(%struct.stm32_dma_chan*, %struct.stm32_dma_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
