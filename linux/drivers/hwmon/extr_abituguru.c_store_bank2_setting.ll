; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_store_bank2_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_store_bank2_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i64 }
%struct.abituguru_data = type { i64**, i32 }

@ABIT_UGURU_FAN_MAX = common dso_local global i32 0, align 4
@abituguru_bank2_min_threshold = common dso_local global i64 0, align 8
@abituguru_bank2_max_threshold = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ABIT_UGURU_SENSOR_BANK2 = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_bank2_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_bank2_setting(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.abituguru_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
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
  %20 = call i64 @kstrtoul(i8* %19, i32 10, i64* %12)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %13, align 8
  store i64 %24, i64* %5, align 8
  br label %133

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %12, align 8
  %28 = mul i64 %27, 255
  %29 = load i32, i32* @ABIT_UGURU_FAN_MAX, align 4
  %30 = sdiv i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = add i64 %28, %31
  %33 = load i32, i32* @ABIT_UGURU_FAN_MAX, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %32, %34
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @abituguru_bank2_min_threshold, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %25
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @abituguru_bank2_max_threshold, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %25
  %44 = load i64, i64* @EINVAL, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %5, align 8
  br label %133

46:                                               ; preds = %39
  %47 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %48 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %51 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %50, i32 0, i32 0
  %52 = load i64**, i64*** %51, align 8
  %53 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %54 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64*, i64** %52, i64 %55
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %59 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %128

65:                                               ; preds = %46
  %66 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %67 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %66, i32 0, i32 0
  %68 = load i64**, i64*** %67, align 8
  %69 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %70 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i64*, i64** %68, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %75 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i64, i64* %73, i64 %76
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %14, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %81 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %80, i32 0, i32 0
  %82 = load i64**, i64*** %81, align 8
  %83 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %84 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i64*, i64** %82, i64 %85
  %87 = load i64*, i64** %86, align 8
  %88 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %89 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  store i64 %79, i64* %91, align 8
  %92 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %93 = load i64, i64* @ABIT_UGURU_SENSOR_BANK2, align 8
  %94 = add nsw i64 %93, 2
  %95 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %96 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %99 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %98, i32 0, i32 0
  %100 = load i64**, i64*** %99, align 8
  %101 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %102 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i64*, i64** %100, i64 %103
  %105 = load i64*, i64** %104, align 8
  %106 = call i64 @abituguru_write(%struct.abituguru_data* %92, i64 %94, i64 %97, i64* %105, i32 2)
  %107 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %108 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ule i64 %106, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %65
  %112 = load i64, i64* %14, align 8
  %113 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %114 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %113, i32 0, i32 0
  %115 = load i64**, i64*** %114, align 8
  %116 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %117 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i64*, i64** %115, i64 %118
  %120 = load i64*, i64** %119, align 8
  %121 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %122 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i64, i64* %120, i64 %123
  store i64 %112, i64* %124, align 8
  %125 = load i64, i64* @EIO, align 8
  %126 = sub i64 0, %125
  store i64 %126, i64* %13, align 8
  br label %127

127:                                              ; preds = %111, %65
  br label %128

128:                                              ; preds = %127, %46
  %129 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %130 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %129, i32 0, i32 1
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load i64, i64* %13, align 8
  store i64 %132, i64* %5, align 8
  br label %133

133:                                              ; preds = %128, %43, %23
  %134 = load i64, i64* %5, align 8
  ret i64 %134
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.abituguru_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @abituguru_write(%struct.abituguru_data*, i64, i64, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
