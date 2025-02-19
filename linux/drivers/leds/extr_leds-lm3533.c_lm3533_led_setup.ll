; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3533.c_lm3533_led_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3533.c_lm3533_led_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3533_led = type { i32 }
%struct.lm3533_led_platform_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3533_led*, %struct.lm3533_led_platform_data*)* @lm3533_led_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3533_led_setup(%struct.lm3533_led* %0, %struct.lm3533_led_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lm3533_led*, align 8
  %5 = alloca %struct.lm3533_led_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.lm3533_led* %0, %struct.lm3533_led** %4, align 8
  store %struct.lm3533_led_platform_data* %1, %struct.lm3533_led_platform_data** %5, align 8
  %7 = load %struct.lm3533_led*, %struct.lm3533_led** %4, align 8
  %8 = getelementptr inbounds %struct.lm3533_led, %struct.lm3533_led* %7, i32 0, i32 0
  %9 = load %struct.lm3533_led_platform_data*, %struct.lm3533_led_platform_data** %5, align 8
  %10 = getelementptr inbounds %struct.lm3533_led_platform_data, %struct.lm3533_led_platform_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @lm3533_ctrlbank_set_max_current(i32* %8, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.lm3533_led*, %struct.lm3533_led** %4, align 8
  %19 = getelementptr inbounds %struct.lm3533_led, %struct.lm3533_led* %18, i32 0, i32 0
  %20 = load %struct.lm3533_led_platform_data*, %struct.lm3533_led_platform_data** %5, align 8
  %21 = getelementptr inbounds %struct.lm3533_led_platform_data, %struct.lm3533_led_platform_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @lm3533_ctrlbank_set_pwm(i32* %19, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %17, %15
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @lm3533_ctrlbank_set_max_current(i32*, i32) #1

declare dso_local i32 @lm3533_ctrlbank_set_pwm(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
