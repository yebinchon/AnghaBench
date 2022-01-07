; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_cros_ec_accel_legacy.c_cros_ec_accel_legacy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_cros_ec_accel_legacy.c_cros_ec_accel_legacy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.cros_ec_sensors_core_state = type { i32 (%struct.iio_dev*, i32, i32*)*, i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@MOTIONSENSE_TYPE_ACCEL = common dso_local global i32 0, align 4
@ACCEL_LEGACY_NSCALE = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @cros_ec_accel_legacy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_accel_legacy_read(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cros_ec_sensors_core_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.cros_ec_sensors_core_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.cros_ec_sensors_core_state* %16, %struct.cros_ec_sensors_core_state** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %11, align 8
  %21 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i64, i64* %10, align 8
  switch i64 %23, label %54 [
    i64 129, label %24
    i64 128, label %39
    i64 130, label %51
  ]

24:                                               ; preds = %5
  %25 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %11, align 8
  %26 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %25, i32 0, i32 0
  %27 = load i32 (%struct.iio_dev*, i32, i32*)*, i32 (%struct.iio_dev*, i32, i32*)** %26, align 8
  %28 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %29 = load i32, i32* %14, align 4
  %30 = shl i32 1, %29
  %31 = call i32 %27(%struct.iio_dev* %28, i32 %30, i32* %12)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %61

35:                                               ; preds = %24
  %36 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  br label %61

39:                                               ; preds = %5
  %40 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %11, align 8
  %41 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MOTIONSENSE_TYPE_ACCEL, align 4
  %44 = icmp ne i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  %47 = load i32*, i32** %8, align 8
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* @ACCEL_LEGACY_NSCALE, align 4
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %50, i32* %13, align 4
  br label %61

51:                                               ; preds = %5
  %52 = load i32*, i32** %8, align 8
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %53, i32* %13, align 4
  br label %61

54:                                               ; preds = %5
  %55 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %11, align 8
  %56 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @cros_ec_sensors_core_read(%struct.cros_ec_sensors_core_state* %55, %struct.iio_chan_spec* %56, i32* %57, i32* %58, i64 %59)
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %54, %51, %39, %35, %34
  %62 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %11, align 8
  %63 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %13, align 4
  ret i32 %65
}

declare dso_local %struct.cros_ec_sensors_core_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cros_ec_sensors_core_read(%struct.cros_ec_sensors_core_state*, %struct.iio_chan_spec*, i32*, i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
