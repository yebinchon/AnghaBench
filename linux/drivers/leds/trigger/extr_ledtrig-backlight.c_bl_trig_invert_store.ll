; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-backlight.c_bl_trig_invert_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-backlight.c_bl_trig_invert_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }
%struct.bl_trig_notifier = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BLANK = common dso_local global i64 0, align 8
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bl_trig_invert_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bl_trig_invert_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.led_classdev*, align 8
  %11 = alloca %struct.bl_trig_notifier*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.led_classdev* @led_trigger_get_led(%struct.device* %14)
  store %struct.led_classdev* %15, %struct.led_classdev** %10, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.bl_trig_notifier* @led_trigger_get_drvdata(%struct.device* %16)
  store %struct.bl_trig_notifier* %17, %struct.bl_trig_notifier** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtoul(i8* %18, i32 10, i64* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %59

24:                                               ; preds = %4
  %25 = load i64, i64* %12, align 8
  %26 = icmp ugt i64 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %59

30:                                               ; preds = %24
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %11, align 8
  %33 = getelementptr inbounds %struct.bl_trig_notifier, %struct.bl_trig_notifier* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %11, align 8
  %35 = getelementptr inbounds %struct.bl_trig_notifier, %struct.bl_trig_notifier* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BLANK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %11, align 8
  %42 = getelementptr inbounds %struct.bl_trig_notifier, %struct.bl_trig_notifier* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = xor i64 %40, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %30
  %47 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %48 = load i32, i32* @LED_OFF, align 4
  %49 = call i32 @led_set_brightness_nosleep(%struct.led_classdev* %47, i32 %48)
  br label %56

50:                                               ; preds = %30
  %51 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %52 = load %struct.bl_trig_notifier*, %struct.bl_trig_notifier** %11, align 8
  %53 = getelementptr inbounds %struct.bl_trig_notifier, %struct.bl_trig_notifier* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @led_set_brightness_nosleep(%struct.led_classdev* %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %46
  %57 = load i64, i64* %9, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %27, %22
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.led_classdev* @led_trigger_get_led(%struct.device*) #1

declare dso_local %struct.bl_trig_notifier* @led_trigger_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @led_set_brightness_nosleep(%struct.led_classdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
