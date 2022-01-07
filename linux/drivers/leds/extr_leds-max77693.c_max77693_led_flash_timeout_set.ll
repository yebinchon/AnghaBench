; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_led_flash_timeout_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_led_flash_timeout_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev_flash = type { i32 }
%struct.max77693_sub_led = type { i32 }
%struct.max77693_led_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev_flash*, i32)* @max77693_led_flash_timeout_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_led_flash_timeout_set(%struct.led_classdev_flash* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev_flash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.max77693_sub_led*, align 8
  %6 = alloca %struct.max77693_led_device*, align 8
  store %struct.led_classdev_flash* %0, %struct.led_classdev_flash** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %8 = call %struct.max77693_sub_led* @flcdev_to_sub_led(%struct.led_classdev_flash* %7)
  store %struct.max77693_sub_led* %8, %struct.max77693_sub_led** %5, align 8
  %9 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %5, align 8
  %10 = call %struct.max77693_led_device* @sub_led_to_led(%struct.max77693_sub_led* %9)
  store %struct.max77693_led_device* %10, %struct.max77693_led_device** %6, align 8
  %11 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %12 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %5, align 8
  %16 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %18 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  ret i32 0
}

declare dso_local %struct.max77693_sub_led* @flcdev_to_sub_led(%struct.led_classdev_flash*) #1

declare dso_local %struct.max77693_led_device* @sub_led_to_led(%struct.max77693_sub_led*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
