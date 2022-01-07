; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-gpio.c_gpio_trig_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-gpio.c_gpio_trig_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.gpio_trig_data = type { i32, %struct.led_classdev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @gpio_trig_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_trig_activate(%struct.led_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca %struct.gpio_trig_data*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.gpio_trig_data* @kzalloc(i32 16, i32 %5)
  store %struct.gpio_trig_data* %6, %struct.gpio_trig_data** %4, align 8
  %7 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %4, align 8
  %8 = icmp ne %struct.gpio_trig_data* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %14 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %4, align 8
  %15 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %14, i32 0, i32 1
  store %struct.led_classdev* %13, %struct.led_classdev** %15, align 8
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  %18 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %4, align 8
  %19 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %21 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %4, align 8
  %22 = call i32 @led_set_trigger_data(%struct.led_classdev* %20, %struct.gpio_trig_data* %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %12, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.gpio_trig_data* @kzalloc(i32, i32) #1

declare dso_local i32 @led_set_trigger_data(%struct.led_classdev*, %struct.gpio_trig_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
