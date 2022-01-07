; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm831x.c_wm831x_gpio_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm831x.c_wm831x_gpio_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.wm831x_gpio = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_IRQ_GPIO_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @wm831x_gpio_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_gpio_to_irq(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm831x_gpio*, align 8
  %6 = alloca %struct.wm831x*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.wm831x_gpio* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.wm831x_gpio* %8, %struct.wm831x_gpio** %5, align 8
  %9 = load %struct.wm831x_gpio*, %struct.wm831x_gpio** %5, align 8
  %10 = getelementptr inbounds %struct.wm831x_gpio, %struct.wm831x_gpio* %9, i32 0, i32 0
  %11 = load %struct.wm831x*, %struct.wm831x** %10, align 8
  store %struct.wm831x* %11, %struct.wm831x** %6, align 8
  %12 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %13 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WM831X_IRQ_GPIO_1, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add i32 %15, %16
  %18 = call i32 @irq_create_mapping(i32 %14, i32 %17)
  ret i32 %18
}

declare dso_local %struct.wm831x_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
