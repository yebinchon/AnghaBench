; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tsl2563_chip = type { i32, i32, i32, i32 }
%struct.iio_dev = type { i32 }

@TSL2563_CMD = common dso_local global i32 0, align 4
@TSL2563_REG_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tsl2563_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2563_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.tsl2563_chip*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.tsl2563_chip* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.tsl2563_chip* %6, %struct.tsl2563_chip** %3, align 8
  %7 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %3, align 8
  %8 = call %struct.iio_dev* @iio_priv_to_dev(%struct.tsl2563_chip* %7)
  store %struct.iio_dev* %8, %struct.iio_dev** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call i32 @iio_device_unregister(%struct.iio_dev* %9)
  %11 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %3, align 8
  %12 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %3, align 8
  %17 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %16, i32 0, i32 2
  %18 = call i32 @cancel_delayed_work(i32* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %3, align 8
  %21 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, -49
  store i32 %23, i32* %21, align 4
  %24 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %3, align 8
  %25 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TSL2563_CMD, align 4
  %28 = load i32, i32* @TSL2563_REG_INT, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %3, align 8
  %31 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @i2c_smbus_write_byte_data(i32 %26, i32 %29, i32 %32)
  %34 = call i32 (...) @flush_scheduled_work()
  %35 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %3, align 8
  %36 = call i32 @tsl2563_set_power(%struct.tsl2563_chip* %35, i32 0)
  ret i32 0
}

declare dso_local %struct.tsl2563_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.tsl2563_chip*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @tsl2563_set_power(%struct.tsl2563_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
