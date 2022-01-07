; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.st_lsm6dsx_sensor = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @st_lsm6dsx_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.st_lsm6dsx_sensor* @iio_priv(%struct.iio_dev* %15)
  store %struct.st_lsm6dsx_sensor* %16, %struct.st_lsm6dsx_sensor** %12, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %6, align 4
  br label %47

23:                                               ; preds = %5
  %24 = load i64, i64* %11, align 8
  switch i64 %24, label %40 [
    i64 128, label %25
    i64 129, label %29
  ]

25:                                               ; preds = %23
  %26 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %12, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @st_lsm6dsx_set_full_scale(%struct.st_lsm6dsx_sensor* %26, i32 %27)
  store i32 %28, i32* %13, align 4
  br label %43

29:                                               ; preds = %23
  %30 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @st_lsm6dsx_check_odr(%struct.st_lsm6dsx_sensor* %30, i32 %31, i32* %14)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %12, align 8
  %38 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %29
  br label %43

40:                                               ; preds = %23
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %40, %39, %25
  %44 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %45 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %44)
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %21
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.st_lsm6dsx_sensor* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @st_lsm6dsx_set_full_scale(%struct.st_lsm6dsx_sensor*, i32) #1

declare dso_local i32 @st_lsm6dsx_check_odr(%struct.st_lsm6dsx_sensor*, i32, i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
