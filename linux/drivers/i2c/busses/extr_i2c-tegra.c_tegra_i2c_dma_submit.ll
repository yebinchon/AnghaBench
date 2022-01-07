; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra.c_tegra_i2c_dma_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra.c_tegra_i2c_dma_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_i2c_dev = type { i32, i32, %struct.dma_chan*, %struct.dma_chan*, i64, i32 }
%struct.dma_chan = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.tegra_i2c_dev*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"starting DMA for length: %zu\0A\00", align 1
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to get DMA descriptor\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@tegra_i2c_dma_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_i2c_dev*, i64)* @tegra_i2c_dma_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_i2c_dma_submit(%struct.tegra_i2c_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_i2c_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_chan*, align 8
  store %struct.tegra_i2c_dev* %0, %struct.tegra_i2c_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %14, i32 0, i32 5
  %16 = call i32 @reinit_completion(i32* %15)
  %17 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %4, align 8
  %18 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %7, align 4
  %27 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %4, align 8
  %33 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %32, i32 0, i32 3
  %34 = load %struct.dma_chan*, %struct.dma_chan** %33, align 8
  br label %39

35:                                               ; preds = %25
  %36 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %4, align 8
  %37 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %36, i32 0, i32 2
  %38 = load %struct.dma_chan*, %struct.dma_chan** %37, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi %struct.dma_chan* [ %34, %31 ], [ %38, %35 ]
  store %struct.dma_chan* %40, %struct.dma_chan** %8, align 8
  %41 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %42 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %4, align 8
  %43 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %48 = load i32, i32* @DMA_CTRL_ACK, align 4
  %49 = or i32 %47, %48
  %50 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(%struct.dma_chan* %41, i32 %44, i64 %45, i32 %46, i32 %49)
  store %struct.dma_async_tx_descriptor* %50, %struct.dma_async_tx_descriptor** %6, align 8
  %51 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %52 = icmp ne %struct.dma_async_tx_descriptor* %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %39
  %54 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %4, align 8
  %55 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %71

60:                                               ; preds = %39
  %61 = load i32, i32* @tegra_i2c_dma_complete, align 4
  %62 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %63 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %4, align 8
  %65 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %66 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %65, i32 0, i32 0
  store %struct.tegra_i2c_dev* %64, %struct.tegra_i2c_dev** %66, align 8
  %67 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %68 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %67)
  %69 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %70 = call i32 @dma_async_issue_pending(%struct.dma_chan* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %60, %53
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(%struct.dma_chan*, i32, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
