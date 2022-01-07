; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_st_accel_core.c_st_accel_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_st_accel_core.c_st_accel_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @st_accel_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_accel_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  switch i64 %14, label %40 [
    i64 128, label %15
    i64 129, label %23
  ]

15:                                               ; preds = %5
  %16 = load i32, i32* %9, align 4
  %17 = mul nsw i32 %16, 1000000
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %13, align 4
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @st_sensors_set_fullscale_by_gain(%struct.iio_dev* %20, i32 %21)
  store i32 %22, i32* %12, align 4
  br label %43

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %45

29:                                               ; preds = %23
  %30 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %31 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @st_sensors_set_odr(%struct.iio_dev* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %6, align 4
  br label %45

40:                                               ; preds = %5
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %15
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %40, %29, %26
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @st_sensors_set_fullscale_by_gain(%struct.iio_dev*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @st_sensors_set_odr(%struct.iio_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
