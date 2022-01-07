; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_pwm1_auto_point_pwm_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_pwm1_auto_point_pwm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.amc6821_data = type { i32*, i32, i64, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@AMC6821_REG_DCY_LOW_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Register write error, aborting.\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@AMC6821_REG_LTEMP_FAN_CTRL = common dso_local global i32 0, align 4
@AMC6821_REG_RTEMP_FAN_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm1_auto_point_pwm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm1_auto_point_pwm_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.amc6821_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.amc6821_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.amc6821_data* %16, %struct.amc6821_data** %10, align 8
  %17 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %18 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %17, i32 0, i32 5
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtol(i8* %20, i32 10, i64* %13)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %5, align 4
  br label %95

26:                                               ; preds = %4
  %27 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %28 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @clamp_val(i64 %30, i32 0, i32 254)
  %32 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %33 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %37 = load i32, i32* @AMC6821_REG_DCY_LOW_TEMP, align 4
  %38 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %39 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %36, i32 %37, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %26
  %46 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %49 = load i64, i64* @EIO, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %9, align 8
  br label %87

51:                                               ; preds = %26
  %52 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %53 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %58 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %56, %61
  store i32 %62, i32* %12, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %64 = load i32, i32* @AMC6821_REG_LTEMP_FAN_CTRL, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %67 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @set_slope_register(%struct.i2c_client* %63, i32 %64, i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %51
  %72 = load i64, i64* @EIO, align 8
  %73 = sub i64 0, %72
  store i64 %73, i64* %9, align 8
  br label %87

74:                                               ; preds = %51
  %75 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %76 = load i32, i32* @AMC6821_REG_RTEMP_FAN_CTRL, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %79 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @set_slope_register(%struct.i2c_client* %75, i32 %76, i32 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i64, i64* @EIO, align 8
  %85 = sub i64 0, %84
  store i64 %85, i64* %9, align 8
  br label %87

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %83, %71, %45
  %88 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %89 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %91 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i64, i64* %9, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %87, %24
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.amc6821_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i64 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @set_slope_register(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
