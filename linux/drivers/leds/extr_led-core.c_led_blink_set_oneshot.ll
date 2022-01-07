; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_blink_set_oneshot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_blink_set_oneshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32, i32 }

@LED_BLINK_ONESHOT = common dso_local global i32 0, align 4
@LED_BLINK_ONESHOT_STOP = common dso_local global i32 0, align 4
@LED_BLINK_INVERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_blink_set_oneshot(%struct.led_classdev* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.led_classdev*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @LED_BLINK_ONESHOT, align 4
  %10 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %11 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %16 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %15, i32 0, i32 1
  %17 = call i64 @timer_pending(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %46

20:                                               ; preds = %14, %4
  %21 = load i32, i32* @LED_BLINK_ONESHOT, align 4
  %22 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %23 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %22, i32 0, i32 0
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  %25 = load i32, i32* @LED_BLINK_ONESHOT_STOP, align 4
  %26 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %27 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %26, i32 0, i32 0
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load i32, i32* @LED_BLINK_INVERT, align 4
  %33 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %34 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %33, i32 0, i32 0
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  br label %41

36:                                               ; preds = %20
  %37 = load i32, i32* @LED_BLINK_INVERT, align 4
  %38 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %39 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %38, i32 0, i32 0
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %43 = load i64*, i64** %6, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = call i32 @led_blink_setup(%struct.led_classdev* %42, i64* %43, i64* %44)
  br label %46

46:                                               ; preds = %41, %19
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @led_blink_setup(%struct.led_classdev*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
