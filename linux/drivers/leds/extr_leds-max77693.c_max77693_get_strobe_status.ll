; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_get_strobe_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_get_strobe_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_led_device = type { %struct.regmap* }
%struct.regmap = type { i32 }

@MAX77693_LED_REG_FLASH_STATUS = common dso_local global i32 0, align 4
@FLASH_STATUS_FLASH_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_led_device*, i32*)* @max77693_get_strobe_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_get_strobe_status(%struct.max77693_led_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77693_led_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.max77693_led_device* %0, %struct.max77693_led_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.max77693_led_device*, %struct.max77693_led_device** %4, align 8
  %10 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %9, i32 0, i32 0
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %6, align 8
  %12 = load %struct.regmap*, %struct.regmap** %6, align 8
  %13 = load i32, i32* @MAX77693_LED_REG_FLASH_STATUS, align 4
  %14 = call i32 @regmap_read(%struct.regmap* %12, i32 %13, i32* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @FLASH_STATUS_FLASH_ON, align 4
  %22 = and i32 %20, %21
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %19, %17
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
