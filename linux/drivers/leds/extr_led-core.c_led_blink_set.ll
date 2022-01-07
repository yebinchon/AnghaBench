; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_blink_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_blink_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32, i32 }

@LED_BLINK_SW = common dso_local global i32 0, align 4
@LED_BLINK_ONESHOT = common dso_local global i32 0, align 4
@LED_BLINK_ONESHOT_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_blink_set(%struct.led_classdev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %8 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %7, i32 0, i32 1
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = load i32, i32* @LED_BLINK_SW, align 4
  %11 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %12 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %11, i32 0, i32 0
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load i32, i32* @LED_BLINK_ONESHOT, align 4
  %15 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %16 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %15, i32 0, i32 0
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  %18 = load i32, i32* @LED_BLINK_ONESHOT_STOP, align 4
  %19 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %20 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %19, i32 0, i32 0
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  %22 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = call i32 @led_blink_setup(%struct.led_classdev* %22, i64* %23, i64* %24)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @led_blink_setup(%struct.led_classdev*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
