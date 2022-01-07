; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ss4200.c_nasgpio_led_get_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ss4200.c_nasgpio_led_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.nasgpio_led = type { i32 }

@nasgpio_gpio_lock = common dso_local global i32 0, align 4
@nas_gpio_io_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @nasgpio_led_get_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nasgpio_led_get_attr(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nasgpio_led*, align 8
  %7 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %9 = call %struct.nasgpio_led* @led_classdev_to_nasgpio_led(%struct.led_classdev* %8)
  store %struct.nasgpio_led* %9, %struct.nasgpio_led** %6, align 8
  %10 = call i32 @spin_lock(i32* @nasgpio_gpio_lock)
  %11 = load i32, i32* @nas_gpio_io_base, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %11, %12
  %14 = call i32 @inl(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = call i32 @spin_unlock(i32* @nasgpio_gpio_lock)
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.nasgpio_led*, %struct.nasgpio_led** %6, align 8
  %18 = getelementptr inbounds %struct.nasgpio_led, %struct.nasgpio_led* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %16, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.nasgpio_led* @led_classdev_to_nasgpio_led(%struct.led_classdev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
