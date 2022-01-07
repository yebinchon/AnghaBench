; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-trigger.c_hid_sensor_remove_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-trigger.c_hid_sensor_remove_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_common = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hid_sensor_remove_trigger(%struct.hid_sensor_common* %0) #0 {
  %2 = alloca %struct.hid_sensor_common*, align 8
  store %struct.hid_sensor_common* %0, %struct.hid_sensor_common** %2, align 8
  %3 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %2, align 8
  %4 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %3, i32 0, i32 3
  %5 = call i64 @atomic_read(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %2, align 8
  %9 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @pm_runtime_disable(i32* %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %2, align 8
  %15 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @pm_runtime_set_suspended(i32* %17)
  %19 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %2, align 8
  %20 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @pm_runtime_put_noidle(i32* %22)
  %24 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %2, align 8
  %25 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %24, i32 0, i32 1
  %26 = call i32 @cancel_work_sync(i32* %25)
  %27 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %2, align 8
  %28 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @iio_trigger_unregister(i32 %29)
  %31 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %2, align 8
  %32 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @iio_trigger_free(i32 %33)
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @iio_trigger_unregister(i32) #1

declare dso_local i32 @iio_trigger_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
