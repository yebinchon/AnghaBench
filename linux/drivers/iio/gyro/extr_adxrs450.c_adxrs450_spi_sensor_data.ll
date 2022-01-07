; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adxrs450.c_adxrs450_spi_sensor_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adxrs450.c_adxrs450_spi_sensor_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adxrs450_state = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i32, i32, i32, i32*, i32* }

@ADXRS450_SENSOR_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Problem while reading sensor data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32*)* @adxrs450_spi_sensor_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxrs450_spi_sensor_data(%struct.iio_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.adxrs450_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.adxrs450_state* @iio_priv(%struct.iio_dev* %8)
  store %struct.adxrs450_state* %9, %struct.adxrs450_state** %5, align 8
  %10 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %7, i64 0, i64 0
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 0
  store i32 8, i32* %11, align 16
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 1
  store i32 4, i32* %12, align 4
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 2
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 3
  store i32* null, i32** %14, align 16
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 4
  %16 = load %struct.adxrs450_state*, %struct.adxrs450_state** %5, align 8
  %17 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %16, i32 0, i32 3
  store i32* %17, i32** %15, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i64 1
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 0
  store i32 8, i32* %19, align 16
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 1
  store i32 4, i32* %20, align 4
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 3
  %23 = load %struct.adxrs450_state*, %struct.adxrs450_state** %5, align 8
  %24 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %23, i32 0, i32 1
  store i32* %24, i32** %22, align 16
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 4
  store i32* null, i32** %25, align 8
  %26 = load %struct.adxrs450_state*, %struct.adxrs450_state** %5, align 8
  %27 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* @ADXRS450_SENSOR_DATA, align 4
  %30 = call i32 @cpu_to_be32(i32 %29)
  %31 = load %struct.adxrs450_state*, %struct.adxrs450_state** %5, align 8
  %32 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.adxrs450_state*, %struct.adxrs450_state** %5, align 8
  %34 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %7, i64 0, i64 0
  %37 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %7, i64 0, i64 0
  %38 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %37)
  %39 = call i32 @spi_sync_transfer(%struct.TYPE_2__* %35, %struct.spi_transfer* %36, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = load %struct.adxrs450_state*, %struct.adxrs450_state** %5, align 8
  %44 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %56

48:                                               ; preds = %2
  %49 = load %struct.adxrs450_state*, %struct.adxrs450_state** %5, align 8
  %50 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be32_to_cpu(i32 %51)
  %53 = ashr i32 %52, 10
  %54 = and i32 %53, 65535
  %55 = load i32*, i32** %4, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %48, %42
  %57 = load %struct.adxrs450_state*, %struct.adxrs450_state** %5, align 8
  %58 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.adxrs450_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spi_sync_transfer(%struct.TYPE_2__*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
