; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_tdes_dev = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i8*, i8*, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i8*, i8*, i64, i32 }
%struct.crypto_platform_data = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@DMA_SLAVE = common dso_local global i32 0, align 4
@atmel_tdes_filter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@TDES_IDATA1R = common dso_local global i64 0, align 8
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@TDES_ODATA1R = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"no DMA channel available\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_tdes_dev*, %struct.crypto_platform_data*)* @atmel_tdes_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_tdes_dma_init(%struct.atmel_tdes_dev* %0, %struct.crypto_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_tdes_dev*, align 8
  %5 = alloca %struct.crypto_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.atmel_tdes_dev* %0, %struct.atmel_tdes_dev** %4, align 8
  store %struct.crypto_platform_data* %1, %struct.crypto_platform_data** %5, align 8
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dma_cap_zero(i32 %7)
  %9 = load i32, i32* @DMA_SLAVE, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @dma_cap_set(i32 %9, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @atmel_tdes_filter, align 4
  %14 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %15 = getelementptr inbounds %struct.crypto_platform_data, %struct.crypto_platform_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %19 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @dma_request_slave_channel_compat(i32 %12, i32 %13, i32* %17, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %23 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %26 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %130

31:                                               ; preds = %2
  %32 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %33 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %34 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 6
  store i32 %32, i32* %36, align 8
  %37 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %38 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TDES_IDATA1R, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %43 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 5
  store i64 %41, i64* %45, align 8
  %46 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %47 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %51 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %52 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  store i8* %50, i8** %54, align 8
  %55 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %56 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %60 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %61 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  store i8* %59, i8** %63, align 8
  %64 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %65 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @atmel_tdes_filter, align 4
  %70 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %71 = getelementptr inbounds %struct.crypto_platform_data, %struct.crypto_platform_data* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %75 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @dma_request_slave_channel_compat(i32 %68, i32 %69, i32* %73, i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %79 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %82 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %31
  br label %124

87:                                               ; preds = %31
  %88 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %89 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %90 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 6
  store i32 %88, i32* %92, align 8
  %93 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %94 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TDES_ODATA1R, align 8
  %97 = add nsw i64 %95, %96
  %98 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %99 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 5
  store i64 %97, i64* %101, align 8
  %102 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %103 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %107 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %108 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 4
  store i8* %106, i8** %110, align 8
  %111 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %112 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  %115 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %116 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %117 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  store i8* %115, i8** %119, align 8
  %120 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %121 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  store i32 0, i32* %123, align 8
  store i32 0, i32* %3, align 4
  br label %137

124:                                              ; preds = %86
  %125 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %126 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @dma_release_channel(i8* %128)
  br label %130

130:                                              ; preds = %124, %30
  %131 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %132 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dev_warn(i32 %133, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* @ENODEV, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %130, %87
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i8* @dma_request_slave_channel_compat(i32, i32, i32*, i32, i8*) #1

declare dso_local i32 @dma_release_channel(i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
