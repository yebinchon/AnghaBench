; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_fan_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_fan_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.amc6821_data = type { i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@fan_reg_low = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Register write error, aborting.\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@fan_reg_hi = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.amc6821_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.amc6821_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.amc6821_data* %16, %struct.amc6821_data** %10, align 8
  %17 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %18 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %17, i32 0, i32 2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %21 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @kstrtol(i8* %24, i32 10, i64* %12)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %103

30:                                               ; preds = %4
  %31 = load i64, i64* %12, align 8
  %32 = icmp sgt i64 1, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %37

34:                                               ; preds = %30
  %35 = load i64, i64* %12, align 8
  %36 = sdiv i64 6000000, %35
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i64 [ 65535, %33 ], [ %36, %34 ]
  store i64 %38, i64* %12, align 8
  %39 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %40 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load i64, i64* %12, align 8
  %43 = call i64 @clamp_val(i64 %42, i32 1, i32 65535)
  %44 = trunc i64 %43 to i32
  %45 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %46 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %52 = load i32*, i32** @fan_reg_low, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %58 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 255
  %65 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %51, i32 %56, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %37
  %68 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %71 = load i64, i64* @EIO, align 8
  %72 = sub i64 0, %71
  store i64 %72, i64* %9, align 8
  br label %97

73:                                               ; preds = %37
  %74 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %75 = load i32*, i32** @fan_reg_hi, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %81 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 8
  %88 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %74, i32 %79, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %73
  %91 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %94 = load i64, i64* @EIO, align 8
  %95 = sub i64 0, %94
  store i64 %95, i64* %9, align 8
  br label %96

96:                                               ; preds = %90, %73
  br label %97

97:                                               ; preds = %96, %67
  %98 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %99 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i64, i64* %9, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %97, %28
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.amc6821_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i64 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
