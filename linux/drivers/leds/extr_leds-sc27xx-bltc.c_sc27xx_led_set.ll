; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-sc27xx-bltc.c_sc27xx_led_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-sc27xx-bltc.c_sc27xx_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.sc27xx_led = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @sc27xx_led_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_led_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sc27xx_led*, align 8
  %6 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %8 = call %struct.sc27xx_led* @to_sc27xx_led(%struct.led_classdev* %7)
  store %struct.sc27xx_led* %8, %struct.sc27xx_led** %5, align 8
  %9 = load %struct.sc27xx_led*, %struct.sc27xx_led** %5, align 8
  %10 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @LED_OFF, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.sc27xx_led*, %struct.sc27xx_led** %5, align 8
  %19 = call i32 @sc27xx_led_disable(%struct.sc27xx_led* %18)
  store i32 %19, i32* %6, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.sc27xx_led*, %struct.sc27xx_led** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @sc27xx_led_enable(%struct.sc27xx_led* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load %struct.sc27xx_led*, %struct.sc27xx_led** %5, align 8
  %26 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local %struct.sc27xx_led* @to_sc27xx_led(%struct.led_classdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sc27xx_led_disable(%struct.sc27xx_led*) #1

declare dso_local i32 @sc27xx_led_enable(%struct.sc27xx_led*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
