; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adf4350_state = type { i64, i32*, %struct.regulator* }
%struct.regulator = type { i32 }

@ADF4350_REG2_POWER_DOWN_EN = common dso_local global i32 0, align 4
@ADF4350_REG2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adf4350_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf4350_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.adf4350_state*, align 8
  %5 = alloca %struct.regulator*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = call %struct.iio_dev* @spi_get_drvdata(%struct.spi_device* %6)
  store %struct.iio_dev* %7, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.adf4350_state* @iio_priv(%struct.iio_dev* %8)
  store %struct.adf4350_state* %9, %struct.adf4350_state** %4, align 8
  %10 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %11 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %10, i32 0, i32 2
  %12 = load %struct.regulator*, %struct.regulator** %11, align 8
  store %struct.regulator* %12, %struct.regulator** %5, align 8
  %13 = load i32, i32* @ADF4350_REG2_POWER_DOWN_EN, align 4
  %14 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %15 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @ADF4350_REG2, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %13
  store i32 %20, i32* %18, align 4
  %21 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %22 = call i32 @adf4350_sync_config(%struct.adf4350_state* %21)
  %23 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %24 = call i32 @iio_device_unregister(%struct.iio_dev* %23)
  %25 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %26 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %31 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @clk_disable_unprepare(i64 %32)
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.regulator*, %struct.regulator** %5, align 8
  %36 = call i32 @IS_ERR(%struct.regulator* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load %struct.regulator*, %struct.regulator** %5, align 8
  %40 = call i32 @regulator_disable(%struct.regulator* %39)
  br label %41

41:                                               ; preds = %38, %34
  ret i32 0
}

declare dso_local %struct.iio_dev* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local %struct.adf4350_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adf4350_sync_config(%struct.adf4350_state*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @regulator_disable(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
