; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_fan_div_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_fan_div_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fschmd_data = type { i64, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"fan_div value %lu not supported. Choose one of 2, 4 or 8!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FSCHMD_REG_FAN_RIPPLE = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_div_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fschmd_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.fschmd_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.fschmd_data* %20, %struct.fschmd_data** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtoul(i8* %21, i32 10, i64* %13)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %5, align 4
  br label %88

27:                                               ; preds = %4
  %28 = load i64, i64* %13, align 8
  switch i64 %28, label %32 [
    i64 2, label %29
    i64 4, label %30
    i64 8, label %31
  ]

29:                                               ; preds = %27
  store i64 1, i64* %13, align 8
  br label %38

30:                                               ; preds = %27
  store i64 2, i64* %13, align 8
  br label %38

31:                                               ; preds = %27
  store i64 3, i64* %13, align 8
  br label %38

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i64, i64* %13, align 8
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %88

38:                                               ; preds = %31, %30, %29
  %39 = load %struct.fschmd_data*, %struct.fschmd_data** %12, align 8
  %40 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %39, i32 0, i32 2
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @to_i2c_client(%struct.device* %42)
  %44 = load i32**, i32*** @FSCHMD_REG_FAN_RIPPLE, align 8
  %45 = load %struct.fschmd_data*, %struct.fschmd_data** %12, align 8
  %46 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32*, i32** %44, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @i2c_smbus_read_byte_data(i32 %43, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, -4
  store i32 %56, i32* %10, align 4
  %57 = load i64, i64* %13, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = or i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = call i32 @to_i2c_client(%struct.device* %62)
  %64 = load i32**, i32*** @FSCHMD_REG_FAN_RIPPLE, align 8
  %65 = load %struct.fschmd_data*, %struct.fschmd_data** %12, align 8
  %66 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32*, i32** %64, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @i2c_smbus_write_byte_data(i32 %63, i32 %73, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.fschmd_data*, %struct.fschmd_data** %12, align 8
  %78 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %76, i32* %82, align 4
  %83 = load %struct.fschmd_data*, %struct.fschmd_data** %12, align 8
  %84 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %83, i32 0, i32 2
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i64, i64* %9, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %38, %32, %25
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.fschmd_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
