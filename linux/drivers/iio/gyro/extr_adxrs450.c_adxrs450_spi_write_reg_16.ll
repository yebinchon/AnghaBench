; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adxrs450.c_adxrs450_spi_write_reg_16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adxrs450.c_adxrs450_spi_write_reg_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adxrs450_state = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ADXRS450_WRITE_DATA = common dso_local global i32 0, align 4
@ADXRS450_P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"problem while writing 16 bit register 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @adxrs450_spi_write_reg_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxrs450_spi_write_reg_16(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.adxrs450_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.adxrs450_state* @iio_priv(%struct.iio_dev* %10)
  store %struct.adxrs450_state* %11, %struct.adxrs450_state** %7, align 8
  %12 = load %struct.adxrs450_state*, %struct.adxrs450_state** %7, align 8
  %13 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* @ADXRS450_WRITE_DATA, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 17
  %18 = or i32 %15, %17
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %19, 1
  %21 = or i32 %18, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @hweight32(i32 %22)
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ADXRS450_P, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %26, %3
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @cpu_to_be32(i32 %31)
  %33 = load %struct.adxrs450_state*, %struct.adxrs450_state** %7, align 8
  %34 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.adxrs450_state*, %struct.adxrs450_state** %7, align 8
  %36 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.adxrs450_state*, %struct.adxrs450_state** %7, align 8
  %39 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %38, i32 0, i32 2
  %40 = call i32 @spi_write(%struct.TYPE_2__* %37, i32* %39, i32 4)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %30
  %44 = load %struct.adxrs450_state*, %struct.adxrs450_state** %7, align 8
  %45 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %43, %30
  %51 = call i32 @usleep_range(i32 100, i32 1000)
  %52 = load %struct.adxrs450_state*, %struct.adxrs450_state** %7, align 8
  %53 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local %struct.adxrs450_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spi_write(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
