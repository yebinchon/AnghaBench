; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ss4200.c_nasgpio_led_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ss4200.c_nasgpio_led_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }

@LED_HALF = common dso_local global i32 0, align 4
@nasgpio_gpio_lock = common dso_local global i32 0, align 4
@GPO_BLINK = common dso_local global i32 0, align 4
@GP_LVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @nasgpio_led_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nasgpio_led_set_brightness(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @LED_HALF, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %5, align 4
  br label %10

10:                                               ; preds = %9, %2
  %11 = call i32 @spin_lock(i32* @nasgpio_gpio_lock)
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %16 = load i32, i32* @GPO_BLINK, align 4
  %17 = call i32 @__nasgpio_led_set_attr(%struct.led_classdev* %15, i32 %16, i32 0)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %20 = load i32, i32* @GP_LVL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @__nasgpio_led_set_attr(%struct.led_classdev* %19, i32 %20, i32 %21)
  %23 = call i32 @spin_unlock(i32* @nasgpio_gpio_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__nasgpio_led_set_attr(%struct.led_classdev*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
