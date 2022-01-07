; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7768-1.c_ad7768_scan_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7768-1.c_ad7768_scan_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad7768_state = type { i32 }

@AD7768_ONE_SHOT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@AD7768_REG_ADC_DATA = common dso_local global i32 0, align 4
@AD7768_CONTINUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ad7768_scan_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7768_scan_direct(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ad7768_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.ad7768_state* @iio_priv(%struct.iio_dev* %7)
  store %struct.ad7768_state* %8, %struct.ad7768_state** %4, align 8
  %9 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %10 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %9, i32 0, i32 0
  %11 = call i32 @reinit_completion(i32* %10)
  %12 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %13 = load i32, i32* @AD7768_ONE_SHOT, align 4
  %14 = call i32 @ad7768_set_mode(%struct.ad7768_state* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %21 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %20, i32 0, i32 0
  %22 = call i32 @msecs_to_jiffies(i32 1000)
  %23 = call i32 @wait_for_completion_timeout(i32* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %47

29:                                               ; preds = %19
  %30 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %31 = load i32, i32* @AD7768_REG_ADC_DATA, align 4
  %32 = call i32 @ad7768_spi_reg_read(%struct.ad7768_state* %30, i32 %31, i32 3)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %47

37:                                               ; preds = %29
  %38 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %39 = load i32, i32* @AD7768_CONTINUOUS, align 4
  %40 = call i32 @ad7768_set_mode(%struct.ad7768_state* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %43, %35, %26, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.ad7768_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @ad7768_set_mode(%struct.ad7768_state*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ad7768_spi_reg_read(%struct.ad7768_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
