; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32, i32, i32 }

@LED_BLINK_SW = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@LED_BLINK_DISABLE = common dso_local global i32 0, align 4
@LED_BLINK_BRIGHTNESS_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_brightness(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @LED_BLINK_SW, align 4
  %6 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %7 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %6, i32 0, i32 1
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @LED_OFF, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i32, i32* @LED_BLINK_DISABLE, align 4
  %16 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %17 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %16, i32 0, i32 1
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %20 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %19, i32 0, i32 2
  %21 = call i32 @schedule_work(i32* %20)
  br label %30

22:                                               ; preds = %10
  %23 = load i32, i32* @LED_BLINK_BRIGHTNESS_CHANGE, align 4
  %24 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %25 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %24, i32 0, i32 1
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %29 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %22, %14
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @led_set_brightness_nosleep(%struct.led_classdev* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %30
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @led_set_brightness_nosleep(%struct.led_classdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
