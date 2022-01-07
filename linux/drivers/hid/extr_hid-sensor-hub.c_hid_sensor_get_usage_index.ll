; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_hid_sensor_get_usage_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_hid_sensor_get_usage_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_hub_device = type { i32 }
%struct.hid_report = type { i32, %struct.hid_field** }
%struct.hid_field = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_sensor_get_usage_index(%struct.hid_sensor_hub_device* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_sensor_hub_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.hid_report*, align 8
  %11 = alloca %struct.hid_field*, align 8
  %12 = alloca i32, align 4
  store %struct.hid_sensor_hub_device* %0, %struct.hid_sensor_hub_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %6, align 8
  %15 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %18 = call %struct.hid_report* @sensor_hub_report(i64 %13, i32 %16, i32 %17)
  store %struct.hid_report* %18, %struct.hid_report** %10, align 8
  %19 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %20 = icmp ne %struct.hid_report* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %24 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %4
  br label %67

28:                                               ; preds = %21
  %29 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %30 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %29, i32 0, i32 1
  %31 = load %struct.hid_field**, %struct.hid_field*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %31, i64 %33
  %35 = load %struct.hid_field*, %struct.hid_field** %34, align 8
  store %struct.hid_field* %35, %struct.hid_field** %11, align 8
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %63, %28
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %39 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %36
  %43 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %44 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %55 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %5, align 4
  br label %70

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %36

66:                                               ; preds = %36
  br label %67

67:                                               ; preds = %66, %27
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %53
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.hid_report* @sensor_hub_report(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
