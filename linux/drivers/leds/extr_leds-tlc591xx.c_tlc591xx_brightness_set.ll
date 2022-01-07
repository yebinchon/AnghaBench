; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tlc591xx.c_tlc591xx_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tlc591xx.c_tlc591xx_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.tlc591xx_led = type { %struct.tlc591xx_priv* }
%struct.tlc591xx_priv = type { i32 }

@LEDOUT_OFF = common dso_local global i32 0, align 4
@LEDOUT_ON = common dso_local global i32 0, align 4
@LEDOUT_DIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @tlc591xx_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlc591xx_brightness_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlc591xx_led*, align 8
  %6 = alloca %struct.tlc591xx_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %9 = call %struct.tlc591xx_led* @ldev_to_led(%struct.led_classdev* %8)
  store %struct.tlc591xx_led* %9, %struct.tlc591xx_led** %5, align 8
  %10 = load %struct.tlc591xx_led*, %struct.tlc591xx_led** %5, align 8
  %11 = getelementptr inbounds %struct.tlc591xx_led, %struct.tlc591xx_led* %10, i32 0, i32 0
  %12 = load %struct.tlc591xx_priv*, %struct.tlc591xx_priv** %11, align 8
  store %struct.tlc591xx_priv* %12, %struct.tlc591xx_priv** %6, align 8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %24 [
    i32 0, label %14
    i32 128, label %19
  ]

14:                                               ; preds = %2
  %15 = load %struct.tlc591xx_priv*, %struct.tlc591xx_priv** %6, align 8
  %16 = load %struct.tlc591xx_led*, %struct.tlc591xx_led** %5, align 8
  %17 = load i32, i32* @LEDOUT_OFF, align 4
  %18 = call i32 @tlc591xx_set_ledout(%struct.tlc591xx_priv* %15, %struct.tlc591xx_led* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.tlc591xx_priv*, %struct.tlc591xx_priv** %6, align 8
  %21 = load %struct.tlc591xx_led*, %struct.tlc591xx_led** %5, align 8
  %22 = load i32, i32* @LEDOUT_ON, align 4
  %23 = call i32 @tlc591xx_set_ledout(%struct.tlc591xx_priv* %20, %struct.tlc591xx_led* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.tlc591xx_priv*, %struct.tlc591xx_priv** %6, align 8
  %26 = load %struct.tlc591xx_led*, %struct.tlc591xx_led** %5, align 8
  %27 = load i32, i32* @LEDOUT_DIM, align 4
  %28 = call i32 @tlc591xx_set_ledout(%struct.tlc591xx_priv* %25, %struct.tlc591xx_led* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load %struct.tlc591xx_priv*, %struct.tlc591xx_priv** %6, align 8
  %33 = load %struct.tlc591xx_led*, %struct.tlc591xx_led** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @tlc591xx_set_pwm(%struct.tlc591xx_priv* %32, %struct.tlc591xx_led* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %24
  br label %37

37:                                               ; preds = %36, %19, %14
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local %struct.tlc591xx_led* @ldev_to_led(%struct.led_classdev*) #1

declare dso_local i32 @tlc591xx_set_ledout(%struct.tlc591xx_priv*, %struct.tlc591xx_led*, i32) #1

declare dso_local i32 @tlc591xx_set_pwm(%struct.tlc591xx_priv*, %struct.tlc591xx_led*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
