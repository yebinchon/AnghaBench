; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-class.c_led_classdev_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-class.c_led_classdev_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32, i32, i32, i32, i32, i32, i64 }

@LED_UNREGISTERING = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@LED_BRIGHT_HW_CHANGED = common dso_local global i32 0, align 4
@leds_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_classdev_unregister(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %3 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %4 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @IS_ERR_OR_NULL(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %45

9:                                                ; preds = %1
  %10 = load i32, i32* @LED_UNREGISTERING, align 4
  %11 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %12 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %16 = call i32 @led_stop_software_blink(%struct.led_classdev* %15)
  %17 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %18 = load i32, i32* @LED_OFF, align 4
  %19 = call i32 @led_set_brightness(%struct.led_classdev* %17, i32 %18)
  %20 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %21 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %20, i32 0, i32 4
  %22 = call i32 @flush_work(i32* %21)
  %23 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %24 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @LED_BRIGHT_HW_CHANGED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %9
  %30 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %31 = call i32 @led_remove_brightness_hw_changed(%struct.led_classdev* %30)
  br label %32

32:                                               ; preds = %29, %9
  %33 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %34 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_unregister(i32 %35)
  %37 = call i32 @down_write(i32* @leds_list_lock)
  %38 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %39 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %38, i32 0, i32 2
  %40 = call i32 @list_del(i32* %39)
  %41 = call i32 @up_write(i32* @leds_list_lock)
  %42 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %43 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %42, i32 0, i32 1
  %44 = call i32 @mutex_destroy(i32* %43)
  br label %45

45:                                               ; preds = %32, %8
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @led_stop_software_blink(%struct.led_classdev*) #1

declare dso_local i32 @led_set_brightness(%struct.led_classdev*, i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @led_remove_brightness_hw_changed(%struct.led_classdev*) #1

declare dso_local i32 @device_unregister(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
