; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_blink_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_blink_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 (%struct.led_classdev*, i64*, i64*)*, i32 }

@LED_BLINK_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i64*, i64*)* @led_blink_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_blink_setup(%struct.led_classdev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load i32, i32* @LED_BLINK_ONESHOT, align 4
  %8 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %9 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %8, i32 0, i32 1
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %3
  %13 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %14 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %13, i32 0, i32 0
  %15 = load i32 (%struct.led_classdev*, i64*, i64*)*, i32 (%struct.led_classdev*, i64*, i64*)** %14, align 8
  %16 = icmp ne i32 (%struct.led_classdev*, i64*, i64*)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %19 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %18, i32 0, i32 0
  %20 = load i32 (%struct.led_classdev*, i64*, i64*)*, i32 (%struct.led_classdev*, i64*, i64*)** %19, align 8
  %21 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = call i32 %20(%struct.led_classdev* %21, i64* %22, i64* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %45

27:                                               ; preds = %17, %12, %3
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i64*, i64** %6, align 8
  store i64 500, i64* %36, align 8
  %37 = load i64*, i64** %5, align 8
  store i64 500, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %31, %27
  %39 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @led_set_software_blink(%struct.led_classdev* %39, i64 %41, i64 %43)
  br label %45

45:                                               ; preds = %38, %26
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @led_set_software_blink(%struct.led_classdev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
