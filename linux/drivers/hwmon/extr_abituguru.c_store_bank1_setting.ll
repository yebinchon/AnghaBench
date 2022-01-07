; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_store_bank1_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_store_bank1_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i64 }
%struct.abituguru_data = type { i32*, i64**, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ABIT_UGURU_SENSOR_BANK1 = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_bank1_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_bank1_setting(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %142

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %12, align 8
  %28 = mul i64 %27, 255
  %29 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %30 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %33 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = add i64 %28, %38
  %40 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %41 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %44 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %39, %48
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = icmp ugt i64 %50, 255
  br i1 %51, label %52, label %55

52:                                               ; preds = %25
  %53 = load i64, i64* @EINVAL, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %5, align 8
  br label %142

55:                                               ; preds = %25
  %56 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %57 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %56, i32 0, i32 2
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %60 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %59, i32 0, i32 1
  %61 = load i64**, i64*** %60, align 8
  %62 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %63 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i64*, i64** %61, i64 %64
  %66 = load i64*, i64** %65, align 8
  %67 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %68 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %137

74:                                               ; preds = %55
  %75 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %76 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %75, i32 0, i32 1
  %77 = load i64**, i64*** %76, align 8
  %78 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %79 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i64*, i64** %77, i64 %80
  %82 = load i64*, i64** %81, align 8
  %83 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %84 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %90 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %89, i32 0, i32 1
  %91 = load i64**, i64*** %90, align 8
  %92 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %93 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i64*, i64** %91, i64 %94
  %96 = load i64*, i64** %95, align 8
  %97 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %98 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i64, i64* %96, i64 %99
  store i64 %88, i64* %100, align 8
  %101 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %102 = load i64, i64* @ABIT_UGURU_SENSOR_BANK1, align 8
  %103 = add nsw i64 %102, 2
  %104 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %105 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %108 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %107, i32 0, i32 1
  %109 = load i64**, i64*** %108, align 8
  %110 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %111 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i64*, i64** %109, i64 %112
  %114 = load i64*, i64** %113, align 8
  %115 = call i64 @abituguru_write(%struct.abituguru_data* %101, i64 %103, i64 %106, i64* %114, i32 3)
  %116 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %117 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ule i64 %115, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %74
  %121 = load i64, i64* %14, align 8
  %122 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %123 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %122, i32 0, i32 1
  %124 = load i64**, i64*** %123, align 8
  %125 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %126 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i64*, i64** %124, i64 %127
  %129 = load i64*, i64** %128, align 8
  %130 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %131 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  store i64 %121, i64* %133, align 8
  %134 = load i64, i64* @EIO, align 8
  %135 = sub i64 0, %134
  store i64 %135, i64* %13, align 8
  br label %136

136:                                              ; preds = %120, %74
  br label %137

137:                                              ; preds = %136, %55
  %138 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %139 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %138, i32 0, i32 2
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load i64, i64* %13, align 8
  store i64 %141, i64* %5, align 8
  br label %142

142:                                              ; preds = %137, %52, %23
  %143 = load i64, i64* %5, align 8
  ret i64 %143
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
