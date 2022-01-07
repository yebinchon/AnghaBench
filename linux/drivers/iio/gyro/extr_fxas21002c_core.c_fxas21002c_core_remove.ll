; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_core_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_core_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fxas21002c_core_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %4)
  store %struct.iio_dev* %5, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call i32 @iio_device_unregister(%struct.iio_dev* %6)
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call i32 @pm_runtime_disable(%struct.device* %8)
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call i32 @pm_runtime_set_suspended(%struct.device* %10)
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = call i32 @pm_runtime_put_noidle(%struct.device* %12)
  ret void
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
