; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-gpio.c_gpio_led_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-gpio.c_gpio_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.gpio_led_data = type { i32, i64, i64, i32 (i32, i32, i32*, i32*)* }

@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @gpio_led_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_led_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_led_data*, align 8
  %6 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %8 = call %struct.gpio_led_data* @cdev_to_gpio_led_data(%struct.led_classdev* %7)
  store %struct.gpio_led_data* %8, %struct.gpio_led_data** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @LED_OFF, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

13:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load %struct.gpio_led_data*, %struct.gpio_led_data** %5, align 8
  %16 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.gpio_led_data*, %struct.gpio_led_data** %5, align 8
  %21 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %20, i32 0, i32 3
  %22 = load i32 (i32, i32, i32*, i32*)*, i32 (i32, i32, i32*, i32*)** %21, align 8
  %23 = load %struct.gpio_led_data*, %struct.gpio_led_data** %5, align 8
  %24 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 %22(i32 %25, i32 %26, i32* null, i32* null)
  %28 = load %struct.gpio_led_data*, %struct.gpio_led_data** %5, align 8
  %29 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  br label %48

30:                                               ; preds = %14
  %31 = load %struct.gpio_led_data*, %struct.gpio_led_data** %5, align 8
  %32 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.gpio_led_data*, %struct.gpio_led_data** %5, align 8
  %37 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @gpiod_set_value_cansleep(i32 %38, i32 %39)
  br label %47

41:                                               ; preds = %30
  %42 = load %struct.gpio_led_data*, %struct.gpio_led_data** %5, align 8
  %43 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @gpiod_set_value(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %35
  br label %48

48:                                               ; preds = %47, %19
  ret void
}

declare dso_local %struct.gpio_led_data* @cdev_to_gpio_led_data(%struct.led_classdev*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
