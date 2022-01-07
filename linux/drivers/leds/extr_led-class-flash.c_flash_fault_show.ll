; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_flash_fault_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_flash_fault_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }
%struct.led_classdev_flash = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LED_NUM_FLASH_FAULTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@led_flash_fault_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @flash_fault_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flash_fault_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.led_classdev*, align 8
  %9 = alloca %struct.led_classdev_flash*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %16)
  store %struct.led_classdev* %17, %struct.led_classdev** %8, align 8
  %18 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %19 = call %struct.led_classdev_flash* @lcdev_to_flcdev(%struct.led_classdev* %18)
  store %struct.led_classdev_flash* %19, %struct.led_classdev_flash** %9, align 8
  store i32 1, i32* %11, align 4
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %12, align 8
  %21 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %9, align 8
  %22 = call i32 @led_get_flash_fault(%struct.led_classdev_flash* %21, i32* %10)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %61

28:                                               ; preds = %3
  %29 = load i8*, i8** %7, align 8
  store i8 0, i8* %29, align 1
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %54, %28
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @LED_NUM_FLASH_FAULTS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i8*, i8** %12, align 8
  %41 = load i8**, i8*** @led_flash_fault_names, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %12, align 8
  br label %51

51:                                               ; preds = %39, %34
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %30

57:                                               ; preds = %30
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %25
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.led_classdev_flash* @lcdev_to_flcdev(%struct.led_classdev*) #1

declare dso_local i32 @led_get_flash_fault(%struct.led_classdev_flash*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
