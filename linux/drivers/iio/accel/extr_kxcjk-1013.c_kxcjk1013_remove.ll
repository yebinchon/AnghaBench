; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.iio_dev = type { i32 }
%struct.kxcjk1013_data = type { i32, i64, i64 }

@STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @kxcjk1013_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.kxcjk1013_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.iio_dev* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.iio_dev* %6, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev* %7)
  store %struct.kxcjk1013_data* %8, %struct.kxcjk1013_data** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call i32 @iio_device_unregister(%struct.iio_dev* %9)
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call i32 @pm_runtime_disable(i32* %12)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call i32 @pm_runtime_set_suspended(i32* %15)
  %17 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = call i32 @pm_runtime_put_noidle(i32* %18)
  %20 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %21 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %26 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %25)
  %27 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %28 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @iio_trigger_unregister(i64 %29)
  %31 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %32 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @iio_trigger_unregister(i64 %33)
  br label %35

35:                                               ; preds = %24, %1
  %36 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %37 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %40 = load i32, i32* @STANDBY, align 4
  %41 = call i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data* %39, i32 %40)
  %42 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %43 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  ret i32 0
}

declare dso_local %struct.iio_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_unregister(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
