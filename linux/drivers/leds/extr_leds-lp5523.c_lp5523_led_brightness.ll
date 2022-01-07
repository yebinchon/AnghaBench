; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_lp5523_led_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_lp5523_led_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_led = type { i32, i64, %struct.lp55xx_chip* }
%struct.lp55xx_chip = type { i32 }

@LP5523_REG_LED_PWM_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp55xx_led*)* @lp5523_led_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp5523_led_brightness(%struct.lp55xx_led* %0) #0 {
  %2 = alloca %struct.lp55xx_led*, align 8
  %3 = alloca %struct.lp55xx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.lp55xx_led* %0, %struct.lp55xx_led** %2, align 8
  %5 = load %struct.lp55xx_led*, %struct.lp55xx_led** %2, align 8
  %6 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %5, i32 0, i32 2
  %7 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %6, align 8
  store %struct.lp55xx_chip* %7, %struct.lp55xx_chip** %3, align 8
  %8 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %9 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %12 = load i64, i64* @LP5523_REG_LED_PWM_BASE, align 8
  %13 = load %struct.lp55xx_led*, %struct.lp55xx_led** %2, align 8
  %14 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.lp55xx_led*, %struct.lp55xx_led** %2, align 8
  %18 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @lp55xx_write(%struct.lp55xx_chip* %11, i64 %16, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %22 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lp55xx_write(%struct.lp55xx_chip*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
