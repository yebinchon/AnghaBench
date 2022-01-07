; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_i2c.c_inv_mpu6050_deselect_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_i2c.c_inv_mpu6050_deselect_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_mux_core = type { i32 }
%struct.iio_dev = type { i32 }
%struct.inv_mpu6050_state = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_mux_core*, i32)* @inv_mpu6050_deselect_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inv_mpu6050_deselect_bypass(%struct.i2c_mux_core* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_mux_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.inv_mpu6050_state*, align 8
  store %struct.i2c_mux_core* %0, %struct.i2c_mux_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %3, align 8
  %8 = call %struct.iio_dev* @i2c_mux_priv(%struct.i2c_mux_core* %7)
  store %struct.iio_dev* %8, %struct.iio_dev** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %10 = call %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev* %9)
  store %struct.inv_mpu6050_state* %10, %struct.inv_mpu6050_state** %6, align 8
  %11 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %12 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %15 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %18 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %23 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regmap_write(i32 %16, i32 %21, i32 %24)
  %26 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %27 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %26, i32 0)
  %28 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %29 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  ret i32 0
}

declare dso_local %struct.iio_dev* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
