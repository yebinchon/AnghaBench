; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_pwm_auto_spinup_min_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_pwm_auto_spinup_min_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm93_data = type { i32** }
%struct.TYPE_2__ = type { i32 }

@LM93_PWM_CTL3 = common dso_local global i64 0, align 8
@LM93_PWM_CTL4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@LM93_PWM_MAP_LO_FREQ = common dso_local global i32 0, align 4
@LM93_PWM_MAP_HI_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pwm_auto_spinup_min_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_auto_spinup_min_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lm93_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %12 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.lm93_data* @lm93_update_device(%struct.device* %15)
  store %struct.lm93_data* %16, %struct.lm93_data** %8, align 8
  %17 = load %struct.lm93_data*, %struct.lm93_data** %8, align 8
  %18 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %17, i32 0, i32 0
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @LM93_PWM_CTL3, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.lm93_data*, %struct.lm93_data** %8, align 8
  %28 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @LM93_PWM_CTL4, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 15
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 7
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %3
  %44 = load i32, i32* @LM93_PWM_MAP_LO_FREQ, align 4
  br label %47

45:                                               ; preds = %3
  %46 = load i32, i32* @LM93_PWM_MAP_HI_FREQ, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = call i32 @LM93_PWM_FROM_REG(i32 %39, i32 %48)
  %50 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %49)
  ret i32 %50
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm93_data* @lm93_update_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @LM93_PWM_FROM_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
