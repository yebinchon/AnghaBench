; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_adjd_s311.c_adjd_s311_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_adjd_s311.c_adjd_s311_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.adjd_s311_data = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@ADJD_S311_CAP_MASK = common dso_local global i32 0, align 4
@ADJD_S311_INT_MASK = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adjd_s311_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjd_s311_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adjd_s311_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.adjd_s311_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.adjd_s311_data* %15, %struct.adjd_s311_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %70 [
    i64 128, label %17
    i64 130, label %31
    i64 129, label %50
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ADJD_S311_DATA_REG(i32 %21)
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @adjd_s311_read_data(%struct.iio_dev* %18, i32 %22, i32* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %73

29:                                               ; preds = %17
  %30 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %30, i32* %6, align 4
  br label %73

31:                                               ; preds = %5
  %32 = load %struct.adjd_s311_data*, %struct.adjd_s311_data** %12, align 8
  %33 = getelementptr inbounds %struct.adjd_s311_data, %struct.adjd_s311_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %36 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ADJD_S311_CAP_REG(i32 %37)
  %39 = call i32 @i2c_smbus_read_byte_data(i32 %34, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %6, align 4
  br label %73

44:                                               ; preds = %31
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @ADJD_S311_CAP_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %49, i32* %6, align 4
  br label %73

50:                                               ; preds = %5
  %51 = load %struct.adjd_s311_data*, %struct.adjd_s311_data** %12, align 8
  %52 = getelementptr inbounds %struct.adjd_s311_data, %struct.adjd_s311_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ADJD_S311_INT_REG(i32 %56)
  %58 = call i32 @i2c_smbus_read_word_data(i32 %53, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %6, align 4
  br label %73

63:                                               ; preds = %50
  %64 = load i32*, i32** %9, align 8
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @ADJD_S311_INT_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %69, i32* %6, align 4
  br label %73

70:                                               ; preds = %5
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %70, %63, %61, %44, %42, %29, %27
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.adjd_s311_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adjd_s311_read_data(%struct.iio_dev*, i32, i32*) #1

declare dso_local i32 @ADJD_S311_DATA_REG(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @ADJD_S311_CAP_REG(i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(i32, i32) #1

declare dso_local i32 @ADJD_S311_INT_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
