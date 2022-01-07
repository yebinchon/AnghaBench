; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f75375s.c_set_fan_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f75375s.c_set_fan_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.f75375_data = type { i64, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@f75387 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_fan_target(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.i2c_client* @to_i2c_client(%struct.device* %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %22 = call %struct.f75375_data* @i2c_get_clientdata(%struct.i2c_client* %21)
  store %struct.f75375_data* %22, %struct.f75375_data** %12, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @kstrtoul(i8* %23, i32 10, i64* %13)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %5, align 4
  br label %89

29:                                               ; preds = %4
  %30 = load %struct.f75375_data*, %struct.f75375_data** %12, align 8
  %31 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @auto_mode_enabled(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %89

42:                                               ; preds = %29
  %43 = load %struct.f75375_data*, %struct.f75375_data** %12, align 8
  %44 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @f75387, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load %struct.f75375_data*, %struct.f75375_data** %12, align 8
  %50 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @duty_mode_enabled(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %89

61:                                               ; preds = %48, %42
  %62 = load %struct.f75375_data*, %struct.f75375_data** %12, align 8
  %63 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %62, i32 0, i32 1
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @rpm_to_reg(i64 %65)
  %67 = load %struct.f75375_data*, %struct.f75375_data** %12, align 8
  %68 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  %73 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @F75375_REG_FAN_EXP(i32 %74)
  %76 = load %struct.f75375_data*, %struct.f75375_data** %12, align 8
  %77 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @f75375_write16(%struct.i2c_client* %73, i32 %75, i32 %82)
  %84 = load %struct.f75375_data*, %struct.f75375_data** %12, align 8
  %85 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i64, i64* %9, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %61, %58, %39, %27
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.f75375_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @auto_mode_enabled(i32) #1

declare dso_local i64 @duty_mode_enabled(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rpm_to_reg(i64) #1

declare dso_local i32 @f75375_write16(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @F75375_REG_FAN_EXP(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
