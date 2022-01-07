; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-trigger.c__hid_sensor_set_report_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-trigger.c__hid_sensor_set_report_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.hid_sensor_common = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @_hid_sensor_set_report_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_hid_sensor_set_report_latency(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.hid_sensor_common*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %16)
  store %struct.iio_dev* %17, %struct.iio_dev** %10, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %19 = call %struct.hid_sensor_common* @iio_device_get_drvdata(%struct.iio_dev* %18)
  store %struct.hid_sensor_common* %19, %struct.hid_sensor_common** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @iio_str_to_fixpoint(i8* %20, i32 100000, i32* %12, i32* %13)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %5, align 4
  br label %47

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = load i32, i32* %13, align 4
  %30 = sdiv i32 %29, 1000
  %31 = add nsw i32 %28, %30
  store i32 %31, i32* %15, align 4
  %32 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %11, align 8
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @hid_sensor_set_report_latency(%struct.hid_sensor_common* %32, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i64, i64* %9, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %47

40:                                               ; preds = %26
  %41 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %11, align 8
  %42 = call i32 @hid_sensor_get_report_latency(%struct.hid_sensor_common* %41)
  %43 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %11, align 8
  %44 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %9, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %40, %37, %24
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.hid_sensor_common* @iio_device_get_drvdata(%struct.iio_dev*) #1

declare dso_local i32 @iio_str_to_fixpoint(i8*, i32, i32*, i32*) #1

declare dso_local i32 @hid_sensor_set_report_latency(%struct.hid_sensor_common*, i32) #1

declare dso_local i32 @hid_sensor_get_report_latency(%struct.hid_sensor_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
