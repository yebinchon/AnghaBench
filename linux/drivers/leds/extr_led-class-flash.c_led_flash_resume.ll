; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_led_flash_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_led_flash_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.led_classdev_flash = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@flash_brightness_set = common dso_local global i32 0, align 4
@timeout_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*)* @led_flash_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_flash_resume(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  %3 = alloca %struct.led_classdev_flash*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %4 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %5 = call %struct.led_classdev_flash* @lcdev_to_flcdev(%struct.led_classdev* %4)
  store %struct.led_classdev_flash* %5, %struct.led_classdev_flash** %3, align 8
  %6 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %7 = load i32, i32* @flash_brightness_set, align 4
  %8 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %9 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @call_flash_op(%struct.led_classdev_flash* %6, i32 %7, i32 %11)
  %13 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %14 = load i32, i32* @timeout_set, align 4
  %15 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %16 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @call_flash_op(%struct.led_classdev_flash* %13, i32 %14, i32 %18)
  ret void
}

declare dso_local %struct.led_classdev_flash* @lcdev_to_flcdev(%struct.led_classdev*) #1

declare dso_local i32 @call_flash_op(%struct.led_classdev_flash*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
