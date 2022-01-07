; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31790.c_max31790_write_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31790.c_max31790_write_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max31790_data = type { i64*, i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX31790_FAN_CFG_TACH_INPUT_EN = common dso_local global i32 0, align 4
@MAX31790_FAN_CFG_RPM_MODE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64)* @max31790_write_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31790_write_pwm(%struct.device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.max31790_data*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.max31790_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.max31790_data* %14, %struct.max31790_data** %9, align 8
  %15 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %16 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %15, i32 0, i32 3
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %19 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %18, i32 0, i32 2
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %105 [
    i32 128, label %22
    i32 129, label %51
  ]

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %8, align 8
  %27 = icmp sgt i64 %26, 255
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  br label %108

31:                                               ; preds = %25
  %32 = load i64, i64* %8, align 8
  %33 = shl i64 %32, 8
  %34 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %35 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 %33, i64* %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @MAX31790_REG_PWMOUT(i32 %41)
  %43 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %44 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %40, i32 %42, i64 %49)
  store i32 %50, i32* %12, align 4
  br label %108

51:                                               ; preds = %4
  %52 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %53 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i64, i64* %8, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = load i32, i32* @MAX31790_FAN_CFG_TACH_INPUT_EN, align 4
  %63 = load i32, i32* @MAX31790_FAN_CFG_RPM_MODE, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %92

68:                                               ; preds = %51
  %69 = load i64, i64* %8, align 8
  %70 = icmp eq i64 %69, 1
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @MAX31790_FAN_CFG_TACH_INPUT_EN, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @MAX31790_FAN_CFG_RPM_MODE, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  store i32 %77, i32* %11, align 4
  br label %91

78:                                               ; preds = %68
  %79 = load i64, i64* %8, align 8
  %80 = icmp eq i64 %79, 2
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* @MAX31790_FAN_CFG_TACH_INPUT_EN, align 4
  %83 = load i32, i32* @MAX31790_FAN_CFG_RPM_MODE, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %90

87:                                               ; preds = %78
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %12, align 4
  br label %108

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %61
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %95 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  %100 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @MAX31790_REG_FAN_CONFIG(i32 %101)
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %100, i32 %102, i32 %103)
  store i32 %104, i32* %12, align 4
  br label %108

105:                                              ; preds = %4
  %106 = load i32, i32* @EOPNOTSUPP, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %105, %92, %87, %31, %28
  %109 = load %struct.max31790_data*, %struct.max31790_data** %9, align 8
  %110 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %109, i32 0, i32 2
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %12, align 4
  ret i32 %112
}

declare dso_local %struct.max31790_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @MAX31790_REG_PWMOUT(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @MAX31790_REG_FAN_CONFIG(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
