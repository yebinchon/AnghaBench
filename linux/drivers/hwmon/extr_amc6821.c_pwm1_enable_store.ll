; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_pwm1_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_pwm1_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.amc6821_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@AMC6821_REG_CONF1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Error reading configuration register, aborting.\0A\00", align 1
@AMC6821_CONF1_FDRC0 = common dso_local global i32 0, align 4
@AMC6821_CONF1_FDRC1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Configuration register write error, aborting.\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm1_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm1_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.amc6821_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.amc6821_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.amc6821_data* %15, %struct.amc6821_data** %10, align 8
  %16 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %17 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %16, i32 0, i32 1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtol(i8* %19, i32 10, i64* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %88

25:                                               ; preds = %4
  %26 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %27 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %30 = load i32, i32* @AMC6821_REG_CONF1, align 4
  %31 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %9, align 8
  br label %82

40:                                               ; preds = %25
  %41 = load i64, i64* %12, align 8
  switch i64 %41, label %66 [
    i64 1, label %42
    i64 2, label %51
    i64 3, label %59
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* @AMC6821_CONF1_FDRC0, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %13, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* @AMC6821_CONF1_FDRC1, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %13, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %13, align 4
  br label %69

51:                                               ; preds = %40
  %52 = load i32, i32* @AMC6821_CONF1_FDRC0, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %13, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* @AMC6821_CONF1_FDRC1, align 4
  %57 = load i32, i32* %13, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %13, align 4
  br label %69

59:                                               ; preds = %40
  %60 = load i32, i32* @AMC6821_CONF1_FDRC0, align 4
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* @AMC6821_CONF1_FDRC1, align 4
  %64 = load i32, i32* %13, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %13, align 4
  br label %69

66:                                               ; preds = %40
  %67 = load i64, i64* @EINVAL, align 8
  %68 = sub i64 0, %67
  store i64 %68, i64* %9, align 8
  br label %82

69:                                               ; preds = %59, %51, %42
  %70 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %71 = load i32, i32* @AMC6821_REG_CONF1, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i64, i64* @EIO, align 8
  %80 = sub i64 0, %79
  store i64 %80, i64* %9, align 8
  br label %81

81:                                               ; preds = %75, %69
  br label %82

82:                                               ; preds = %81, %66, %34
  %83 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %84 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i64, i64* %9, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %23
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.amc6821_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
