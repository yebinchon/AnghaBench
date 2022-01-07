; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-google-hammer.c_hammer_register_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-google-hammer.c_hammer_register_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hammer_kbd_leds = type { %struct.TYPE_3__, %struct.hid_device* }
%struct.TYPE_3__ = type { i8*, i32, i32 (%struct.TYPE_3__*, i32)*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"hammer::kbd_backlight\00", align 1
@MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@LED_HW_PLUGGABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @hammer_register_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hammer_register_leds(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hammer_kbd_leds*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %6 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.hammer_kbd_leds* @devm_kzalloc(i32* %6, i32 40, i32 %7)
  store %struct.hammer_kbd_leds* %8, %struct.hammer_kbd_leds** %4, align 8
  %9 = load %struct.hammer_kbd_leds*, %struct.hammer_kbd_leds** %4, align 8
  %10 = icmp ne %struct.hammer_kbd_leds* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %16 = load %struct.hammer_kbd_leds*, %struct.hammer_kbd_leds** %4, align 8
  %17 = getelementptr inbounds %struct.hammer_kbd_leds, %struct.hammer_kbd_leds* %16, i32 0, i32 1
  store %struct.hid_device* %15, %struct.hid_device** %17, align 8
  %18 = load %struct.hammer_kbd_leds*, %struct.hammer_kbd_leds** %4, align 8
  %19 = getelementptr inbounds %struct.hammer_kbd_leds, %struct.hammer_kbd_leds* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* @MAX_BRIGHTNESS, align 4
  %22 = load %struct.hammer_kbd_leds*, %struct.hammer_kbd_leds** %4, align 8
  %23 = getelementptr inbounds %struct.hammer_kbd_leds, %struct.hammer_kbd_leds* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 8
  %25 = load %struct.hammer_kbd_leds*, %struct.hammer_kbd_leds** %4, align 8
  %26 = getelementptr inbounds %struct.hammer_kbd_leds, %struct.hammer_kbd_leds* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 (%struct.TYPE_3__*, i32)* @hammer_kbd_brightness_set_blocking, i32 (%struct.TYPE_3__*, i32)** %27, align 8
  %28 = load i32, i32* @LED_HW_PLUGGABLE, align 4
  %29 = load %struct.hammer_kbd_leds*, %struct.hammer_kbd_leds** %4, align 8
  %30 = getelementptr inbounds %struct.hammer_kbd_leds, %struct.hammer_kbd_leds* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.hammer_kbd_leds*, %struct.hammer_kbd_leds** %4, align 8
  %33 = getelementptr inbounds %struct.hammer_kbd_leds, %struct.hammer_kbd_leds* %32, i32 0, i32 0
  %34 = call i32 @hammer_kbd_brightness_set_blocking(%struct.TYPE_3__* %33, i32 0)
  %35 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %36 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %35, i32 0, i32 0
  %37 = load %struct.hammer_kbd_leds*, %struct.hammer_kbd_leds** %4, align 8
  %38 = getelementptr inbounds %struct.hammer_kbd_leds, %struct.hammer_kbd_leds* %37, i32 0, i32 0
  %39 = call i32 @devm_led_classdev_register(i32* %36, %struct.TYPE_3__* %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %14, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.hammer_kbd_leds* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @hammer_kbd_brightness_set_blocking(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @devm_led_classdev_register(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
