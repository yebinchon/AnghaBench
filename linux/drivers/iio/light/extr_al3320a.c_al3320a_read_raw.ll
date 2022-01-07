; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_al3320a.c_al3320a_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_al3320a.c_al3320a_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.al3320a_data = type { i32 }

@AL3320A_REG_DATA_LOW = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@AL3320A_REG_CONFIG_RANGE = common dso_local global i32 0, align 4
@AL3320A_GAIN_MASK = common dso_local global i32 0, align 4
@AL3320A_GAIN_SHIFT = common dso_local global i32 0, align 4
@al3320a_scales = common dso_local global i32** null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @al3320a_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al3320a_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.al3320a_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.al3320a_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.al3320a_data* %15, %struct.al3320a_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %64 [
    i64 129, label %17
    i64 128, label %31
  ]

17:                                               ; preds = %5
  %18 = load %struct.al3320a_data*, %struct.al3320a_data** %12, align 8
  %19 = getelementptr inbounds %struct.al3320a_data, %struct.al3320a_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AL3320A_REG_DATA_LOW, align 4
  %22 = call i32 @i2c_smbus_read_word_data(i32 %20, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %6, align 4
  br label %67

27:                                               ; preds = %17
  %28 = load i32, i32* %13, align 4
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %30, i32* %6, align 4
  br label %67

31:                                               ; preds = %5
  %32 = load %struct.al3320a_data*, %struct.al3320a_data** %12, align 8
  %33 = getelementptr inbounds %struct.al3320a_data, %struct.al3320a_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AL3320A_REG_CONFIG_RANGE, align 4
  %36 = call i32 @i2c_smbus_read_byte_data(i32 %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %67

41:                                               ; preds = %31
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @AL3320A_GAIN_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @AL3320A_GAIN_SHIFT, align 4
  %46 = ashr i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32**, i32*** @al3320a_scales, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32**, i32*** @al3320a_scales, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %63, i32* %6, align 4
  br label %67

64:                                               ; preds = %5
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %41, %39, %27, %25
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.al3320a_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_word_data(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
