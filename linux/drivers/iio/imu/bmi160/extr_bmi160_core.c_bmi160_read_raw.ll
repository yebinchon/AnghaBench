; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/bmi160/extr_bmi160_core.c_bmi160_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/bmi160/extr_bmi160_core.c_bmi160_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.bmi160_data = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @bmi160_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmi160_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bmi160_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.bmi160_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.bmi160_data* %15, %struct.bmi160_data** %13, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %67 [
    i64 130, label %17
    i64 128, label %33
    i64 129, label %50
  ]

17:                                               ; preds = %5
  %18 = load %struct.bmi160_data*, %struct.bmi160_data** %13, align 8
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @bmi160_get_data(%struct.bmi160_data* %18, i32 %21, i32 %24, i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %6, align 4
  br label %70

31:                                               ; preds = %17
  %32 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %32, i32* %6, align 4
  br label %70

33:                                               ; preds = %5
  %34 = load i32*, i32** %9, align 8
  store i32 0, i32* %34, align 4
  %35 = load %struct.bmi160_data*, %struct.bmi160_data** %13, align 8
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bmi160_to_sensor(i32 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @bmi160_get_scale(%struct.bmi160_data* %35, i32 %39, i32* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %12, align 4
  br label %48

46:                                               ; preds = %33
  %47 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %6, align 4
  br label %70

50:                                               ; preds = %5
  %51 = load %struct.bmi160_data*, %struct.bmi160_data** %13, align 8
  %52 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %53 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bmi160_to_sensor(i32 %54)
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @bmi160_get_odr(%struct.bmi160_data* %51, i32 %55, i32* %56, i32* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %12, align 4
  br label %65

63:                                               ; preds = %50
  %64 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %6, align 4
  br label %70

67:                                               ; preds = %5
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %65, %48, %31, %29
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.bmi160_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @bmi160_get_data(%struct.bmi160_data*, i32, i32, i32*) #1

declare dso_local i32 @bmi160_get_scale(%struct.bmi160_data*, i32, i32*) #1

declare dso_local i32 @bmi160_to_sensor(i32) #1

declare dso_local i32 @bmi160_get_odr(%struct.bmi160_data*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
