; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-led.c_delcom_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-led.c_delcom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.hidled_led = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @delcom_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delcom_write(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hidled_led*, align 8
  %7 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %9 = call %struct.hidled_led* @to_hidled_led(%struct.led_classdev* %8)
  store %struct.hidled_led* %9, %struct.hidled_led** %6, align 8
  %10 = load %struct.hidled_led*, %struct.hidled_led** %6, align 8
  %11 = call i32 @delcom_enable_led(%struct.hidled_led* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.hidled_led*, %struct.hidled_led** %6, align 8
  %18 = call i32 @delcom_set_pwm(%struct.hidled_led* %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.hidled_led* @to_hidled_led(%struct.led_classdev*) #1

declare dso_local i32 @delcom_enable_led(%struct.hidled_led*) #1

declare dso_local i32 @delcom_set_pwm(%struct.hidled_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
