; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i8*, i8*, i64, i32 }
%struct.crypto_platform_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DMA_SLAVE = common dso_local global i32 0, align 4
@atmel_sha_filter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"no DMA channel available\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*, %struct.crypto_platform_data*)* @atmel_sha_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_dma_init(%struct.atmel_sha_dev* %0, %struct.crypto_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_sha_dev*, align 8
  %5 = alloca %struct.crypto_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %4, align 8
  store %struct.crypto_platform_data* %1, %struct.crypto_platform_data** %5, align 8
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dma_cap_zero(i32 %7)
  %9 = load i32, i32* @DMA_SLAVE, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @dma_cap_set(i32 %9, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @atmel_sha_filter, align 4
  %14 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %15 = getelementptr inbounds %struct.crypto_platform_data, %struct.crypto_platform_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %19 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dma_request_slave_channel_compat(i32 %12, i32 %13, i32* %17, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %23 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  %25 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %26 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %2
  %31 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %32 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_warn(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %74

37:                                               ; preds = %2
  %38 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %39 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %40 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 6
  store i32 %38, i32* %42, align 8
  %43 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %44 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @SHA_REG_DIN(i32 0)
  %47 = add nsw i64 %45, %46
  %48 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %49 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 5
  store i64 %47, i64* %51, align 8
  %52 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %53 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %57 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %58 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  store i8* %56, i8** %60, align 8
  %61 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %62 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %66 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %67 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  store i8* %65, i8** %69, align 8
  %70 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %71 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i32 0, i32* %73, align 8
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %37, %30
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_request_slave_channel_compat(i32, i32, i32*, i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i64 @SHA_REG_DIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
