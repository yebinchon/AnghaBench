; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_dma_transfer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_dma_transfer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i64, %struct.atmel_aes_dma, %struct.atmel_aes_dma }
%struct.atmel_aes_dma = type { i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { %struct.atmel_aes_dev*, i32* }
%struct.dma_slave_config = type { i32, i32, i32, i64, i64, i8*, i8* }

@atmel_aes_dma_callback = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*, i32, i32, i8*)* @atmel_aes_dma_transfer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_dma_transfer_start(%struct.atmel_aes_dev* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_aes_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dma_async_tx_descriptor*, align 8
  %11 = alloca %struct.dma_slave_config, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.atmel_aes_dma*, align 8
  %14 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = call i32 @memset(%struct.dma_slave_config* %11, i32 0, i32 48)
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 6
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 5
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %46 [
    i32 128, label %27
    i32 129, label %36
  ]

27:                                               ; preds = %4
  %28 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %29 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %28, i32 0, i32 2
  store %struct.atmel_aes_dma* %29, %struct.atmel_aes_dma** %13, align 8
  store i32* null, i32** %12, align 8
  %30 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %31 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @AES_IDATAR(i32 0)
  %34 = add nsw i64 %32, %33
  %35 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 4
  store i64 %34, i64* %35, align 8
  br label %49

36:                                               ; preds = %4
  %37 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %38 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %37, i32 0, i32 1
  store %struct.atmel_aes_dma* %38, %struct.atmel_aes_dma** %13, align 8
  %39 = load i32*, i32** @atmel_aes_dma_callback, align 8
  store i32* %39, i32** %12, align 8
  %40 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %41 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @AES_ODATAR(i32 0)
  %44 = add nsw i64 %42, %43
  %45 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 3
  store i64 %44, i64* %45, align 8
  br label %49

46:                                               ; preds = %4
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %91

49:                                               ; preds = %36, %27
  %50 = load %struct.atmel_aes_dma*, %struct.atmel_aes_dma** %13, align 8
  %51 = getelementptr inbounds %struct.atmel_aes_dma, %struct.atmel_aes_dma* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dmaengine_slave_config(i32 %52, %struct.dma_slave_config* %11)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %5, align 4
  br label %91

58:                                               ; preds = %49
  %59 = load %struct.atmel_aes_dma*, %struct.atmel_aes_dma** %13, align 8
  %60 = getelementptr inbounds %struct.atmel_aes_dma, %struct.atmel_aes_dma* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.atmel_aes_dma*, %struct.atmel_aes_dma** %13, align 8
  %63 = getelementptr inbounds %struct.atmel_aes_dma, %struct.atmel_aes_dma* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.atmel_aes_dma*, %struct.atmel_aes_dma** %13, align 8
  %66 = getelementptr inbounds %struct.atmel_aes_dma, %struct.atmel_aes_dma* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %70 = load i32, i32* @DMA_CTRL_ACK, align 4
  %71 = or i32 %69, %70
  %72 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %61, i32 %64, i32 %67, i32 %68, i32 %71)
  store %struct.dma_async_tx_descriptor* %72, %struct.dma_async_tx_descriptor** %10, align 8
  %73 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %74 = icmp ne %struct.dma_async_tx_descriptor* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %58
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %91

78:                                               ; preds = %58
  %79 = load i32*, i32** %12, align 8
  %80 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %81 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  %82 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %83 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %84 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %83, i32 0, i32 0
  store %struct.atmel_aes_dev* %82, %struct.atmel_aes_dev** %84, align 8
  %85 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %86 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %85)
  %87 = load %struct.atmel_aes_dma*, %struct.atmel_aes_dma** %13, align 8
  %88 = getelementptr inbounds %struct.atmel_aes_dma, %struct.atmel_aes_dma* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dma_async_issue_pending(i32 %89)
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %78, %75, %56, %46
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i64 @AES_IDATAR(i32) #1

declare dso_local i64 @AES_ODATAR(i32) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
