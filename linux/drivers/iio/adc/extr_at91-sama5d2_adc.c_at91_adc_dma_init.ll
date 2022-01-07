; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.at91_adc_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i64, i32, i32 }

@AT91_HWFIFO_MAX_SIZE = common dso_local global i32 0, align 4
@AT91_BUFFER_MAX_CONVERSION_BYTES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"can't get DMA channel\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"can't allocate coherent DMA area\0A\00", align 1
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@AT91_SAMA5D2_LCDR = common dso_local global i64 0, align 8
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"can't configure DMA slave\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"using %s for rx DMA transfers\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"continuing without DMA support\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @at91_adc_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_adc_dma_init(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.at91_adc_state*, align 8
  %5 = alloca %struct.dma_slave_config, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.iio_dev* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.iio_dev* %8, %struct.iio_dev** %3, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call %struct.at91_adc_state* @iio_priv(%struct.iio_dev* %9)
  store %struct.at91_adc_state* %10, %struct.at91_adc_state** %4, align 8
  %11 = bitcast %struct.dma_slave_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = load i32, i32* @AT91_HWFIFO_MAX_SIZE, align 4
  %13 = load i32, i32* @AT91_BUFFER_MAX_CONVERSION_BYTES, align 4
  %14 = mul nsw i32 %12, %13
  %15 = mul nsw i32 %14, 2
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = call i32 @DIV_ROUND_UP(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %19 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %136

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call %struct.TYPE_9__* @dma_request_slave_channel(i32* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %29 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %30, align 8
  %31 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %32 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = icmp ne %struct.TYPE_9__* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %24
  %37 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_info(i32* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %132

40:                                               ; preds = %24
  %41 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %42 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = mul i32 %49, %50
  %52 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %53 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @dma_alloc_coherent(i32 %48, i32 %51, i32* %54, i32 %55)
  %57 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %58 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %61 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %40
  %66 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 (i32*, i8*, ...) @dev_info(i32* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %123

69:                                               ; preds = %40
  %70 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %71 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 4
  store i32 %70, i32* %71, align 8
  %72 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %73 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AT91_SAMA5D2_LCDR, align 8
  %77 = add nsw i64 %75, %76
  %78 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 3
  store i64 %77, i64* %78, align 8
  %79 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  %80 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 2
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %84 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = call i64 @dmaengine_slave_config(%struct.TYPE_9__* %86, %struct.dma_slave_config* %5)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %69
  %90 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 (i32*, i8*, ...) @dev_info(i32* %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %102

93:                                               ; preds = %69
  %94 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %97 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = call i32 @dma_chan_name(%struct.TYPE_9__* %99)
  %101 = call i32 (i32*, i8*, ...) @dev_info(i32* %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  br label %136

102:                                              ; preds = %89
  %103 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %104 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = mul i32 %111, %112
  %114 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %115 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %119 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @dma_free_coherent(i32 %110, i32 %113, i32 %117, i32 %121)
  br label %123

123:                                              ; preds = %102, %65
  %124 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %125 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = call i32 @dma_release_channel(%struct.TYPE_9__* %127)
  %129 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %130 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %131, align 8
  br label %132

132:                                              ; preds = %123, %36
  %133 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 (i32*, i8*, ...) @dev_info(i32* %134, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %136

136:                                              ; preds = %132, %93, %23
  ret void
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.at91_adc_state* @iio_priv(%struct.iio_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.TYPE_9__* @dma_request_slave_channel(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i64 @dmaengine_slave_config(%struct.TYPE_9__*, %struct.dma_slave_config*) #1

declare dso_local i32 @dma_chan_name(%struct.TYPE_9__*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @dma_release_channel(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
