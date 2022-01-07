; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_led_device = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@FLASH_TMR_LEVEL = common dso_local global i32 0, align 4
@MAX77693_LED_REG_FLASH_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_led_device*, i32)* @max77693_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_set_timeout(%struct.max77693_led_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77693_led_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.max77693_led_device* %0, %struct.max77693_led_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %10 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %9, i32 0, i32 1
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @max77693_flash_timeout_to_reg(i32 %12)
  %14 = load i32, i32* @FLASH_TMR_LEVEL, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.regmap*, %struct.regmap** %6, align 8
  %17 = load i32, i32* @MAX77693_LED_REG_FLASH_TIMER, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @regmap_write(%struct.regmap* %16, i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %27 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %22
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @max77693_flash_timeout_to_reg(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
