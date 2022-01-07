; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_audio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_audio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, %struct.iio_chan_spec*, i32 }
%struct.iio_chan_spec = type { i64, i32, i64 }
%struct.stm32_dfsdm_adc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.stm32_dfsdm_channel* }
%struct.stm32_dfsdm_channel = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Channels init failed\0A\00", align 1
@IIO_CHAN_INFO_SAMP_FREQ = common dso_local global i32 0, align 4
@DFSDM_CHANNEL_SPI_CLOCK_EXTERNAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @stm32_dfsdm_audio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dfsdm_audio_init(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.iio_chan_spec*, align 8
  %5 = alloca %struct.stm32_dfsdm_adc*, align 8
  %6 = alloca %struct.stm32_dfsdm_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev* %8)
  store %struct.stm32_dfsdm_adc* %9, %struct.stm32_dfsdm_adc** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %11 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %10, i32 0, i32 2
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.iio_chan_spec* @devm_kzalloc(i32* %11, i32 24, i32 %12)
  store %struct.iio_chan_spec* %13, %struct.iio_chan_spec** %4, align 8
  %14 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %15 = icmp ne %struct.iio_chan_spec* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %67

19:                                               ; preds = %1
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %24 = call i32 @stm32_dfsdm_adc_chan_init_one(%struct.iio_dev* %22, %struct.iio_chan_spec* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 2
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %67

32:                                               ; preds = %19
  %33 = load i32, i32* @IIO_CHAN_INFO_SAMP_FREQ, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %36 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %38 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.stm32_dfsdm_channel*, %struct.stm32_dfsdm_channel** %40, align 8
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %43 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.stm32_dfsdm_channel, %struct.stm32_dfsdm_channel* %41, i64 %44
  store %struct.stm32_dfsdm_channel* %45, %struct.stm32_dfsdm_channel** %6, align 8
  %46 = load %struct.stm32_dfsdm_channel*, %struct.stm32_dfsdm_channel** %6, align 8
  %47 = getelementptr inbounds %struct.stm32_dfsdm_channel, %struct.stm32_dfsdm_channel* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DFSDM_CHANNEL_SPI_CLOCK_EXTERNAL, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %32
  %52 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %53 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %58 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %51, %32
  %60 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %63 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 1
  store %struct.iio_chan_spec* %62, %struct.iio_chan_spec** %64, align 8
  %65 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %66 = call i32 @stm32_dfsdm_dma_request(%struct.iio_dev* %65)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %59, %27, %16
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_chan_spec* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @stm32_dfsdm_adc_chan_init_one(%struct.iio_dev*, %struct.iio_chan_spec*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @stm32_dfsdm_dma_request(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
