; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f75375s.c_set_pwm_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f75375s.c_set_pwm_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.f75375_data = type { i64, i64*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@f75373 = common dso_local global i64 0, align 8
@f75387 = common dso_local global i64 0, align 8
@F75375_REG_FAN_TIMER = common dso_local global i8 0, align 1
@F75375_REG_CONFIG1 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pwm_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.f75375_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call %struct.i2c_client* @to_i2c_client(%struct.device* %22)
  store %struct.i2c_client* %23, %struct.i2c_client** %11, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %25 = call %struct.f75375_data* @i2c_get_clientdata(%struct.i2c_client* %24)
  store %struct.f75375_data* %25, %struct.f75375_data** %12, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kstrtoul(i8* %26, i32 10, i64* %13)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %5, align 4
  br label %105

32:                                               ; preds = %4
  %33 = load i64, i64* %13, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %13, align 8
  %37 = icmp eq i64 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %105

41:                                               ; preds = %35, %32
  %42 = load %struct.f75375_data*, %struct.f75375_data** %12, align 8
  %43 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @f75373, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i64, i64* %13, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %105

53:                                               ; preds = %47, %41
  %54 = load %struct.f75375_data*, %struct.f75375_data** %12, align 8
  %55 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @f75387, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i8, i8* @F75375_REG_FAN_TIMER, align 1
  store i8 %60, i8* %16, align 1
  %61 = load i32, i32* %10, align 4
  %62 = call signext i8 @F75387_FAN_CTRL_LINEAR(i32 %61)
  store i8 %62, i8* %17, align 1
  br label %67

63:                                               ; preds = %53
  %64 = load i8, i8* @F75375_REG_CONFIG1, align 1
  store i8 %64, i8* %16, align 1
  %65 = load i32, i32* %10, align 4
  %66 = call signext i8 @F75375_FAN_CTRL_LINEAR(i32 %65)
  store i8 %66, i8* %17, align 1
  br label %67

67:                                               ; preds = %63, %59
  %68 = load %struct.f75375_data*, %struct.f75375_data** %12, align 8
  %69 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %68, i32 0, i32 2
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %72 = load i8, i8* %16, align 1
  %73 = call i32 @f75375_read8(%struct.i2c_client* %71, i8 signext %72)
  store i32 %73, i32* %15, align 4
  %74 = load i8, i8* %17, align 1
  %75 = sext i8 %74 to i32
  %76 = shl i32 1, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %15, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %15, align 4
  %80 = load i64, i64* %13, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %67
  %83 = load i8, i8* %17, align 1
  %84 = sext i8 %83 to i32
  %85 = shl i32 1, %84
  %86 = load i32, i32* %15, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %82, %67
  %89 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %90 = load i8, i8* %16, align 1
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @f75375_write8(%struct.i2c_client* %89, i8 signext %90, i32 %91)
  %93 = load i64, i64* %13, align 8
  %94 = load %struct.f75375_data*, %struct.f75375_data** %12, align 8
  %95 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 %93, i64* %99, align 8
  %100 = load %struct.f75375_data*, %struct.f75375_data** %12, align 8
  %101 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %100, i32 0, i32 2
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i64, i64* %9, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %88, %50, %38, %30
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.f75375_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local signext i8 @F75387_FAN_CTRL_LINEAR(i32) #1

declare dso_local signext i8 @F75375_FAN_CTRL_LINEAR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f75375_read8(%struct.i2c_client*, i8 signext) #1

declare dso_local i32 @f75375_write8(%struct.i2c_client*, i8 signext, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
