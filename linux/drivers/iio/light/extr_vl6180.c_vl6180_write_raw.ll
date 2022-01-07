; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vl6180.c_vl6180_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vl6180.c_vl6180_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.vl6180_data = type { i32 }

@IIO_LIGHT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @vl6180_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vl6180_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.vl6180_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.vl6180_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.vl6180_data* %14, %struct.vl6180_data** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %35 [
    i64 128, label %16
    i64 129, label %21
  ]

16:                                               ; preds = %5
  %17 = load %struct.vl6180_data*, %struct.vl6180_data** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @vl6180_set_it(%struct.vl6180_data* %17, i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  br label %38

21:                                               ; preds = %5
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IIO_LIGHT, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %38

30:                                               ; preds = %21
  %31 = load %struct.vl6180_data*, %struct.vl6180_data** %12, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @vl6180_set_als_gain(%struct.vl6180_data* %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %30, %27, %16
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.vl6180_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @vl6180_set_it(%struct.vl6180_data*, i32, i32) #1

declare dso_local i32 @vl6180_set_als_gain(%struct.vl6180_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
