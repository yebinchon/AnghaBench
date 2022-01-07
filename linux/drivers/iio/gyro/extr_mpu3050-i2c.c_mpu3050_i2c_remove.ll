; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-i2c.c_mpu3050_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-i2c.c_mpu3050_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.iio_dev = type { i32 }
%struct.mpu3050 = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mpu3050_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu3050_i2c_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.mpu3050*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 0
  %7 = call %struct.iio_dev* @dev_get_drvdata(i32* %6)
  store %struct.iio_dev* %7, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.mpu3050* @iio_priv(%struct.iio_dev* %8)
  store %struct.mpu3050* %9, %struct.mpu3050** %4, align 8
  %10 = load %struct.mpu3050*, %struct.mpu3050** %4, align 8
  %11 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.mpu3050*, %struct.mpu3050** %4, align 8
  %16 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @i2c_mux_del_adapters(i64 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call i32 @mpu3050_common_remove(i32* %21)
  ret i32 %22
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(i32*) #1

declare dso_local %struct.mpu3050* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_mux_del_adapters(i64) #1

declare dso_local i32 @mpu3050_common_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
