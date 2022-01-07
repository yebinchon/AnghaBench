; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_hash_dev = type { i32, i32, i32*, i32, i64 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i64, i32 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@HASH_DIN = common dso_local global i64 0, align 8
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Couldn't acquire a slave DMA channel.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Couldn't configure DMA slave.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_hash_dev*)* @stm32_hash_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_dma_init(%struct.stm32_hash_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_hash_dev*, align 8
  %4 = alloca %struct.dma_slave_config, align 8
  %5 = alloca i32, align 4
  store %struct.stm32_hash_dev* %0, %struct.stm32_hash_dev** %3, align 8
  %6 = call i32 @memset(%struct.dma_slave_config* %4, i32 0, i32 32)
  %7 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %8 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 5
  store i32 %7, i32* %8, align 8
  %9 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %10 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HASH_DIN, align 8
  %13 = add nsw i64 %11, %12
  %14 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 4
  store i64 %13, i64* %14, align 8
  %15 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %16 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %18 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %22 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %27 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @dma_request_slave_channel(i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %31 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %33 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %1
  %37 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %38 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %66

43:                                               ; preds = %1
  %44 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %45 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @dmaengine_slave_config(i32* %46, %struct.dma_slave_config* %4)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %52 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @dma_release_channel(i32* %53)
  %55 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %56 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %58 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %66

62:                                               ; preds = %43
  %63 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %64 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %63, i32 0, i32 0
  %65 = call i32 @init_completion(i32* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %50, %36
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i32* @dma_request_slave_channel(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dmaengine_slave_config(i32*, %struct.dma_slave_config*) #1

declare dso_local i32 @dma_release_channel(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
