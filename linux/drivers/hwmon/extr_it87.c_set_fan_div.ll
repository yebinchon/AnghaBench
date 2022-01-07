; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_fan_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.it87_data = type { i64**, i32*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@IT87_REG_FAN_DIV = common dso_local global i32 0, align 4
@IT87_REG_FAN_MIN = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.it87_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.it87_data* %19, %struct.it87_data** %11, align 8
  %20 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @kstrtoul(i8* %23, i32 10, i64* %13)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %157

29:                                               ; preds = %4
  %30 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %31 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %30, i32 0, i32 2
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %34 = load i32, i32* @IT87_REG_FAN_DIV, align 4
  %35 = call i32 @it87_read_value(%struct.it87_data* %33, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %37 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %36, i32 0, i32 0
  %38 = load i64**, i64*** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64*, i64** %38, i64 %40
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %46 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @DIV_FROM_REG(i32 %51)
  %53 = call i32 @FAN_FROM_REG(i64 %44, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %12, align 4
  switch i32 %54, label %82 [
    i32 0, label %55
    i32 1, label %55
    i32 2, label %64
  ]

55:                                               ; preds = %29, %29
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @DIV_TO_REG(i64 %56)
  %58 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %59 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  br label %82

64:                                               ; preds = %29
  %65 = load i64, i64* %13, align 8
  %66 = icmp ult i64 %65, 8
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %69 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 1, i32* %73, align 4
  br label %81

74:                                               ; preds = %64
  %75 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %76 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 3, i32* %80, align 4
  br label %81

81:                                               ; preds = %74, %67
  br label %82

82:                                               ; preds = %81, %29, %55
  %83 = load i32, i32* %15, align 4
  %84 = and i32 %83, 128
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %13, align 8
  %86 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %87 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 7
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %13, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %13, align 8
  %95 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %96 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 7
  %101 = shl i32 %100, 3
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %13, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %13, align 8
  %105 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %106 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 3
  br i1 %110, label %111, label %114

111:                                              ; preds = %82
  %112 = load i64, i64* %13, align 8
  %113 = or i64 %112, 64
  store i64 %113, i64* %13, align 8
  br label %114

114:                                              ; preds = %111, %82
  %115 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %116 = load i32, i32* @IT87_REG_FAN_DIV, align 4
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @it87_write_value(%struct.it87_data* %115, i32 %116, i64 %117)
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %121 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @DIV_FROM_REG(i32 %126)
  %128 = call i64 @FAN_TO_REG(i32 %119, i32 %127)
  %129 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %130 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %129, i32 0, i32 0
  %131 = load i64**, i64*** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64*, i64** %131, i64 %133
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  store i64 %128, i64* %136, align 8
  %137 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %138 = load i32*, i32** @IT87_REG_FAN_MIN, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %144 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %143, i32 0, i32 0
  %145 = load i64**, i64*** %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64*, i64** %145, i64 %147
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 1
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @it87_write_value(%struct.it87_data* %137, i32 %142, i64 %151)
  %153 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %154 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %153, i32 0, i32 2
  %155 = call i32 @mutex_unlock(i32* %154)
  %156 = load i64, i64* %9, align 8
  store i64 %156, i64* %5, align 8
  br label %157

157:                                              ; preds = %114, %26
  %158 = load i64, i64* %5, align 8
  ret i64 %158
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @it87_read_value(%struct.it87_data*, i32) #1

declare dso_local i32 @FAN_FROM_REG(i64, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @DIV_TO_REG(i64) #1

declare dso_local i32 @it87_write_value(%struct.it87_data*, i32, i64) #1

declare dso_local i64 @FAN_TO_REG(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
