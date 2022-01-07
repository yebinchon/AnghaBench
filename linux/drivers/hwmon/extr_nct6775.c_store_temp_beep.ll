; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_temp_beep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_temp_beep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32 }
%struct.nct6775_data = type { i32*, i64, i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TEMP_ALARM_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_beep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_temp_beep(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.nct6775_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute_2* %18, %struct.sensor_device_attribute_2** %10, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.nct6775_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.nct6775_data* %20, %struct.nct6775_data** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtoul(i8* %21, i32 10, i64* %15)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %16, align 4
  store i32 %26, i32* %5, align 4
  br label %104

27:                                               ; preds = %4
  %28 = load i64, i64* %15, align 8
  %29 = icmp ugt i64 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %104

33:                                               ; preds = %27
  %34 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %35 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %36 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %39 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @find_temp_source(%struct.nct6775_data* %34, i32 %37, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %104

46:                                               ; preds = %33
  %47 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %48 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @TEMP_ALARM_BASE, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = ashr i32 %56, 3
  store i32 %57, i32* %14, align 4
  %58 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %59 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %58, i32 0, i32 2
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load i64, i64* %15, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %46
  %64 = load i32, i32* %13, align 4
  %65 = zext i32 %64 to i64
  %66 = shl i64 1, %65
  %67 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %68 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = or i64 %69, %66
  store i64 %70, i64* %68, align 8
  br label %80

71:                                               ; preds = %46
  %72 = load i32, i32* %13, align 4
  %73 = zext i32 %72 to i64
  %74 = shl i64 1, %73
  %75 = xor i64 %74, -1
  %76 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %77 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = and i64 %78, %75
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %71, %63
  %81 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %82 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %83 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %90 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = shl i32 %92, 3
  %94 = zext i32 %93 to i64
  %95 = lshr i64 %91, %94
  %96 = and i64 %95, 255
  %97 = trunc i64 %96 to i32
  %98 = call i32 @nct6775_write_value(%struct.nct6775_data* %81, i32 %88, i32 %97)
  %99 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %100 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %99, i32 0, i32 2
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i64, i64* %9, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %80, %44, %30, %25
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.nct6775_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @find_temp_source(%struct.nct6775_data*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nct6775_write_value(%struct.nct6775_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
