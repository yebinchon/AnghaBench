; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_max5432.c_max5432_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_max5432.c_max5432_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.max5432_data = type { i32 }

@IIO_CHAN_INFO_RAW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX5432_MAX_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @max5432_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max5432_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.max5432_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.max5432_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.max5432_data* %15, %struct.max5432_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @IIO_CHAN_INFO_RAW, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %49

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MAX5432_MAX_POS, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %49

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %49

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 %39, 3
  store i32 %40, i32* %13, align 4
  %41 = load %struct.max5432_data*, %struct.max5432_data** %12, align 8
  %42 = getelementptr inbounds %struct.max5432_data, %struct.max5432_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %45 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @i2c_smbus_write_byte_data(i32 %43, i32 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %38, %35, %29, %19
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.max5432_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
