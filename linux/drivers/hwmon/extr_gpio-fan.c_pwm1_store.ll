; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gpio-fan.c_pwm1_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gpio-fan.c_pwm1_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gpio_fan_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm1_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm1_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gpio_fan_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.gpio_fan_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.gpio_fan_data* %15, %struct.gpio_fan_data** %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @kstrtoul(i8* %18, i32 10, i64* %11)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %11, align 8
  %23 = icmp ugt i64 %22, 255
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %55

27:                                               ; preds = %21
  %28 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %10, align 8
  %29 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %10, align 8
  %32 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @EPERM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %13, align 4
  br label %50

38:                                               ; preds = %27
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %10, align 8
  %41 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = mul i64 %39, %44
  %46 = call i32 @DIV_ROUND_UP(i64 %45, i32 255)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %10, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @set_fan_speed(%struct.gpio_fan_data* %47, i32 %48)
  br label %50

50:                                               ; preds = %38, %35
  %51 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %10, align 8
  %52 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %24
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.gpio_fan_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @set_fan_speed(%struct.gpio_fan_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
