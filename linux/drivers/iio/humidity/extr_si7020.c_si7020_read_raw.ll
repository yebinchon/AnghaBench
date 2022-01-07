; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_si7020.c_si7020_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_si7020.c_si7020_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.i2c_client = type { i32 }

@IIO_TEMP = common dso_local global i32 0, align 4
@SI7020CMD_TEMP_HOLD = common dso_local global i32 0, align 4
@SI7020CMD_RH_HOLD = common dso_local global i32 0, align 4
@IIO_HUMIDITYRELATIVE = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @si7020_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si7020_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.i2c_client**, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.i2c_client** @iio_priv(%struct.iio_dev* %14)
  store %struct.i2c_client** %15, %struct.i2c_client*** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %77 [
    i64 129, label %17
    i64 128, label %52
    i64 130, label %65
  ]

17:                                               ; preds = %5
  %18 = load %struct.i2c_client**, %struct.i2c_client*** %12, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IIO_TEMP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @SI7020CMD_TEMP_HOLD, align 4
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @SI7020CMD_RH_HOLD, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %19, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %81

36:                                               ; preds = %29
  %37 = load i32, i32* %13, align 4
  %38 = ashr i32 %37, 2
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %41 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IIO_HUMIDITYRELATIVE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clamp_val(i32 %47, i32 786, i32 13893)
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %36
  %51 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %51, i32* %6, align 4
  br label %81

52:                                               ; preds = %5
  %53 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %54 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IIO_TEMP, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32*, i32** %9, align 8
  store i32 175720, i32* %59, align 4
  br label %62

60:                                               ; preds = %52
  %61 = load i32*, i32** %9, align 8
  store i32 125000, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = load i32*, i32** %10, align 8
  store i32 16384, i32* %63, align 4
  %64 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %64, i32* %6, align 4
  br label %81

65:                                               ; preds = %5
  %66 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %67 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IIO_TEMP, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32*, i32** %9, align 8
  store i32 -4368, i32* %72, align 4
  br label %75

73:                                               ; preds = %65
  %74 = load i32*, i32** %9, align 8
  store i32 -786, i32* %74, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %76, i32* %6, align 4
  br label %81

77:                                               ; preds = %5
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %75, %62, %50, %34
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.i2c_client** @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
