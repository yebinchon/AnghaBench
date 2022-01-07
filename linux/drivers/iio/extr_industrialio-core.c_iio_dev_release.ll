; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_dev_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_dev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32, i32, i32 }

@INDIO_ALL_TRIGGERED_MODES = common dso_local global i32 0, align 4
@iio_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @iio_dev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iio_dev_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %4)
  store %struct.iio_dev* %5, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @INDIO_ALL_TRIGGERED_MODES, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %14 = call i32 @iio_device_unregister_trigger_consumer(%struct.iio_dev* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %17 = call i32 @iio_device_unregister_eventset(%struct.iio_dev* %16)
  %18 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %19 = call i32 @iio_device_unregister_sysfs(%struct.iio_dev* %18)
  %20 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iio_buffer_put(i32 %22)
  %24 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ida_simple_remove(i32* @iio_ida, i32 %26)
  %28 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %29 = call i32 @kfree(%struct.iio_dev* %28)
  ret void
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local i32 @iio_device_unregister_trigger_consumer(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister_eventset(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister_sysfs(%struct.iio_dev*) #1

declare dso_local i32 @iio_buffer_put(i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
