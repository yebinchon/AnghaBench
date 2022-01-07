; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_lm3533_als_get_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_lm3533_als_get_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.lm3533_als = type { i32 }

@LM3533_REG_ALS_READ_ADC_AVERAGE = common dso_local global i32 0, align 4
@LM3533_REG_ALS_READ_ADC_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to read adc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32*)* @lm3533_als_get_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3533_als_get_adc(%struct.iio_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.lm3533_als*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.lm3533_als* @iio_priv(%struct.iio_dev* %12)
  store %struct.lm3533_als* %13, %struct.lm3533_als** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @LM3533_REG_ALS_READ_ADC_AVERAGE, align 4
  store i32 %17, i32* %9, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @LM3533_REG_ALS_READ_ADC_RAW, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.lm3533_als*, %struct.lm3533_als** %8, align 8
  %22 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @lm3533_read(i32 %23, i32 %24, i32* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %30 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %20
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.lm3533_als* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @lm3533_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
