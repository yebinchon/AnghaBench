; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_flash_strobe_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_flash_strobe_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }
%struct.led_classdev_flash = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @flash_strobe_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flash_strobe_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %12, align 8
  %19 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %20 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %23 = call i64 @led_sysfs_is_disabled(%struct.led_classdev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* @EBUSY, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %12, align 8
  br label %49

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @kstrtoul(i8* %29, i32 10, i64* %11)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %49

34:                                               ; preds = %28
  %35 = load i64, i64* %11, align 8
  %36 = icmp ugt i64 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %12, align 8
  br label %49

40:                                               ; preds = %34
  %41 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i64 @led_set_flash_strobe(%struct.led_classdev_flash* %41, i64 %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ult i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %49

47:                                               ; preds = %40
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %12, align 8
  br label %49

49:                                               ; preds = %47, %46, %37, %33, %25
  %50 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %51 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i64, i64* %12, align 8
  ret i64 %53
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.led_classdev_flash* @lcdev_to_flcdev(%struct.led_classdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @led_sysfs_is_disabled(%struct.led_classdev*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @led_set_flash_strobe(%struct.led_classdev_flash*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
