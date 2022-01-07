; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4403.c_afe4403_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4403.c_afe4403_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.afe4403_data = type { i32* }

@afe4403_channel_values = common dso_local global i32* null, align 8
@afe4403_channel_leds = common dso_local global i32* null, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @afe4403_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afe4403_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.afe4403_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.afe4403_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.afe4403_data* %17, %struct.afe4403_data** %12, align 8
  %18 = load i32*, i32** @afe4403_channel_values, align 8
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32*, i32** @afe4403_channel_leds, align 8
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %70 [
    i32 128, label %33
    i32 129, label %47
  ]

33:                                               ; preds = %5
  %34 = load i64, i64* %11, align 8
  switch i64 %34, label %46 [
    i64 131, label %35
  ]

35:                                               ; preds = %33
  %36 = load %struct.afe4403_data*, %struct.afe4403_data** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @afe4403_read(%struct.afe4403_data* %36, i32 %37, i32* %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %6, align 4
  br label %74

44:                                               ; preds = %35
  %45 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %45, i32* %6, align 4
  br label %74

46:                                               ; preds = %33
  br label %71

47:                                               ; preds = %5
  %48 = load i64, i64* %11, align 8
  switch i64 %48, label %69 [
    i64 131, label %49
    i64 130, label %65
  ]

49:                                               ; preds = %47
  %50 = load %struct.afe4403_data*, %struct.afe4403_data** %12, align 8
  %51 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @regmap_field_read(i32 %56, i32* %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %6, align 4
  br label %74

63:                                               ; preds = %49
  %64 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %64, i32* %6, align 4
  br label %74

65:                                               ; preds = %47
  %66 = load i32*, i32** %9, align 8
  store i32 0, i32* %66, align 4
  %67 = load i32*, i32** %10, align 8
  store i32 800000, i32* %67, align 4
  %68 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %68, i32* %6, align 4
  br label %74

69:                                               ; preds = %47
  br label %71

70:                                               ; preds = %5
  br label %71

71:                                               ; preds = %70, %69, %46
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %65, %63, %61, %44, %42
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.afe4403_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @afe4403_read(%struct.afe4403_data*, i32, i32*) #1

declare dso_local i32 @regmap_field_read(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
