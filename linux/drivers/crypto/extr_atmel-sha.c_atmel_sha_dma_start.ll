; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, i32, %struct.atmel_sha_dma }
%struct.atmel_sha_dma = type { i32, %struct.scatterlist*, %struct.dma_chan*, %struct.dma_slave_config }
%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.atmel_sha_dev*, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@atmel_sha_dma_callback2 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*, %struct.scatterlist*, i64, i32)* @atmel_sha_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_dma_start(%struct.atmel_sha_dev* %0, %struct.scatterlist* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_sha_dev*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.atmel_sha_dma*, align 8
  %11 = alloca %struct.dma_slave_config*, align 8
  %12 = alloca %struct.dma_chan*, align 8
  %13 = alloca %struct.dma_async_tx_descriptor*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %18 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %17, i32 0, i32 2
  store %struct.atmel_sha_dma* %18, %struct.atmel_sha_dma** %10, align 8
  %19 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %10, align 8
  %20 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %19, i32 0, i32 3
  store %struct.dma_slave_config* %20, %struct.dma_slave_config** %11, align 8
  %21 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %10, align 8
  %22 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %21, i32 0, i32 2
  %23 = load %struct.dma_chan*, %struct.dma_chan** %22, align 8
  store %struct.dma_chan* %23, %struct.dma_chan** %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %26 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %28 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %10, align 8
  %29 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %28, i32 0, i32 1
  store %struct.scatterlist* %27, %struct.scatterlist** %29, align 8
  %30 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %31 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %10, align 8
  %34 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %33, i32 0, i32 1
  %35 = load %struct.scatterlist*, %struct.scatterlist** %34, align 8
  %36 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %10, align 8
  %37 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DMA_TO_DEVICE, align 4
  %40 = call i32 @dma_map_sg(i32 %32, %struct.scatterlist* %35, i32 %38, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %4
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %16, align 4
  br label %104

46:                                               ; preds = %4
  %47 = load %struct.dma_slave_config*, %struct.dma_slave_config** %11, align 8
  %48 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %47, i32 0, i32 0
  store i32 16, i32* %48, align 4
  %49 = load %struct.dma_slave_config*, %struct.dma_slave_config** %11, align 8
  %50 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %49, i32 0, i32 1
  store i32 16, i32* %50, align 4
  %51 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %52 = load %struct.dma_slave_config*, %struct.dma_slave_config** %11, align 8
  %53 = call i32 @dmaengine_slave_config(%struct.dma_chan* %51, %struct.dma_slave_config* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %92

57:                                               ; preds = %46
  %58 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %59 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %10, align 8
  %60 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %59, i32 0, i32 1
  %61 = load %struct.scatterlist*, %struct.scatterlist** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %64 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %65 = load i32, i32* @DMA_CTRL_ACK, align 4
  %66 = or i32 %64, %65
  %67 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %58, %struct.scatterlist* %61, i32 %62, i32 %63, i32 %66)
  store %struct.dma_async_tx_descriptor* %67, %struct.dma_async_tx_descriptor** %13, align 8
  %68 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %69 = icmp ne %struct.dma_async_tx_descriptor* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %57
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %16, align 4
  br label %92

73:                                               ; preds = %57
  %74 = load i32, i32* @atmel_sha_dma_callback2, align 4
  %75 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %76 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %78 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %79 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %78, i32 0, i32 0
  store %struct.atmel_sha_dev* %77, %struct.atmel_sha_dev** %79, align 8
  %80 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %81 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @dma_submit_error(i32 %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  br label %92

87:                                               ; preds = %73
  %88 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %89 = call i32 @dma_async_issue_pending(%struct.dma_chan* %88)
  %90 = load i32, i32* @EINPROGRESS, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %108

92:                                               ; preds = %86, %70, %56
  %93 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %94 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %10, align 8
  %97 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %96, i32 0, i32 1
  %98 = load %struct.scatterlist*, %struct.scatterlist** %97, align 8
  %99 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %10, align 8
  %100 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @DMA_TO_DEVICE, align 4
  %103 = call i32 @dma_unmap_sg(i32 %95, %struct.scatterlist* %98, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %92, %43
  %105 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @atmel_sha_complete(%struct.atmel_sha_dev* %105, i32 %106)
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %104, %87
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(%struct.dma_chan*, %struct.dma_slave_config*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @atmel_sha_complete(%struct.atmel_sha_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
