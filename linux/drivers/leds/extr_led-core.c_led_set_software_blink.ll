; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_set_software_blink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_set_software_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32, i32, i64, i64, i32, i32 }

@LED_OFF = common dso_local global i32 0, align 4
@LED_BLINK_SW = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i64, i64)* @led_set_software_blink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_set_software_blink(%struct.led_classdev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %9 = call i32 @led_get_brightness(%struct.led_classdev* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %15 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %18 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %23 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %26 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %21, %16
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %30 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %33 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %38 = load i32, i32* @LED_OFF, align 4
  %39 = call i32 @led_set_brightness_nosleep(%struct.led_classdev* %37, i32 %38)
  br label %59

40:                                               ; preds = %27
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %45 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %46 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @led_set_brightness_nosleep(%struct.led_classdev* %44, i32 %47)
  br label %59

49:                                               ; preds = %40
  %50 = load i32, i32* @LED_BLINK_SW, align 4
  %51 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %52 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %51, i32 0, i32 5
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %55 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %54, i32 0, i32 4
  %56 = load i64, i64* @jiffies, align 8
  %57 = add nsw i64 %56, 1
  %58 = call i32 @mod_timer(i32* %55, i64 %57)
  br label %59

59:                                               ; preds = %49, %43, %36
  ret void
}

declare dso_local i32 @led_get_brightness(%struct.led_classdev*) #1

declare dso_local i32 @led_set_brightness_nosleep(%struct.led_classdev*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
