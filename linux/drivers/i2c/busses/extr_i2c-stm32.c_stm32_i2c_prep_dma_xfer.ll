; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32.c_stm32_i2c_prep_dma_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32.c_stm32_i2c_prep_dma_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.stm32_i2c_dma = type { i32, i32, i32, %struct.TYPE_5__*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.dma_async_tx_descriptor = type { i8*, i32 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"DMA mapping failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Not able to get desc for DMA xfer\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"DMA submit failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stm32_i2c_prep_dma_xfer(%struct.device* %0, %struct.stm32_i2c_dma* %1, i32 %2, i32 %3, i32* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.stm32_i2c_dma*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.dma_async_tx_descriptor*, align 8
  %17 = alloca %struct.device*, align 8
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %9, align 8
  store %struct.stm32_i2c_dma* %1, %struct.stm32_i2c_dma** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %7
  %22 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %23 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %22, i32 0, i32 7
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %26 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %25, i32 0, i32 3
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %26, align 8
  %27 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %28 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %29 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %31 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %32 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %45

33:                                               ; preds = %7
  %34 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %35 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %34, i32 0, i32 6
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %38 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %37, i32 0, i32 3
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %38, align 8
  %39 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %40 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %41 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @DMA_TO_DEVICE, align 4
  %43 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %44 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %33, %21
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %48 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %50 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %49, i32 0, i32 3
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.device*, %struct.device** %54, align 8
  store %struct.device* %55, %struct.device** %17, align 8
  %56 = load %struct.device*, %struct.device** %17, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %59 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %62 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dma_map_single(%struct.device* %56, i32* %57, i32 %60, i32 %63)
  %65 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %66 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.device*, %struct.device** %17, align 8
  %68 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %69 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @dma_mapping_error(%struct.device* %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %45
  %74 = load %struct.device*, %struct.device** %9, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %136

78:                                               ; preds = %45
  %79 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %80 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %79, i32 0, i32 3
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %83 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %86 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %89 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %92 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(%struct.TYPE_5__* %81, i32 %84, i32 %87, i32 %90, i32 %91)
  store %struct.dma_async_tx_descriptor* %92, %struct.dma_async_tx_descriptor** %16, align 8
  %93 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %16, align 8
  %94 = icmp ne %struct.dma_async_tx_descriptor* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %78
  %96 = load %struct.device*, %struct.device** %9, align 8
  %97 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %18, align 4
  br label %123

100:                                              ; preds = %78
  %101 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %102 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %101, i32 0, i32 4
  %103 = call i32 @reinit_completion(i32* %102)
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %16, align 8
  %106 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load i8*, i8** %15, align 8
  %108 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %16, align 8
  %109 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %16, align 8
  %111 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %110)
  %112 = call i32 @dma_submit_error(i32 %111)
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %100
  %116 = load %struct.device*, %struct.device** %9, align 8
  %117 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %123

118:                                              ; preds = %100
  %119 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %120 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %119, i32 0, i32 3
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = call i32 @dma_async_issue_pending(%struct.TYPE_5__* %121)
  store i32 0, i32* %8, align 4
  br label %136

123:                                              ; preds = %115, %95
  %124 = load %struct.device*, %struct.device** %17, align 8
  %125 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %126 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %129 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %132 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dma_unmap_single(%struct.device* %124, i32 %127, i32 %130, i32 %133)
  %135 = load i32, i32* %18, align 4
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %123, %118, %73
  %137 = load i32, i32* %8, align 4
  ret i32 %137
}

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.TYPE_5__*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
