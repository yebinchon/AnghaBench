; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-aat1290.c_aat1290_led_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-aat1290.c_aat1290_led_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.led_classdev_flash = type { i32 }
%struct.aat1290_led = type { i32, i32, i32, i32 }

@AAT1290_MM_CURRENT_RATIO_ADDR = common dso_local global i32 0, align 4
@AAT1290_MM_TO_FL_1_92 = common dso_local global i32 0, align 4
@AAT1290_MOVIE_MODE_CURRENT_ADDR = common dso_local global i32 0, align 4
@AAT1290_MAX_MM_CURR_PERCENT_0 = common dso_local global i32 0, align 4
@AAT1290_MOVIE_MODE_CONFIG_ADDR = common dso_local global i32 0, align 4
@AAT1290_MOVIE_MODE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @aat1290_led_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aat1290_led_brightness_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_classdev_flash*, align 8
  %6 = alloca %struct.aat1290_led*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %8 = call %struct.led_classdev_flash* @led_cdev_to_fled_cdev(%struct.led_classdev* %7)
  store %struct.led_classdev_flash* %8, %struct.led_classdev_flash** %5, align 8
  %9 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %10 = call %struct.aat1290_led* @fled_cdev_to_led(%struct.led_classdev_flash* %9)
  store %struct.aat1290_led* %10, %struct.aat1290_led** %6, align 8
  %11 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %12 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %18 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gpiod_direction_output(i32 %19, i32 0)
  %21 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %22 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gpiod_direction_output(i32 %23, i32 0)
  %25 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %26 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %50

27:                                               ; preds = %2
  %28 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %29 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %34 = load i32, i32* @AAT1290_MM_CURRENT_RATIO_ADDR, align 4
  %35 = load i32, i32* @AAT1290_MM_TO_FL_1_92, align 4
  %36 = call i32 @aat1290_as2cwire_write(%struct.aat1290_led* %33, i32 %34, i32 %35)
  %37 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %38 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %32, %27
  %40 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %41 = load i32, i32* @AAT1290_MOVIE_MODE_CURRENT_ADDR, align 4
  %42 = load i32, i32* @AAT1290_MAX_MM_CURR_PERCENT_0, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub i32 %42, %43
  %45 = call i32 @aat1290_as2cwire_write(%struct.aat1290_led* %40, i32 %41, i32 %44)
  %46 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %47 = load i32, i32* @AAT1290_MOVIE_MODE_CONFIG_ADDR, align 4
  %48 = load i32, i32* @AAT1290_MOVIE_MODE_ON, align 4
  %49 = call i32 @aat1290_as2cwire_write(%struct.aat1290_led* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %39, %16
  %51 = load %struct.aat1290_led*, %struct.aat1290_led** %6, align 8
  %52 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  ret i32 0
}

declare dso_local %struct.led_classdev_flash* @led_cdev_to_fled_cdev(%struct.led_classdev*) #1

declare dso_local %struct.aat1290_led* @fled_cdev_to_led(%struct.led_classdev_flash*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

declare dso_local i32 @aat1290_as2cwire_write(%struct.aat1290_led*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
