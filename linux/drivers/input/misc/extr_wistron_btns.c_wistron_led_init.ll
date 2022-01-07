; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_wistron_btns.c_wistron_led_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_wistron_btns.c_wistron_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.device = type { i32 }

@leds_present = common dso_local global i32 0, align 4
@FE_WIFI_LED = common dso_local global i32 0, align 4
@WIFI = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i8* null, align 8
@LED_OFF = common dso_local global i8* null, align 8
@wistron_wifi_led = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FE_MAIL_LED = common dso_local global i32 0, align 4
@wistron_mail_led = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAIL_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @wistron_led_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wistron_led_init(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load i32, i32* @leds_present, align 4
  %5 = load i32, i32* @FE_WIFI_LED, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %1
  %9 = load i32, i32* @WIFI, align 4
  %10 = call i32 @bios_get_default_setting(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 2
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i8*, i8** @LED_FULL, align 8
  br label %22

20:                                               ; preds = %14
  %21 = load i8*, i8** @LED_OFF, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i8* [ %19, %18 ], [ %21, %20 ]
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wistron_wifi_led, i32 0, i32 0), align 8
  %24 = load %struct.device*, %struct.device** %2, align 8
  %25 = call i64 @led_classdev_register(%struct.device* %24, %struct.TYPE_4__* @wistron_wifi_led)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @FE_WIFI_LED, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* @leds_present, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* @leds_present, align 4
  br label %36

32:                                               ; preds = %22
  %33 = load i32, i32* @WIFI, align 4
  %34 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wistron_wifi_led, i32 0, i32 0), align 8
  %35 = call i32 @bios_set_state(i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %32, %27
  br label %42

37:                                               ; preds = %8
  %38 = load i32, i32* @FE_WIFI_LED, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* @leds_present, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* @leds_present, align 4
  br label %42

42:                                               ; preds = %37, %36
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i32, i32* @leds_present, align 4
  %45 = load i32, i32* @FE_MAIL_LED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load i8*, i8** @LED_OFF, align 8
  store i8* %49, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wistron_mail_led, i32 0, i32 0), align 8
  %50 = load %struct.device*, %struct.device** %2, align 8
  %51 = call i64 @led_classdev_register(%struct.device* %50, %struct.TYPE_4__* @wistron_mail_led)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* @FE_MAIL_LED, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* @leds_present, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* @leds_present, align 4
  br label %62

58:                                               ; preds = %48
  %59 = load i32, i32* @MAIL_LED, align 4
  %60 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wistron_mail_led, i32 0, i32 0), align 8
  %61 = call i32 @bios_set_state(i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %58, %53
  br label %63

63:                                               ; preds = %62, %43
  ret void
}

declare dso_local i32 @bios_get_default_setting(i32) #1

declare dso_local i64 @led_classdev_register(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i32 @bios_set_state(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
