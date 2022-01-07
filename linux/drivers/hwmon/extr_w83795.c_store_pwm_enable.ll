; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83795_data = type { i32*, i32*, i32 }
%struct.sensor_device_attribute_2 = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Automatic fan speed control support disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Build with CONFIG_SENSORS_W83795_FANCTRL=y if you want it\0A\00", align 1
@EOPNOTSUPP = common dso_local global i64 0, align 8
@W83795_REG_FCMS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.w83795_data*, align 8
  %12 = alloca %struct.sensor_device_attribute_2*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.i2c_client* @to_i2c_client(%struct.device* %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.w83795_data* @w83795_update_pwm_config(%struct.device* %18)
  store %struct.w83795_data* %19, %struct.w83795_data** %11, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %21 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %20)
  store %struct.sensor_device_attribute_2* %21, %struct.sensor_device_attribute_2** %12, align 8
  %22 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @kstrtoul(i8* %25, i32 10, i64* %14)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %125

31:                                               ; preds = %4
  %32 = load i64, i64* %14, align 8
  %33 = icmp ult i64 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %14, align 8
  %36 = icmp ugt i64 %35, 2
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %125

40:                                               ; preds = %34
  %41 = load i64, i64* %14, align 8
  %42 = icmp ugt i64 %41, 1
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @dev_warn(%struct.device* %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @dev_warn(%struct.device* %46, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i64, i64* @EOPNOTSUPP, align 8
  %49 = sub i64 0, %48
  store i64 %49, i64* %5, align 8
  br label %125

50:                                               ; preds = %40
  %51 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %52 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %51, i32 0, i32 2
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load i64, i64* %14, align 8
  switch i64 %54, label %120 [
    i64 1, label %55
    i64 2, label %103
  ]

55:                                               ; preds = %50
  %56 = load i32, i32* %13, align 4
  %57 = shl i32 1, %56
  %58 = xor i32 %57, -1
  %59 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %60 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %58
  store i32 %64, i32* %62, align 4
  %65 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %66 = load i32, i32* @W83795_REG_FCMS1, align 4
  %67 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %68 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @w83795_write(%struct.i2c_client* %65, i32 %66, i32 %71)
  store i32 0, i32* %15, align 4
  br label %73

73:                                               ; preds = %99, %55
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %74, 6
  br i1 %75, label %76, label %102

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = shl i32 1, %77
  %79 = xor i32 %78, -1
  %80 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %81 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %79
  store i32 %87, i32* %85, align 4
  %88 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @W83795_REG_TFMR(i32 %89)
  %91 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %92 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @w83795_write(%struct.i2c_client* %88, i32 %90, i32 %97)
  br label %99

99:                                               ; preds = %76
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  br label %73

102:                                              ; preds = %73
  br label %120

103:                                              ; preds = %50
  %104 = load i32, i32* %13, align 4
  %105 = shl i32 1, %104
  %106 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %107 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %105
  store i32 %111, i32* %109, align 4
  %112 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %113 = load i32, i32* @W83795_REG_FCMS1, align 4
  %114 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %115 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @w83795_write(%struct.i2c_client* %112, i32 %113, i32 %118)
  br label %120

120:                                              ; preds = %50, %103, %102
  %121 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %122 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %121, i32 0, i32 2
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load i64, i64* %9, align 8
  store i64 %124, i64* %5, align 8
  br label %125

125:                                              ; preds = %120, %43, %37, %28
  %126 = load i64, i64* %5, align 8
  ret i64 %126
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83795_data* @w83795_update_pwm_config(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83795_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @W83795_REG_TFMR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
