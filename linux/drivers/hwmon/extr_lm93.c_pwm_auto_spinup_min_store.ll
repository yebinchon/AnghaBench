; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_pwm_auto_spinup_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_pwm_auto_spinup_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm93_data = type { i32**, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@LM93_PWM_CTL3 = common dso_local global i64 0, align 8
@LM93_PWM_CTL4 = common dso_local global i64 0, align 8
@LM93_PWM_MAP_LO_FREQ = common dso_local global i32 0, align 4
@LM93_PWM_MAP_HI_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_auto_spinup_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_auto_spinup_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lm93_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.lm93_data* @dev_get_drvdata(%struct.device* %21)
  store %struct.lm93_data* %22, %struct.lm93_data** %11, align 8
  %23 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %24 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %23, i32 0, i32 2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %24, align 8
  store %struct.i2c_client* %25, %struct.i2c_client** %12, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kstrtoul(i8* %26, i32 10, i64* %15)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %5, align 4
  br label %81

32:                                               ; preds = %4
  %33 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %34 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i64, i64* @LM93_PWM_CTL3, align 8
  %39 = call i32 @LM93_REG_PWM_CTL(i32 %37, i64 %38)
  %40 = call i32 @lm93_read_byte(%struct.i2c_client* %36, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i64, i64* @LM93_PWM_CTL4, align 8
  %44 = call i32 @LM93_REG_PWM_CTL(i32 %42, i64 %43)
  %45 = call i32 @lm93_read_byte(%struct.i2c_client* %41, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %13, align 4
  %47 = and i32 %46, 240
  %48 = load i64, i64* %15, align 8
  %49 = load i32, i32* %14, align 4
  %50 = and i32 %49, 7
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = load i32, i32* @LM93_PWM_MAP_LO_FREQ, align 4
  br label %56

54:                                               ; preds = %32
  %55 = load i32, i32* @LM93_PWM_MAP_HI_FREQ, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @LM93_PWM_TO_REG(i64 %48, i32 %57)
  %59 = or i32 %47, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %62 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @LM93_PWM_CTL3, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %60, i32* %69, align 4
  %70 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i64, i64* @LM93_PWM_CTL3, align 8
  %73 = call i32 @LM93_REG_PWM_CTL(i32 %71, i64 %72)
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @lm93_write_byte(%struct.i2c_client* %70, i32 %73, i32 %74)
  %76 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %77 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i64, i64* %9, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %56, %30
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm93_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm93_read_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM93_REG_PWM_CTL(i32, i64) #1

declare dso_local i32 @LM93_PWM_TO_REG(i64, i32) #1

declare dso_local i32 @lm93_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
