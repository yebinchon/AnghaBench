; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm8350.c_wm8350_gpio_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm8350.c_wm8350_gpio_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.wm8350_gpio_data = type { %struct.wm8350* }
%struct.wm8350 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @wm8350_gpio_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_gpio_to_irq(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8350_gpio_data*, align 8
  %7 = alloca %struct.wm8350*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.wm8350_gpio_data* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.wm8350_gpio_data* %9, %struct.wm8350_gpio_data** %6, align 8
  %10 = load %struct.wm8350_gpio_data*, %struct.wm8350_gpio_data** %6, align 8
  %11 = getelementptr inbounds %struct.wm8350_gpio_data, %struct.wm8350_gpio_data* %10, i32 0, i32 0
  %12 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  store %struct.wm8350* %12, %struct.wm8350** %7, align 8
  %13 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %14 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %22 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @WM8350_IRQ_GPIO(i32 %24)
  %26 = add nsw i32 %23, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.wm8350_gpio_data* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @WM8350_IRQ_GPIO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
