; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.imx7d_adc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Can't enable adc reference top voltage, err = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not prepare or enable clock.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @imx7d_adc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7d_adc_enable(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.imx7d_adc*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %7)
  store %struct.iio_dev* %8, %struct.iio_dev** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.imx7d_adc* @iio_priv(%struct.iio_dev* %9)
  store %struct.imx7d_adc* %10, %struct.imx7d_adc** %5, align 8
  %11 = load %struct.imx7d_adc*, %struct.imx7d_adc** %5, align 8
  %12 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @regulator_enable(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.imx7d_adc*, %struct.imx7d_adc** %5, align 8
  %19 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %44

24:                                               ; preds = %1
  %25 = load %struct.imx7d_adc*, %struct.imx7d_adc** %5, align 8
  %26 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_prepare_enable(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.imx7d_adc*, %struct.imx7d_adc** %5, align 8
  %33 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.imx7d_adc*, %struct.imx7d_adc** %5, align 8
  %37 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regulator_disable(i32 %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %44

41:                                               ; preds = %24
  %42 = load %struct.imx7d_adc*, %struct.imx7d_adc** %5, align 8
  %43 = call i32 @imx7d_adc_hw_init(%struct.imx7d_adc* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %31, %17
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.imx7d_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @imx7d_adc_hw_init(%struct.imx7d_adc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
