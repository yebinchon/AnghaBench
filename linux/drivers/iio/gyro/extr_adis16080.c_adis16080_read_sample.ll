; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16080.c_adis16080_read_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16080.c_adis16080_read_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adis16080_state = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i32*, i32* }

@ADIS16080_DIN_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32*)* @adis16080_read_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16080_read_sample(%struct.iio_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.adis16080_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.adis16080_state* @iio_priv(%struct.iio_dev* %10)
  store %struct.adis16080_state* %11, %struct.adis16080_state** %7, align 8
  %12 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  store i32 2, i32* %13, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 3
  %17 = load %struct.adis16080_state*, %struct.adis16080_state** %7, align 8
  %18 = getelementptr inbounds %struct.adis16080_state, %struct.adis16080_state* %17, i32 0, i32 0
  store i32* %18, i32** %16, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i64 1
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 0
  store i32 2, i32* %20, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 2
  %23 = load %struct.adis16080_state*, %struct.adis16080_state** %7, align 8
  %24 = getelementptr inbounds %struct.adis16080_state, %struct.adis16080_state* %23, i32 0, i32 0
  store i32* %24, i32** %22, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ADIS16080_DIN_WRITE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @cpu_to_be16(i32 %28)
  %30 = load %struct.adis16080_state*, %struct.adis16080_state** %7, align 8
  %31 = getelementptr inbounds %struct.adis16080_state, %struct.adis16080_state* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.adis16080_state*, %struct.adis16080_state** %7, align 8
  %33 = getelementptr inbounds %struct.adis16080_state, %struct.adis16080_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %36 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %37 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %36)
  %38 = call i32 @spi_sync_transfer(i32 %34, %struct.spi_transfer* %35, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %3
  %42 = load %struct.adis16080_state*, %struct.adis16080_state** %7, align 8
  %43 = getelementptr inbounds %struct.adis16080_state, %struct.adis16080_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be16_to_cpu(i32 %44)
  %46 = call i32 @sign_extend32(i32 %45, i32 11)
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %3
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local %struct.adis16080_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
