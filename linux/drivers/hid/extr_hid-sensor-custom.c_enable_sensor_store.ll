; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_enable_sensor_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_enable_sensor_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hid_sensor_custom = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @enable_sensor_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_sensor_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hid_sensor_custom*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.hid_sensor_custom* @dev_get_drvdata(%struct.device* %13)
  store %struct.hid_sensor_custom* %14, %struct.hid_sensor_custom** %10, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @kstrtoint(i8* %17, i32 0, i32* %11)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %85

23:                                               ; preds = %4
  %24 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %10, align 8
  %25 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %23
  %30 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %10, align 8
  %31 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %29
  %35 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %10, align 8
  %36 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sensor_hub_device_open(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %74

42:                                               ; preds = %34
  %43 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %10, align 8
  %44 = call i32 @set_power_report_state(%struct.hid_sensor_custom* %43, i32 1)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %10, align 8
  %49 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sensor_hub_device_close(i32 %50)
  br label %74

52:                                               ; preds = %42
  %53 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %10, align 8
  %54 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %73

55:                                               ; preds = %29, %23
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %55
  %59 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %10, align 8
  %60 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %10, align 8
  %65 = call i32 @set_power_report_state(%struct.hid_sensor_custom* %64, i32 0)
  store i32 %65, i32* %12, align 4
  %66 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %10, align 8
  %67 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sensor_hub_device_close(i32 %68)
  %70 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %10, align 8
  %71 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %63, %58, %55
  br label %73

73:                                               ; preds = %72, %52
  br label %74

74:                                               ; preds = %73, %47, %41
  %75 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %10, align 8
  %76 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %5, align 4
  br label %85

82:                                               ; preds = %74
  %83 = load i64, i64* %9, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %82, %80, %20
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.hid_sensor_custom* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sensor_hub_device_open(i32) #1

declare dso_local i32 @set_power_report_state(%struct.hid_sensor_custom*, i32) #1

declare dso_local i32 @sensor_hub_device_close(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
