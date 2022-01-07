; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c___stm32_dfsdm_postenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c___stm32_dfsdm_postenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.stm32_dfsdm_adc = type { i64, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"Can't start DMA\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't start conversion\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @__stm32_dfsdm_postenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__stm32_dfsdm_postenable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.stm32_dfsdm_adc*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev* %6)
  store %struct.stm32_dfsdm_adc* %7, %struct.stm32_dfsdm_adc** %4, align 8
  %8 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %9 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %11 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %16 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @iio_hw_consumer_enable(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %74

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %26 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @stm32_dfsdm_start_dfsdm(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %62

32:                                               ; preds = %24
  %33 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %34 = call i32 @stm32_dfsdm_adc_dma_start(%struct.iio_dev* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %57

41:                                               ; preds = %32
  %42 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %43 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @stm32_dfsdm_start_conv(%struct.stm32_dfsdm_adc* %42, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %54

53:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %74

54:                                               ; preds = %49
  %55 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %56 = call i32 @stm32_dfsdm_adc_dma_stop(%struct.iio_dev* %55)
  br label %57

57:                                               ; preds = %54, %37
  %58 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %59 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @stm32_dfsdm_stop_dfsdm(i32 %60)
  br label %62

62:                                               ; preds = %57, %31
  %63 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %64 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %69 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @iio_hw_consumer_disable(i64 %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %53, %21
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_hw_consumer_enable(i64) #1

declare dso_local i32 @stm32_dfsdm_start_dfsdm(i32) #1

declare dso_local i32 @stm32_dfsdm_adc_dma_start(%struct.iio_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @stm32_dfsdm_start_conv(%struct.stm32_dfsdm_adc*, i32) #1

declare dso_local i32 @stm32_dfsdm_adc_dma_stop(%struct.iio_dev*) #1

declare dso_local i32 @stm32_dfsdm_stop_dfsdm(i32) #1

declare dso_local i32 @iio_hw_consumer_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
