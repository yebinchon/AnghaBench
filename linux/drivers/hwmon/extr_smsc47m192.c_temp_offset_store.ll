; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m192.c_temp_offset_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m192.c_temp_offset_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.smsc47m192_data = type { i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@SMSC47M192_REG_SFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_offset_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_offset_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.smsc47m192_data*, align 8
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %10, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call %struct.smsc47m192_data* @dev_get_drvdata(%struct.device* %22)
  store %struct.smsc47m192_data* %23, %struct.smsc47m192_data** %12, align 8
  %24 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %25 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %24, i32 0, i32 2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %25, align 8
  store %struct.i2c_client* %26, %struct.i2c_client** %13, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %28 = load i32, i32* @SMSC47M192_REG_SFR, align 4
  %29 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @kstrtol(i8* %30, i32 10, i64* %15)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %5, align 4
  br label %121

36:                                               ; preds = %4
  %37 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %38 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i64, i64* %15, align 8
  %41 = call i32 @TEMP_TO_REG(i64 %40)
  %42 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %43 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %62

50:                                               ; preds = %36
  %51 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @SMSC47M192_REG_TEMP_OFFSET(i32 %52)
  %54 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %55 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %51, i32 %53, i32 %60)
  br label %115

62:                                               ; preds = %36
  %63 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %64 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %62
  %72 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %73 = load i32, i32* @SMSC47M192_REG_SFR, align 4
  %74 = load i32, i32* %14, align 4
  %75 = and i32 %74, 239
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 16, i32 0
  %80 = or i32 %75, %79
  %81 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %72, i32 %73, i32 %80)
  %82 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %83 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 1, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 0, i32* %88, align 4
  %89 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @SMSC47M192_REG_TEMP_OFFSET(i32 %90)
  %92 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %93 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %89, i32 %91, i32 %98)
  br label %114

100:                                              ; preds = %62
  %101 = load i32, i32* %14, align 4
  %102 = and i32 %101, 16
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 16, i32 0
  %107 = icmp eq i32 %102, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %100
  %109 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @SMSC47M192_REG_TEMP_OFFSET(i32 %110)
  %112 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %109, i32 %111, i32 0)
  br label %113

113:                                              ; preds = %108, %100
  br label %114

114:                                              ; preds = %113, %71
  br label %115

115:                                              ; preds = %114, %50
  %116 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %117 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i64, i64* %9, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %115, %34
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.smsc47m192_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TEMP_TO_REG(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @SMSC47M192_REG_TEMP_OFFSET(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
