; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71805f.c_set_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71805f.c_set_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71805f_data = type { i32*, i32 }
%struct.sensor_device_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@f71805f_attr_pwm = common dso_local global i32* null, align 8
@S_IRUGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"chmod -w pwm%d failed\0A\00", align 1
@FAN_CTRL_MODE_MASK = common dso_local global i32 0, align 4
@FAN_CTRL_MODE_MANUAL = common dso_local global i32 0, align 4
@FAN_CTRL_MODE_TEMPERATURE = common dso_local global i32 0, align 4
@FAN_CTRL_MODE_SPEED = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"chmod +w pwm%d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.f71805f_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.f71805f_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.f71805f_data* %17, %struct.f71805f_data** %10, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute* %19, %struct.sensor_device_attribute** %11, align 8
  %20 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @kstrtoul(i8* %23, i32 10, i64* %14)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %5, align 4
  br label %122

29:                                               ; preds = %4
  %30 = load i64, i64* %14, align 8
  %31 = icmp ult i64 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %14, align 8
  %34 = icmp ugt i64 %33, 3
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %122

38:                                               ; preds = %32
  %39 = load i64, i64* %14, align 8
  %40 = icmp ugt i64 %39, 1
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 0
  %44 = load i32*, i32** @f71805f_attr_pwm, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @S_IRUGO, align 4
  %50 = call i64 @sysfs_chmod_file(i32* %43, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @dev_dbg(%struct.device* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %41
  br label %58

58:                                               ; preds = %57, %38
  %59 = load %struct.f71805f_data*, %struct.f71805f_data** %10, align 8
  %60 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %59, i32 0, i32 1
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.f71805f_data*, %struct.f71805f_data** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @F71805F_REG_FAN_CTRL(i32 %63)
  %65 = call i32 @f71805f_read8(%struct.f71805f_data* %62, i32 %64)
  %66 = load i32, i32* @FAN_CTRL_MODE_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  store i32 %68, i32* %13, align 4
  %69 = load i64, i64* %14, align 8
  switch i64 %69, label %82 [
    i64 1, label %70
    i64 2, label %74
    i64 3, label %78
  ]

70:                                               ; preds = %58
  %71 = load i32, i32* @FAN_CTRL_MODE_MANUAL, align 4
  %72 = load i32, i32* %13, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %13, align 4
  br label %82

74:                                               ; preds = %58
  %75 = load i32, i32* @FAN_CTRL_MODE_TEMPERATURE, align 4
  %76 = load i32, i32* %13, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %82

78:                                               ; preds = %58
  %79 = load i32, i32* @FAN_CTRL_MODE_SPEED, align 4
  %80 = load i32, i32* %13, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %58, %78, %74, %70
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.f71805f_data*, %struct.f71805f_data** %10, align 8
  %85 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  %90 = load %struct.f71805f_data*, %struct.f71805f_data** %10, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @F71805F_REG_FAN_CTRL(i32 %91)
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @f71805f_write8(%struct.f71805f_data* %90, i32 %92, i32 %93)
  %95 = load %struct.f71805f_data*, %struct.f71805f_data** %10, align 8
  %96 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %95, i32 0, i32 1
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i64, i64* %14, align 8
  %99 = icmp eq i64 %98, 1
  br i1 %99, label %100, label %119

100:                                              ; preds = %82
  %101 = load %struct.device*, %struct.device** %6, align 8
  %102 = getelementptr inbounds %struct.device, %struct.device* %101, i32 0, i32 0
  %103 = load i32*, i32** @f71805f_attr_pwm, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @S_IRUGO, align 4
  %109 = load i32, i32* @S_IWUSR, align 4
  %110 = or i32 %108, %109
  %111 = call i64 @sysfs_chmod_file(i32* %102, i32 %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %100
  %114 = load %struct.device*, %struct.device** %6, align 8
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  %117 = call i32 @dev_dbg(%struct.device* %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %113, %100
  br label %119

119:                                              ; preds = %118, %82
  %120 = load i64, i64* %9, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %119, %35, %27
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.f71805f_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @sysfs_chmod_file(i32*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f71805f_read8(%struct.f71805f_data*, i32) #1

declare dso_local i32 @F71805F_REG_FAN_CTRL(i32) #1

declare dso_local i32 @f71805f_write8(%struct.f71805f_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
