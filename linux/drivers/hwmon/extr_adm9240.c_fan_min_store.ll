; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm9240.c_fan_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm9240.c_fan_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.adm9240_data = type { i32*, i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"fan%u low limit set disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"fan%u low limit set minimum %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"fan%u low limit set fan speed %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.adm9240_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute* %19, %struct.sensor_device_attribute** %10, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.adm9240_data* @dev_get_drvdata(%struct.device* %20)
  store %struct.adm9240_data* %21, %struct.adm9240_data** %11, align 8
  %22 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %23 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %22, i32 0, i32 3
  %24 = load %struct.i2c_client*, %struct.i2c_client** %23, align 8
  store %struct.i2c_client* %24, %struct.i2c_client** %12, align 8
  %25 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %26 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @kstrtoul(i8* %28, i32 10, i64* %15)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %5, align 4
  br label %157

34:                                               ; preds = %4
  %35 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %36 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %35, i32 0, i32 2
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i64, i64* %15, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %34
  %41 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %42 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 255, i32* %46, align 4
  %47 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %48 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %118

59:                                               ; preds = %34
  %60 = load i64, i64* %15, align 8
  %61 = icmp ult i64 %60, 664
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  store i32 3, i32* %14, align 4
  %63 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %64 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 254, i32* %68, align 4
  %69 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %14, align 4
  %74 = shl i32 1, %73
  %75 = call i32 @FAN_FROM_REG(i32 254, i32 %74)
  %76 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %75)
  br label %117

77:                                               ; preds = %59
  %78 = load i64, i64* %15, align 8
  %79 = udiv i64 1350000, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %89, %77
  %82 = load i32, i32* %17, align 4
  %83 = icmp ugt i32 %82, 192
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 3
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i1 [ false, %81 ], [ %86, %84 ]
  br i1 %88, label %89, label %94

89:                                               ; preds = %87
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %17, align 4
  %93 = udiv i32 %92, 2
  store i32 %93, i32* %17, align 4
  br label %81

94:                                               ; preds = %87
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %17, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %17, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %17, align 4
  %102 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %103 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  %108 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %14, align 4
  %114 = shl i32 1, %113
  %115 = call i32 @FAN_FROM_REG(i32 %112, i32 %114)
  %116 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %115)
  br label %117

117:                                              ; preds = %100, %62
  br label %118

118:                                              ; preds = %117, %40
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %121 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %119, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %118
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %131 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %129, i32* %135, align 4
  %136 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @adm9240_write_fan_div(%struct.i2c_client* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %128, %118
  %141 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @ADM9240_REG_FAN_MIN(i32 %142)
  %144 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %145 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %141, i32 %143, i32 %150)
  %152 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %153 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %152, i32 0, i32 2
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load i64, i64* %9, align 8
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %140, %32
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adm9240_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @adm9240_write_fan_div(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ADM9240_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
