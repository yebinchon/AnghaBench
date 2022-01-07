; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_wistron_btns.c_wistron_led_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_wistron_btns.c_wistron_led_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@leds_present = common dso_local global i32 0, align 4
@FE_MAIL_LED = common dso_local global i32 0, align 4
@wistron_mail_led = common dso_local global i32 0, align 4
@FE_WIFI_LED = common dso_local global i32 0, align 4
@wistron_wifi_led = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wistron_led_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wistron_led_resume() #0 {
  %1 = load i32, i32* @leds_present, align 4
  %2 = load i32, i32* @FE_MAIL_LED, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @led_classdev_resume(i32* @wistron_mail_led)
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* @leds_present, align 4
  %9 = load i32, i32* @FE_WIFI_LED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call i32 @led_classdev_resume(i32* @wistron_wifi_led)
  br label %14

14:                                               ; preds = %12, %7
  ret void
}

declare dso_local i32 @led_classdev_resume(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
