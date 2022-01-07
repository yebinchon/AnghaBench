; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3601x.c_lm3601x_flash_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3601x.c_lm3601x_flash_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev_flash = type { i32 }
%struct.lm3601x_led = type { i32, i32 }

@LED_OFF = common dso_local global i32 0, align 4
@LM3601X_ENABLE_REG = common dso_local global i32 0, align 4
@LM3601X_MODE_STROBE = common dso_local global i32 0, align 4
@LM3601X_STROBE_REG_DIV = common dso_local global i32 0, align 4
@LM3601X_LED_FLASH_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev_flash*, i32)* @lm3601x_flash_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3601x_flash_brightness_set(%struct.led_classdev_flash* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev_flash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lm3601x_led*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.led_classdev_flash* %0, %struct.led_classdev_flash** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %3, align 8
  %9 = call %struct.lm3601x_led* @fled_cdev_to_led(%struct.led_classdev_flash* %8)
  store %struct.lm3601x_led* %9, %struct.lm3601x_led** %5, align 8
  %10 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %11 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %14 = call i32 @lm3601x_read_faults(%struct.lm3601x_led* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %40

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @LED_OFF, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %24 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LM3601X_ENABLE_REG, align 4
  %27 = load i32, i32* @LM3601X_MODE_STROBE, align 4
  %28 = load i32, i32* @LED_OFF, align 4
  %29 = call i32 @regmap_update_bits(i32 %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %40

30:                                               ; preds = %18
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @LM3601X_STROBE_REG_DIV, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %35 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @LM3601X_LED_FLASH_REG, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @regmap_write(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %30, %22, %17
  %41 = load %struct.lm3601x_led*, %struct.lm3601x_led** %5, align 8
  %42 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local %struct.lm3601x_led* @fled_cdev_to_led(%struct.led_classdev_flash*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm3601x_read_faults(%struct.lm3601x_led*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
