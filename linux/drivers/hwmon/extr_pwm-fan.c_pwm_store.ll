; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pwm-fan.c_pwm_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pwm-fan.c_pwm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pwm_fan_ctx = type { i32 }

@MAX_PWM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pwm_fan_ctx*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.pwm_fan_ctx* @dev_get_drvdata(%struct.device* %13)
  store %struct.pwm_fan_ctx* %14, %struct.pwm_fan_ctx** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @kstrtoul(i8* %15, i32 10, i64* %11)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* @MAX_PWM, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %39

25:                                               ; preds = %18
  %26 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @__set_pwm(%struct.pwm_fan_ctx* %26, i64 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %39

33:                                               ; preds = %25
  %34 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @pwm_fan_update_state(%struct.pwm_fan_ctx* %34, i64 %35)
  %37 = load i64, i64* %9, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %33, %31, %22
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.pwm_fan_ctx* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @__set_pwm(%struct.pwm_fan_ctx*, i64) #1

declare dso_local i32 @pwm_fan_update_state(%struct.pwm_fan_ctx*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
