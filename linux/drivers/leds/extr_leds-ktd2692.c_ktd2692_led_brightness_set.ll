; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_led_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_led_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.led_classdev_flash = type { i32 }
%struct.ktd2692_context = type { i32, i32, i32 }

@LED_OFF = common dso_local global i32 0, align 4
@KTD2692_MODE_DISABLE = common dso_local global i32 0, align 4
@KTD2692_LOW = common dso_local global i32 0, align 4
@KTD2692_REG_MOVIE_CURRENT_BASE = common dso_local global i32 0, align 4
@KTD2692_MODE_MOVIE = common dso_local global i32 0, align 4
@KTD2692_REG_MODE_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @ktd2692_led_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ktd2692_led_brightness_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_classdev_flash*, align 8
  %6 = alloca %struct.ktd2692_context*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %8 = call %struct.led_classdev_flash* @lcdev_to_flcdev(%struct.led_classdev* %7)
  store %struct.led_classdev_flash* %8, %struct.led_classdev_flash** %5, align 8
  %9 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %10 = call %struct.ktd2692_context* @fled_cdev_to_led(%struct.led_classdev_flash* %9)
  store %struct.ktd2692_context* %10, %struct.ktd2692_context** %6, align 8
  %11 = load %struct.ktd2692_context*, %struct.ktd2692_context** %6, align 8
  %12 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @LED_OFF, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32, i32* @KTD2692_MODE_DISABLE, align 4
  %19 = load %struct.ktd2692_context*, %struct.ktd2692_context** %6, align 8
  %20 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ktd2692_context*, %struct.ktd2692_context** %6, align 8
  %22 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @KTD2692_LOW, align 4
  %25 = call i32 @gpiod_direction_output(i32 %23, i32 %24)
  br label %35

26:                                               ; preds = %2
  %27 = load %struct.ktd2692_context*, %struct.ktd2692_context** %6, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @KTD2692_REG_MOVIE_CURRENT_BASE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @ktd2692_expresswire_write(%struct.ktd2692_context* %27, i32 %30)
  %32 = load i32, i32* @KTD2692_MODE_MOVIE, align 4
  %33 = load %struct.ktd2692_context*, %struct.ktd2692_context** %6, align 8
  %34 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %17
  %36 = load %struct.ktd2692_context*, %struct.ktd2692_context** %6, align 8
  %37 = load %struct.ktd2692_context*, %struct.ktd2692_context** %6, align 8
  %38 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @KTD2692_REG_MODE_BASE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @ktd2692_expresswire_write(%struct.ktd2692_context* %36, i32 %41)
  %43 = load %struct.ktd2692_context*, %struct.ktd2692_context** %6, align 8
  %44 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  ret i32 0
}

declare dso_local %struct.led_classdev_flash* @lcdev_to_flcdev(%struct.led_classdev*) #1

declare dso_local %struct.ktd2692_context* @fled_cdev_to_led(%struct.led_classdev_flash*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

declare dso_local i32 @ktd2692_expresswire_write(%struct.ktd2692_context*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
