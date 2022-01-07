; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_store_bank1_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_store_bank1_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i32 }
%struct.abituguru_data = type { i32, i32** }

@ABIT_UGURU_SENSOR_BANK1 = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_bank1_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_bank1_mask(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.abituguru_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.abituguru_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.abituguru_data* %18, %struct.abituguru_data** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @kstrtoul(i8* %19, i32 10, i64* %14)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %12, align 8
  store i64 %24, i64* %5, align 8
  br label %121

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %12, align 8
  %27 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %28 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %31 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  %33 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %34 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32*, i32** %32, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %25
  %43 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %44 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %47 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %50 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32*, i32** %48, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %45
  store i32 %56, i32* %54, align 4
  br label %73

57:                                               ; preds = %25
  %58 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %59 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = xor i32 %60, -1
  %62 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %63 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %66 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32*, i32** %64, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %61
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %57, %42
  %74 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %75 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %74, i32 0, i32 1
  %76 = load i32**, i32*** %75, align 8
  %77 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %78 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32*, i32** %76, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %116

86:                                               ; preds = %73
  %87 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %88 = load i64, i64* @ABIT_UGURU_SENSOR_BANK1, align 8
  %89 = add nsw i64 %88, 2
  %90 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %91 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %94 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %93, i32 0, i32 1
  %95 = load i32**, i32*** %94, align 8
  %96 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %97 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32*, i32** %95, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @abituguru_write(%struct.abituguru_data* %87, i64 %89, i64 %92, i32* %100, i32 3)
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %103, label %116

103:                                              ; preds = %86
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %106 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %105, i32 0, i32 1
  %107 = load i32**, i32*** %106, align 8
  %108 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %109 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i32*, i32** %107, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %104, i32* %113, align 4
  %114 = load i64, i64* @EIO, align 8
  %115 = sub i64 0, %114
  store i64 %115, i64* %12, align 8
  br label %116

116:                                              ; preds = %103, %86, %73
  %117 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %118 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i64, i64* %12, align 8
  store i64 %120, i64* %5, align 8
  br label %121

121:                                              ; preds = %116, %23
  %122 = load i64, i64* %5, align 8
  ret i64 %122
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.abituguru_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @abituguru_write(%struct.abituguru_data*, i64, i64, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
