; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.bmc150_magn_data = type { i64, i32, i64 }

@BMC150_MAGN_POWER_MODE_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bmc150_magn_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.bmc150_magn_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %5)
  store %struct.iio_dev* %6, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.bmc150_magn_data* @iio_priv(%struct.iio_dev* %7)
  store %struct.bmc150_magn_data* %8, %struct.bmc150_magn_data** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call i32 @iio_device_unregister(%struct.iio_dev* %9)
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call i32 @pm_runtime_disable(%struct.device* %11)
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call i32 @pm_runtime_set_suspended(%struct.device* %13)
  %15 = load %struct.device*, %struct.device** %2, align 8
  %16 = call i32 @pm_runtime_put_noidle(%struct.device* %15)
  %17 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %18 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %17)
  %19 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %4, align 8
  %20 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %4, align 8
  %25 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %4, align 8
  %28 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @free_irq(i64 %26, i64 %29)
  br label %31

31:                                               ; preds = %23, %1
  %32 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %4, align 8
  %33 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %4, align 8
  %38 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @iio_trigger_unregister(i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %4, align 8
  %43 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %4, align 8
  %46 = load i32, i32* @BMC150_MAGN_POWER_MODE_SUSPEND, align 4
  %47 = call i32 @bmc150_magn_set_power_mode(%struct.bmc150_magn_data* %45, i32 %46, i32 1)
  %48 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %4, align 8
  %49 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  ret i32 0
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.bmc150_magn_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @free_irq(i64, i64) #1

declare dso_local i32 @iio_trigger_unregister(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bmc150_magn_set_power_mode(%struct.bmc150_magn_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
