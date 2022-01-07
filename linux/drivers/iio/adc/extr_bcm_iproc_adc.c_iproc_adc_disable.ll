; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_bcm_iproc_adc.c_iproc_adc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_bcm_iproc_adc.c_iproc_adc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iproc_adc_priv = type { i32 }

@IPROC_REGCTL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to read IPROC_REGCTL2 %d\0A\00", align 1
@IPROC_ADC_CONTROLLER_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to write IPROC_REGCTL2 %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*)* @iproc_adc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iproc_adc_disable(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.iproc_adc_priv*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %7 = call %struct.iproc_adc_priv* @iio_priv(%struct.iio_dev* %6)
  store %struct.iproc_adc_priv* %7, %struct.iproc_adc_priv** %5, align 8
  %8 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %5, align 8
  %9 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IPROC_REGCTL2, align 4
  %12 = call i32 @regmap_read(i32 %10, i32 %11, i32* %3)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %38

20:                                               ; preds = %1
  %21 = load i32, i32* @IPROC_ADC_CONTROLLER_EN, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %5, align 8
  %26 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IPROC_REGCTL2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @regmap_write(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %15, %33, %20
  ret void
}

declare dso_local %struct.iproc_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
