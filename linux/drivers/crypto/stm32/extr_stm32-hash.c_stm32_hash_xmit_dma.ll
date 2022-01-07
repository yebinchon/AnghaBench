; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_xmit_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_xmit_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_hash_dev = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.stm32_hash_dev*, i32 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"dmaengine_prep_slave error\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@stm32_hash_dma_callback = common dso_local global i32 0, align 4
@HASH_FLAGS_FINAL = common dso_local global i32 0, align 4
@HASH_FLAGS_DMA_ACTIVE = common dso_local global i32 0, align 4
@HASH_CR = common dso_local global i32 0, align 4
@HASH_CR_MDMAT = common dso_local global i32 0, align 4
@HASH_CR_DMAE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@DMA_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"DMA Error %i\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_hash_dev*, %struct.scatterlist*, i32, i32)* @stm32_hash_xmit_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_xmit_dma(%struct.stm32_hash_dev* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stm32_hash_dev*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_async_tx_descriptor*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.stm32_hash_dev* %0, %struct.stm32_hash_dev** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %15 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %18 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %19 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %20 = load i32, i32* @DMA_CTRL_ACK, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %16, %struct.scatterlist* %17, i32 1, i32 %18, i32 %21)
  store %struct.dma_async_tx_descriptor* %22, %struct.dma_async_tx_descriptor** %10, align 8
  %23 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %24 = icmp ne %struct.dma_async_tx_descriptor* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %4
  %26 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %27 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %127

32:                                               ; preds = %4
  %33 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %34 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %33, i32 0, i32 2
  %35 = call i32 @reinit_completion(i32* %34)
  %36 = load i32, i32* @stm32_hash_dma_callback, align 4
  %37 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %38 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %40 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %41 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %40, i32 0, i32 0
  store %struct.stm32_hash_dev* %39, %struct.stm32_hash_dev** %41, align 8
  %42 = load i32, i32* @HASH_FLAGS_FINAL, align 4
  %43 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %44 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @HASH_FLAGS_DMA_ACTIVE, align 4
  %48 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %49 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %53 = load i32, i32* @HASH_CR, align 4
  %54 = call i32 @stm32_hash_read(%struct.stm32_hash_dev* %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %32
  %58 = load i32, i32* @HASH_CR_MDMAT, align 4
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %12, align 4
  br label %66

61:                                               ; preds = %32
  %62 = load i32, i32* @HASH_CR_MDMAT, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %12, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i32, i32* @HASH_CR_DMAE, align 4
  %68 = load i32, i32* %12, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %12, align 4
  %70 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %71 = load i32, i32* @HASH_CR, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @stm32_hash_write(%struct.stm32_hash_dev* %70, i32 %71, i32 %72)
  %74 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @stm32_hash_set_nblw(%struct.stm32_hash_dev* %74, i32 %75)
  %77 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %78 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @dma_submit_error(i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %66
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %127

86:                                               ; preds = %66
  %87 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %88 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dma_async_issue_pending(i32 %89)
  %91 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %92 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %91, i32 0, i32 2
  %93 = call i32 @msecs_to_jiffies(i32 100)
  %94 = call i32 @wait_for_completion_timeout(i32* %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %86
  %97 = load i32, i32* @ETIMEDOUT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %96, %86
  %100 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %101 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i64 @dma_async_is_tx_complete(i32 %102, i32 %103, i32* null, i32* null)
  %105 = load i64, i64* @DMA_COMPLETE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* @ETIMEDOUT, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %107, %99
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %115 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 (i32, i8*, ...) @dev_err(i32 %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %120 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dmaengine_terminate_all(i32 %121)
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %5, align 4
  br label %127

124:                                              ; preds = %110
  %125 = load i32, i32* @EINPROGRESS, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %124, %113, %83, %25
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @stm32_hash_read(%struct.stm32_hash_dev*, i32) #1

declare dso_local i32 @stm32_hash_write(%struct.stm32_hash_dev*, i32, i32) #1

declare dso_local i32 @stm32_hash_set_nblw(%struct.stm32_hash_dev*, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @dma_async_is_tx_complete(i32, i32, i32*, i32*) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
