; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_hid_sensor_read_samp_freq_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_hid_sensor_read_samp_freq_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_common = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_UNITS_MILLISECOND = common dso_local global i64 0, align 8
@HID_USAGE_SENSOR_UNITS_SECOND = common dso_local global i64 0, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_sensor_read_samp_freq_value(%struct.hid_sensor_common* %0, i32* %1, i32* %2) #0 {
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
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %14 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %18 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
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
  br label %65

32:                                               ; preds = %24
  %33 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %34 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HID_USAGE_SENSOR_UNITS_MILLISECOND, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i64, i64* %8, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @simple_div(i32 1000, i64 %40, i32* %41, i32* %42)
  br label %62

44:                                               ; preds = %32
  %45 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %46 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @HID_USAGE_SENSOR_UNITS_SECOND, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i64, i64* %8, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @simple_div(i32 1, i64 %52, i32* %53, i32* %54)
  br label %61

56:                                               ; preds = %44
  %57 = load i32*, i32** %7, align 8
  store i32 0, i32* %57, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %65

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %39
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %56, %27
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @sensor_hub_get_feature(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @simple_div(i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
