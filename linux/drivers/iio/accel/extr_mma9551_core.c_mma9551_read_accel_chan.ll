; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551_core.c_mma9551_read_accel_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551_core.c_mma9551_read_accel_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.iio_chan_spec = type { i32 }

@MMA9551_AFE_X_ACCEL_REG = common dso_local global i32 0, align 4
@MMA9551_AFE_Y_ACCEL_REG = common dso_local global i32 0, align 4
@MMA9551_AFE_Z_ACCEL_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MMA9551_APPID_AFE = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mma9551_read_accel_chan(%struct.i2c_client* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %14 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %22 [
    i32 130, label %16
    i32 129, label %18
    i32 128, label %20
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* @MMA9551_AFE_X_ACCEL_REG, align 4
  store i32 %17, i32* %10, align 4
  br label %25

18:                                               ; preds = %4
  %19 = load i32, i32* @MMA9551_AFE_Y_ACCEL_REG, align 4
  store i32 %19, i32* %10, align 4
  br label %25

20:                                               ; preds = %4
  %21 = load i32, i32* @MMA9551_AFE_Z_ACCEL_REG, align 4
  store i32 %21, i32* %10, align 4
  br label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %48

25:                                               ; preds = %20, %18, %16
  %26 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %27 = call i32 @mma9551_set_power_state(%struct.i2c_client* %26, i32 1)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %5, align 4
  br label %48

32:                                               ; preds = %25
  %33 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %34 = load i32, i32* @MMA9551_APPID_AFE, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @mma9551_read_status_word(%struct.i2c_client* %33, i32 %34, i32 %35, i32* %11)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %44

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %40, %39
  %45 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %46 = call i32 @mma9551_set_power_state(%struct.i2c_client* %45, i32 0)
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %30, %22
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @mma9551_set_power_state(%struct.i2c_client*, i32) #1

declare dso_local i32 @mma9551_read_status_word(%struct.i2c_client*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
