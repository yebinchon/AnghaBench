; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.crypto_platform_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.at_dma_slave, %struct.at_dma_slave }
%struct.at_dma_slave = type { i32 }

@DMA_SLAVE = common dso_local global i32 0, align 4
@atmel_aes_filter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"no DMA channel available\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*, %struct.crypto_platform_data*)* @atmel_aes_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_dma_init(%struct.atmel_aes_dev* %0, %struct.crypto_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_aes_dev*, align 8
  %5 = alloca %struct.crypto_platform_data*, align 8
  %6 = alloca %struct.at_dma_slave*, align 8
  %7 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %4, align 8
  store %struct.crypto_platform_data* %1, %struct.crypto_platform_data** %5, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dma_cap_zero(i32 %8)
  %10 = load i32, i32* @DMA_SLAVE, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @dma_cap_set(i32 %10, i32 %11)
  %13 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %14 = getelementptr inbounds %struct.crypto_platform_data, %struct.crypto_platform_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store %struct.at_dma_slave* %16, %struct.at_dma_slave** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @atmel_aes_filter, align 4
  %19 = load %struct.at_dma_slave*, %struct.at_dma_slave** %6, align 8
  %20 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %21 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @dma_request_slave_channel_compat(i32 %17, i32 %18, %struct.at_dma_slave* %19, i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %25 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %28 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %61

33:                                               ; preds = %2
  %34 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %35 = getelementptr inbounds %struct.crypto_platform_data, %struct.crypto_platform_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store %struct.at_dma_slave* %37, %struct.at_dma_slave** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @atmel_aes_filter, align 4
  %40 = load %struct.at_dma_slave*, %struct.at_dma_slave** %6, align 8
  %41 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %42 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @dma_request_slave_channel_compat(i32 %38, i32 %39, %struct.at_dma_slave* %40, i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %46 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %49 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %33
  br label %55

54:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %68

55:                                               ; preds = %53
  %56 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %57 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @dma_release_channel(i8* %59)
  br label %61

61:                                               ; preds = %55, %32
  %62 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %63 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_warn(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %61, %54
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i8* @dma_request_slave_channel_compat(i32, i32, %struct.at_dma_slave*, i32, i8*) #1

declare dso_local i32 @dma_release_channel(i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
