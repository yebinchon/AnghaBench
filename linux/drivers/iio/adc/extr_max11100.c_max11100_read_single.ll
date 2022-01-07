; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max11100.c_max11100_read_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max11100.c_max11100_read_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.max11100_state = type { i32*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"SPI transfer failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid value: buffer[0] != 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32*)* @max11100_read_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max11100_read_single(%struct.iio_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.max11100_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %9 = call %struct.max11100_state* @iio_priv(%struct.iio_dev* %8)
  store %struct.max11100_state* %9, %struct.max11100_state** %7, align 8
  %10 = load %struct.max11100_state*, %struct.max11100_state** %7, align 8
  %11 = getelementptr inbounds %struct.max11100_state, %struct.max11100_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.max11100_state*, %struct.max11100_state** %7, align 8
  %14 = getelementptr inbounds %struct.max11100_state, %struct.max11100_state* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @spi_read(i32 %12, i32* %15, i32 8)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %2
  %25 = load %struct.max11100_state*, %struct.max11100_state** %7, align 8
  %26 = getelementptr inbounds %struct.max11100_state, %struct.max11100_state* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %51

37:                                               ; preds = %24
  %38 = load %struct.max11100_state*, %struct.max11100_state** %7, align 8
  %39 = getelementptr inbounds %struct.max11100_state, %struct.max11100_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = load %struct.max11100_state*, %struct.max11100_state** %7, align 8
  %45 = getelementptr inbounds %struct.max11100_state, %struct.max11100_state* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %43, %48
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %37, %31, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.max11100_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_read(i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
