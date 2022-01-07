; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_common_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_common_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.mpu3050 = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpu3050_common_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.mpu3050*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %5)
  store %struct.iio_dev* %6, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.mpu3050* @iio_priv(%struct.iio_dev* %7)
  store %struct.mpu3050* %8, %struct.mpu3050** %4, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call i32 @pm_runtime_get_sync(%struct.device* %9)
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call i32 @pm_runtime_put_noidle(%struct.device* %11)
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call i32 @pm_runtime_disable(%struct.device* %13)
  %15 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %16 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %15)
  %17 = load %struct.mpu3050*, %struct.mpu3050** %4, align 8
  %18 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.mpu3050*, %struct.mpu3050** %4, align 8
  %23 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mpu3050*, %struct.mpu3050** %4, align 8
  %26 = call i32 @free_irq(i64 %24, %struct.mpu3050* %25)
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %29 = call i32 @iio_device_unregister(%struct.iio_dev* %28)
  %30 = load %struct.mpu3050*, %struct.mpu3050** %4, align 8
  %31 = call i32 @mpu3050_power_down(%struct.mpu3050* %30)
  ret i32 0
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.mpu3050* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @free_irq(i64, %struct.mpu3050*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @mpu3050_power_down(%struct.mpu3050*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
