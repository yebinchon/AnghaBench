; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_set_flash_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_set_flash_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev_flash = type { i32 }
%struct.as3645a = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev_flash*, i32)* @as3645a_set_flash_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3645a_set_flash_timeout(%struct.led_classdev_flash* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev_flash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.as3645a*, align 8
  store %struct.led_classdev_flash* %0, %struct.led_classdev_flash** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %7 = call %struct.as3645a* @fled_to_as3645a(%struct.led_classdev_flash* %6)
  store %struct.as3645a* %7, %struct.as3645a** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @AS_TIMER_US_TO_CODE(i32 %8)
  %10 = load %struct.as3645a*, %struct.as3645a** %5, align 8
  %11 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.as3645a*, %struct.as3645a** %5, align 8
  %13 = call i32 @as3645a_set_timeout(%struct.as3645a* %12)
  ret i32 %13
}

declare dso_local %struct.as3645a* @fled_to_as3645a(%struct.led_classdev_flash*) #1

declare dso_local i32 @AS_TIMER_US_TO_CODE(i32) #1

declare dso_local i32 @as3645a_set_timeout(%struct.as3645a*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
