; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551.c_mma9551_read_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551.c_mma9551_read_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mma9551_data = type { i32, i32 }

@MMA9551_APPID_TILT = common dso_local global i32 0, align 4
@MMA9551_TILT_CFG_REG = common dso_local global i32 0, align 4
@MMA9551_TILT_ANG_THRESH_MASK = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*)* @mma9551_read_event_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9551_read_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.mma9551_data*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %20 = call %struct.mma9551_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.mma9551_data* %20, %struct.mma9551_data** %16, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %48 [
    i32 128, label %24
  ]

24:                                               ; preds = %7
  %25 = load %struct.mma9551_data*, %struct.mma9551_data** %16, align 8
  %26 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.mma9551_data*, %struct.mma9551_data** %16, align 8
  %29 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MMA9551_APPID_TILT, align 4
  %32 = load i32, i32* @MMA9551_TILT_CFG_REG, align 4
  %33 = call i32 @mma9551_read_config_byte(i32 %30, i32 %31, i32 %32, i32* %18)
  store i32 %33, i32* %17, align 4
  %34 = load %struct.mma9551_data*, %struct.mma9551_data** %16, align 8
  %35 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %17, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %17, align 4
  store i32 %40, i32* %8, align 4
  br label %51

41:                                               ; preds = %24
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* @MMA9551_TILT_ANG_THRESH_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32*, i32** %14, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %15, align 8
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %47, i32* %8, align 4
  br label %51

48:                                               ; preds = %7
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %41, %39
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local %struct.mma9551_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mma9551_read_config_byte(i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
