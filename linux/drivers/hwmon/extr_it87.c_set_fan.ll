; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_fan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.it87_data = type { i32**, i32*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@IT87_REG_FAN_MIN = common dso_local global i32* null, align 8
@IT87_REG_FANX_MIN = common dso_local global i32* null, align 8
@IT87_REG_FAN_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.it87_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute_2* %17, %struct.sensor_device_attribute_2** %10, align 8
  %18 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %24)
  store %struct.it87_data* %25, %struct.it87_data** %13, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @kstrtol(i8* %26, i32 10, i64* %14)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %170

32:                                               ; preds = %4
  %33 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %34 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %33, i32 0, i32 2
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %37 = call i64 @has_16bit_fans(%struct.it87_data* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %90

39:                                               ; preds = %32
  %40 = load i64, i64* %14, align 8
  %41 = call i32 @FAN16_TO_REG(i64 %40)
  %42 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %43 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %41, i32* %51, align 4
  %52 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %53 = load i32*, i32** @IT87_REG_FAN_MIN, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %59 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 255
  %70 = call i32 @it87_write_value(%struct.it87_data* %52, i32 %57, i32 %69)
  %71 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %72 = load i32*, i32** @IT87_REG_FANX_MIN, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %78 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %77, i32 0, i32 0
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 8
  %89 = call i32 @it87_write_value(%struct.it87_data* %71, i32 %76, i32 %88)
  br label %165

90:                                               ; preds = %32
  %91 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %92 = load i32, i32* @IT87_REG_FAN_DIV, align 4
  %93 = call i32 @it87_read_value(%struct.it87_data* %91, i32 %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %11, align 4
  switch i32 %94, label %126 [
    i32 0, label %95
    i32 1, label %104
    i32 2, label %114
  ]

95:                                               ; preds = %90
  %96 = load i32, i32* %15, align 4
  %97 = and i32 %96, 7
  %98 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %99 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  br label %126

104:                                              ; preds = %90
  %105 = load i32, i32* %15, align 4
  %106 = ashr i32 %105, 3
  %107 = and i32 %106, 7
  %108 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %109 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  br label %126

114:                                              ; preds = %90
  %115 = load i32, i32* %15, align 4
  %116 = and i32 %115, 64
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 3, i32 1
  %120 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %121 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  br label %126

126:                                              ; preds = %90, %114, %104, %95
  %127 = load i64, i64* %14, align 8
  %128 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %129 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @DIV_FROM_REG(i32 %134)
  %136 = call i32 @FAN_TO_REG(i64 %127, i32 %135)
  %137 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %138 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %137, i32 0, i32 0
  %139 = load i32**, i32*** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %136, i32* %146, align 4
  %147 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %148 = load i32*, i32** @IT87_REG_FAN_MIN, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %154 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %153, i32 0, i32 0
  %155 = load i32**, i32*** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @it87_write_value(%struct.it87_data* %147, i32 %152, i32 %163)
  br label %165

165:                                              ; preds = %126, %39
  %166 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %167 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %166, i32 0, i32 2
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load i64, i64* %9, align 8
  store i64 %169, i64* %5, align 8
  br label %170

170:                                              ; preds = %165, %29
  %171 = load i64, i64* %5, align 8
  ret i64 %171
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @has_16bit_fans(%struct.it87_data*) #1

declare dso_local i32 @FAN16_TO_REG(i64) #1

declare dso_local i32 @it87_write_value(%struct.it87_data*, i32, i32) #1

declare dso_local i32 @it87_read_value(%struct.it87_data*, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
