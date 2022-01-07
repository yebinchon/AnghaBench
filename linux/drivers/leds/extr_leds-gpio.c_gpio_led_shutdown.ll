; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-gpio.c_gpio_led_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-gpio.c_gpio_led_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpio_leds_priv = type { i32, %struct.gpio_led_data* }
%struct.gpio_led_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LED_RETAIN_AT_SHUTDOWN = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @gpio_led_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_led_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.gpio_leds_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_led_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.gpio_leds_priv* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.gpio_leds_priv* %7, %struct.gpio_leds_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %34, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.gpio_leds_priv*, %struct.gpio_leds_priv** %3, align 8
  %11 = getelementptr inbounds %struct.gpio_leds_priv, %struct.gpio_leds_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load %struct.gpio_leds_priv*, %struct.gpio_leds_priv** %3, align 8
  %16 = getelementptr inbounds %struct.gpio_leds_priv, %struct.gpio_leds_priv* %15, i32 0, i32 1
  %17 = load %struct.gpio_led_data*, %struct.gpio_led_data** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %17, i64 %19
  store %struct.gpio_led_data* %20, %struct.gpio_led_data** %5, align 8
  %21 = load %struct.gpio_led_data*, %struct.gpio_led_data** %5, align 8
  %22 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LED_RETAIN_AT_SHUTDOWN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %14
  %29 = load %struct.gpio_led_data*, %struct.gpio_led_data** %5, align 8
  %30 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %29, i32 0, i32 0
  %31 = load i32, i32* @LED_OFF, align 4
  %32 = call i32 @gpio_led_set(%struct.TYPE_2__* %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %8

37:                                               ; preds = %8
  ret void
}

declare dso_local %struct.gpio_leds_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @gpio_led_set(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
