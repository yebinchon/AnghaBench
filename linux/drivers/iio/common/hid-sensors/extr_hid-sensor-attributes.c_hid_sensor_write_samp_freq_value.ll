; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_hid_sensor_write_samp_freq_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_hid_sensor_write_samp_freq_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_common = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HZ_PER_MHZ = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_UNITS_MILLISECOND = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_UNITS_SECOND = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_sensor_write_samp_freq_value(%struct.hid_sensor_common* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_sensor_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hid_sensor_common* %0, %struct.hid_sensor_common** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %97

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @HZ_PER_MHZ, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %18
  %27 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %28 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HID_USAGE_SENSOR_UNITS_MILLISECOND, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @NSEC_PER_SEC, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %8, align 4
  br label %50

37:                                               ; preds = %26
  %38 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %39 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HID_USAGE_SENSOR_UNITS_SECOND, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @USEC_PER_SEC, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %8, align 4
  br label %49

48:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %44
  br label %50

50:                                               ; preds = %49, %33
  br label %51

51:                                               ; preds = %50, %18
  %52 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %53 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %56 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %60 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @sensor_hub_set_feature(i32 %54, i32 %58, i32 %62, i32 4, i32* %8)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %51
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66, %51
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %97

72:                                               ; preds = %66
  %73 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %74 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %77 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %81 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @sensor_hub_get_feature(i32 %75, i32 %79, i32 %83, i32 4, i32* %8)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %72
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87, %72
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %97

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %96 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %90, %69, %15
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @sensor_hub_set_feature(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @sensor_hub_get_feature(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
