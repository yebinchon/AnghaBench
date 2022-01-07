; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-sc27xx-bltc.c_sc27xx_led_pattern_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-sc27xx-bltc.c_sc27xx_led_pattern_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.sc27xx_led = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, %struct.regmap* }
%struct.regmap = type { i32 }

@SC27XX_LEDS_CTRL = common dso_local global i64 0, align 8
@SC27XX_CTRL_SHIFT = common dso_local global i32 0, align 4
@SC27XX_LEDS_CURVE0 = common dso_local global i64 0, align 8
@SC27XX_LEDS_CURVE1 = common dso_local global i64 0, align 8
@SC27XX_LED_RUN = common dso_local global i32 0, align 4
@SC27XX_LED_TYPE = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @sc27xx_led_pattern_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_led_pattern_clear(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  %3 = alloca %struct.sc27xx_led*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %9 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %10 = call %struct.sc27xx_led* @to_sc27xx_led(%struct.led_classdev* %9)
  store %struct.sc27xx_led* %10, %struct.sc27xx_led** %3, align 8
  %11 = load %struct.sc27xx_led*, %struct.sc27xx_led** %3, align 8
  %12 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %4, align 8
  %16 = load %struct.sc27xx_led*, %struct.sc27xx_led** %3, align 8
  %17 = call i64 @sc27xx_led_get_offset(%struct.sc27xx_led* %16)
  store i64 %17, i64* %5, align 8
  %18 = load %struct.sc27xx_led*, %struct.sc27xx_led** %3, align 8
  %19 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SC27XX_LEDS_CTRL, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @SC27XX_CTRL_SHIFT, align 4
  %26 = load %struct.sc27xx_led*, %struct.sc27xx_led** %3, align 8
  %27 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.sc27xx_led*, %struct.sc27xx_led** %3, align 8
  %31 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.regmap*, %struct.regmap** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @SC27XX_LEDS_CURVE0, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @regmap_write(%struct.regmap* %35, i64 %38, i32 0)
  %40 = load %struct.regmap*, %struct.regmap** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @SC27XX_LEDS_CURVE1, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @regmap_write(%struct.regmap* %40, i64 %43, i32 0)
  %45 = load %struct.regmap*, %struct.regmap** %4, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* @SC27XX_LED_RUN, align 4
  %48 = load i32, i32* @SC27XX_LED_TYPE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 %49, %50
  %52 = call i32 @regmap_update_bits(%struct.regmap* %45, i64 %46, i32 %51, i32 0)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @LED_OFF, align 4
  %54 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %55 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sc27xx_led*, %struct.sc27xx_led** %3, align 8
  %57 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local %struct.sc27xx_led* @to_sc27xx_led(%struct.led_classdev*) #1

declare dso_local i64 @sc27xx_led_get_offset(%struct.sc27xx_led*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i64, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
