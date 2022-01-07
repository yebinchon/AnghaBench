; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adxrs450.c_adxrs450_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adxrs450.c_adxrs450_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@ADXRS450_TEMP1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@ADXRS450_QUAD1 = common dso_local global i32 0, align 4
@ADXRS450_DNC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adxrs450_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxrs450_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  switch i64 %14, label %84 [
    i64 130, label %15
    i64 129, label %46
    i64 131, label %61
    i64 132, label %72
  ]

15:                                               ; preds = %5
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %42 [
    i32 133, label %19
    i32 128, label %29
  ]

19:                                               ; preds = %15
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = call i32 @adxrs450_spi_sensor_data(%struct.iio_dev* %20, i32* %13)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %45

25:                                               ; preds = %19
  %26 = load i32, i32* %13, align 4
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %28, i32* %12, align 4
  br label %45

29:                                               ; preds = %15
  %30 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %31 = load i32, i32* @ADXRS450_TEMP1, align 4
  %32 = call i32 @adxrs450_spi_read_reg_16(%struct.iio_dev* %30, i32 %31, i32* %13)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %45

36:                                               ; preds = %29
  %37 = load i32, i32* %13, align 4
  %38 = ashr i32 %37, 6
  %39 = add nsw i32 %38, 225
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %41, i32* %12, align 4
  br label %45

42:                                               ; preds = %15
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %42, %36, %35, %25, %24
  br label %87

46:                                               ; preds = %5
  %47 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %48 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %58 [
    i32 133, label %50
    i32 128, label %54
  ]

50:                                               ; preds = %46
  %51 = load i32*, i32** %9, align 8
  store i32 0, i32* %51, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 218166, i32* %52, align 4
  %53 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %53, i32* %6, align 4
  br label %89

54:                                               ; preds = %46
  %55 = load i32*, i32** %9, align 8
  store i32 200, i32* %55, align 4
  %56 = load i32*, i32** %10, align 8
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %57, i32* %6, align 4
  br label %89

58:                                               ; preds = %46
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %89

61:                                               ; preds = %5
  %62 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %63 = load i32, i32* @ADXRS450_QUAD1, align 4
  %64 = call i32 @adxrs450_spi_read_reg_16(%struct.iio_dev* %62, i32 %63, i32* %13)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %87

68:                                               ; preds = %61
  %69 = load i32, i32* %13, align 4
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %71, i32* %12, align 4
  br label %87

72:                                               ; preds = %5
  %73 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %74 = load i32, i32* @ADXRS450_DNC1, align 4
  %75 = call i32 @adxrs450_spi_read_reg_16(%struct.iio_dev* %73, i32 %74, i32* %13)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %87

79:                                               ; preds = %72
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @sign_extend32(i32 %80, i32 9)
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %83, i32* %12, align 4
  br label %87

84:                                               ; preds = %5
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %84, %79, %78, %68, %67, %45
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %58, %54, %50
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @adxrs450_spi_sensor_data(%struct.iio_dev*, i32*) #1

declare dso_local i32 @adxrs450_spi_read_reg_16(%struct.iio_dev*, i32, i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
