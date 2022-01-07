; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_led_set_flash_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_led_set_flash_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev_flash = type { %struct.led_flash_setting, %struct.led_classdev }
%struct.led_flash_setting = type { i32 }
%struct.led_classdev = type { i32 }

@LED_SUSPENDED = common dso_local global i32 0, align 4
@timeout_set = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @led_set_flash_timeout(%struct.led_classdev_flash* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.led_classdev_flash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.led_classdev*, align 8
  %7 = alloca %struct.led_flash_setting*, align 8
  store %struct.led_classdev_flash* %0, %struct.led_classdev_flash** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %4, align 8
  %9 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %8, i32 0, i32 1
  store %struct.led_classdev* %9, %struct.led_classdev** %6, align 8
  %10 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %4, align 8
  %11 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %10, i32 0, i32 0
  store %struct.led_flash_setting* %11, %struct.led_flash_setting** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.led_flash_setting*, %struct.led_flash_setting** %7, align 8
  %14 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.led_flash_setting*, %struct.led_flash_setting** %7, align 8
  %16 = call i32 @led_clamp_align(%struct.led_flash_setting* %15)
  %17 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %18 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @LED_SUSPENDED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %4, align 8
  %25 = load i32, i32* @timeout_set, align 4
  %26 = load %struct.led_flash_setting*, %struct.led_flash_setting** %7, align 8
  %27 = getelementptr inbounds %struct.led_flash_setting, %struct.led_flash_setting* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @call_flash_op(%struct.led_classdev_flash* %24, i32 %25, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %23
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @led_clamp_align(%struct.led_flash_setting*) #1

declare dso_local i32 @call_flash_op(%struct.led_classdev_flash*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
