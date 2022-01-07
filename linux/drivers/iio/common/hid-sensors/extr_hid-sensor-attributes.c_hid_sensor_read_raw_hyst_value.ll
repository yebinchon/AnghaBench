; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_hid_sensor_read_raw_hyst_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_hid_sensor_read_raw_hyst_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_common = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_sensor_read_raw_hyst_value(%struct.hid_sensor_common* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_sensor_common*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hid_sensor_common* %0, %struct.hid_sensor_common** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %11 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %14 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %18 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sensor_hub_get_feature(i32 %12, i32 %16, i32 %20, i32 8, i64* %8)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* %8, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24, %3
  %28 = load i32*, i32** %7, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32*, i32** %6, align 8
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %47

32:                                               ; preds = %24
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %35 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %39 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @convert_from_vtf_format(i64 %33, i32 %37, i32 %41, i32* %42, i32* %43)
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %27
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @sensor_hub_get_feature(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @convert_from_vtf_format(i64, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
