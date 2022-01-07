; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_hid_sensor_write_raw_hyst_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_hid_sensor_write_raw_hyst_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_common = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_sensor_write_raw_hyst_value(%struct.hid_sensor_common* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_sensor_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
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
  br label %75

18:                                               ; preds = %12
  %19 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %20 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %24 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @convert_to_vtf_format(i32 %22, i32 %26, i32 %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %31 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %34 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %38 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sensor_hub_set_feature(i32 %32, i32 %36, i32 %40, i32 8, i64* %8)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %18
  %45 = load i64, i64* %8, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %18
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %75

50:                                               ; preds = %44
  %51 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %52 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %55 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %59 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @sensor_hub_get_feature(i32 %53, i32 %57, i32 %61, i32 8, i64* %8)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %50
  %66 = load i64, i64* %8, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65, %50
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %75

71:                                               ; preds = %65
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %5, align 8
  %74 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %68, %47, %15
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @convert_to_vtf_format(i32, i32, i32, i32) #1

declare dso_local i32 @sensor_hub_set_feature(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @sensor_hub_get_feature(i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
