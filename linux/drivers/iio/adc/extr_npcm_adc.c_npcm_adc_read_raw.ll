; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_npcm_adc.c_npcm_adc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_npcm_adc.c_npcm_adc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.npcm_adc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"NPCM ADC read failed\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@NPCM_INT_VREF_MV = common dso_local global i32 0, align 4
@NPCM_RESOLUTION_BITS = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @npcm_adc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_adc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.npcm_adc*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.npcm_adc* @iio_priv(%struct.iio_dev* %15)
  store %struct.npcm_adc* %16, %struct.npcm_adc** %14, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %68 [
    i64 130, label %18
    i64 128, label %41
    i64 129, label %62
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.npcm_adc*, %struct.npcm_adc** %14, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @npcm_adc_read(%struct.npcm_adc* %22, i32* %23, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %18
  %34 = load %struct.npcm_adc*, %struct.npcm_adc** %14, align 8
  %35 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %6, align 4
  br label %71

39:                                               ; preds = %18
  %40 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %40, i32* %6, align 4
  br label %71

41:                                               ; preds = %5
  %42 = load %struct.npcm_adc*, %struct.npcm_adc** %14, align 8
  %43 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @IS_ERR(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %41
  %48 = load %struct.npcm_adc*, %struct.npcm_adc** %14, align 8
  %49 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regulator_get_voltage(i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = sdiv i32 %52, 1000
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  br label %58

55:                                               ; preds = %41
  %56 = load i32, i32* @NPCM_INT_VREF_MV, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %47
  %59 = load i32, i32* @NPCM_RESOLUTION_BITS, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %61, i32* %6, align 4
  br label %71

62:                                               ; preds = %5
  %63 = load %struct.npcm_adc*, %struct.npcm_adc** %14, align 8
  %64 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %67, i32* %6, align 4
  br label %71

68:                                               ; preds = %5
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %62, %58, %39, %33
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.npcm_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @npcm_adc_read(%struct.npcm_adc*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
