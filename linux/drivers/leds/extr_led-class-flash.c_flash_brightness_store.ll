; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_flash_brightness_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_flash_brightness_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }
%struct.led_classdev_flash = type { i32 }

@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @flash_brightness_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flash_brightness_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.led_classdev*, align 8
  %10 = alloca %struct.led_classdev_flash*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %13)
  store %struct.led_classdev* %14, %struct.led_classdev** %9, align 8
  %15 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %16 = call %struct.led_classdev_flash* @lcdev_to_flcdev(%struct.led_classdev* %15)
  store %struct.led_classdev_flash* %16, %struct.led_classdev_flash** %10, align 8
  %17 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %18 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %21 = call i64 @led_sysfs_is_disabled(%struct.led_classdev* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @EBUSY, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %12, align 8
  br label %41

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @kstrtoul(i8* %27, i32 10, i64* %11)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %41

32:                                               ; preds = %26
  %33 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @led_set_flash_brightness(%struct.led_classdev_flash* %33, i64 %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp ult i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %41

39:                                               ; preds = %32
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %12, align 8
  br label %41

41:                                               ; preds = %39, %38, %31, %23
  %42 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %43 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i64, i64* %12, align 8
  ret i64 %45
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.led_classdev_flash* @lcdev_to_flcdev(%struct.led_classdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @led_sysfs_is_disabled(%struct.led_classdev*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @led_set_flash_brightness(%struct.led_classdev_flash*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
