; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_core_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_core_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.bmc150_accel_data = type { i32 }

@BMC150_ACCEL_TRIGGERS = common dso_local global i64 0, align 8
@BMC150_ACCEL_SLEEP_MODE_DEEP_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bmc150_accel_core_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.bmc150_accel_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %5)
  store %struct.iio_dev* %6, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev* %7)
  store %struct.bmc150_accel_data* %8, %struct.bmc150_accel_data** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call i32 @iio_device_unregister(%struct.iio_dev* %9)
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call i32 @pm_runtime_disable(%struct.device* %11)
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call i32 @pm_runtime_set_suspended(%struct.device* %13)
  %15 = load %struct.device*, %struct.device** %2, align 8
  %16 = call i32 @pm_runtime_put_noidle(%struct.device* %15)
  %17 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %18 = load i64, i64* @BMC150_ACCEL_TRIGGERS, align 8
  %19 = sub nsw i64 %18, 1
  %20 = call i32 @bmc150_accel_unregister_triggers(%struct.bmc150_accel_data* %17, i64 %19)
  %21 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %22 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %21)
  %23 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %24 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %27 = load i32, i32* @BMC150_ACCEL_SLEEP_MODE_DEEP_SUSPEND, align 4
  %28 = call i32 @bmc150_accel_set_mode(%struct.bmc150_accel_data* %26, i32 %27, i32 0)
  %29 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %30 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  ret i32 0
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @bmc150_accel_unregister_triggers(%struct.bmc150_accel_data*, i64) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bmc150_accel_set_mode(%struct.bmc150_accel_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
