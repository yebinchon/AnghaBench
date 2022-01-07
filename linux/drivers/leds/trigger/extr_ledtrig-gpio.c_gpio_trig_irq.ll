; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-gpio.c_gpio_trig_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-gpio.c_gpio_trig_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.gpio_trig_data = type { i32, i64, i64, i32 }

@LED_FULL = common dso_local global i64 0, align 8
@LED_OFF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gpio_trig_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_trig_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.led_classdev*, align 8
  %6 = alloca %struct.gpio_trig_data*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.led_classdev*
  store %struct.led_classdev* %9, %struct.led_classdev** %5, align 8
  %10 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %11 = call %struct.gpio_trig_data* @led_get_trigger_data(%struct.led_classdev* %10)
  store %struct.gpio_trig_data* %11, %struct.gpio_trig_data** %6, align 8
  %12 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %6, align 8
  %13 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @gpio_get_value_cansleep(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %6, align 8
  %17 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %20, %2
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %6, align 8
  %30 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %6, align 8
  %35 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %6, align 8
  %38 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @led_set_brightness_nosleep(i32 %36, i64 %39)
  br label %47

41:                                               ; preds = %28
  %42 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %6, align 8
  %43 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* @LED_FULL, align 8
  %46 = call i32 @led_set_brightness_nosleep(i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %41, %33
  br label %54

48:                                               ; preds = %25
  %49 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %6, align 8
  %50 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* @LED_OFF, align 8
  %53 = call i32 @led_set_brightness_nosleep(i32 %51, i64 %52)
  br label %54

54:                                               ; preds = %48, %47
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %55
}

declare dso_local %struct.gpio_trig_data* @led_get_trigger_data(%struct.led_classdev*) #1

declare dso_local i32 @gpio_get_value_cansleep(i32) #1

declare dso_local i32 @led_set_brightness_nosleep(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
