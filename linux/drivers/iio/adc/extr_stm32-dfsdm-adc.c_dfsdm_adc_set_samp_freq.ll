; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_dfsdm_adc_set_samp_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_dfsdm_adc_set_samp_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.stm32_dfsdm_adc = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Rate not accurate. requested (%u), actual (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @dfsdm_adc_set_samp_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfsdm_adc_set_samp_freq(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stm32_dfsdm_adc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev* %11)
  store %struct.stm32_dfsdm_adc* %12, %struct.stm32_dfsdm_adc** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @DIV_ROUND_CLOSEST(i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = urem i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %22 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = udiv i32 %24, %25
  %27 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %20, %3
  %29 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @stm32_dfsdm_compute_all_osrs(%struct.iio_dev* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %45

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = udiv i32 %37, %38
  %40 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %41 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %8, align 8
  %44 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %36, %34
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @stm32_dfsdm_compute_all_osrs(%struct.iio_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
