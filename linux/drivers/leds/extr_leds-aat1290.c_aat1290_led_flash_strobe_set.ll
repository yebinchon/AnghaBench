; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-aat1290.c_aat1290_led_flash_strobe_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-aat1290.c_aat1290_led_flash_strobe_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev_flash = type { %struct.led_flash_setting, %struct.led_classdev }
%struct.led_flash_setting = type { i32 }
%struct.led_classdev = type { i64 }
%struct.aat1290_led = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev_flash*, i32)* @aat1290_led_flash_strobe_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aat1290_led_flash_strobe_set(%struct.led_classdev_flash* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev_flash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aat1290_led*, align 8
  %6 = alloca %struct.led_classdev*, align 8
  %7 = alloca %struct.led_flash_setting*, align 8
  store %struct.led_classdev_flash* %0, %struct.led_classdev_flash** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %9 = call %struct.aat1290_led* @fled_cdev_to_led(%struct.led_classdev_flash* %8)
  store %struct.aat1290_led* %9, %struct.aat1290_led** %5, align 8
  %10 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %11 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %10, i32 0, i32 1
  store %struct.led_classdev* %11, %struct.led_classdev** %6, align 8
  %12 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %13 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %12, i32 0, i32 0
  store %struct.led_flash_setting* %13, %struct.led_flash_setting** %7, align 8
  %14 = load %struct.aat1290_led*, %struct.aat1290_led** %5, align 8
  %15 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.aat1290_led*, %struct.aat1290_led** %5, align 8
  %21 = load %struct.led_flash_setting*, %struct.led_flash_setting** %7, align 8
  %22 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @aat1290_set_flash_safety_timer(%struct.aat1290_led* %20, i32 %23)
  %25 = load %struct.aat1290_led*, %struct.aat1290_led** %5, align 8
  %26 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gpiod_direction_output(i32 %27, i32 1)
  br label %38

29:                                               ; preds = %2
  %30 = load %struct.aat1290_led*, %struct.aat1290_led** %5, align 8
  %31 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gpiod_direction_output(i32 %32, i32 0)
  %34 = load %struct.aat1290_led*, %struct.aat1290_led** %5, align 8
  %35 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gpiod_direction_output(i32 %36, i32 0)
  br label %38

38:                                               ; preds = %29, %19
  %39 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %40 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.aat1290_led*, %struct.aat1290_led** %5, align 8
  %42 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.aat1290_led*, %struct.aat1290_led** %5, align 8
  %44 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  ret i32 0
}

declare dso_local %struct.aat1290_led* @fled_cdev_to_led(%struct.led_classdev_flash*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @aat1290_set_flash_safety_timer(%struct.aat1290_led*, i32) #1

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
