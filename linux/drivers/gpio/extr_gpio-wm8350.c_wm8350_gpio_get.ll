; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm8350.c_wm8350_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm8350.c_wm8350_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.wm8350_gpio_data = type { %struct.wm8350* }
%struct.wm8350 = type { i32 }

@WM8350_GPIO_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @wm8350_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8350_gpio_data*, align 8
  %7 = alloca %struct.wm8350*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.wm8350_gpio_data* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.wm8350_gpio_data* %10, %struct.wm8350_gpio_data** %6, align 8
  %11 = load %struct.wm8350_gpio_data*, %struct.wm8350_gpio_data** %6, align 8
  %12 = getelementptr inbounds %struct.wm8350_gpio_data, %struct.wm8350_gpio_data* %11, i32 0, i32 0
  %13 = load %struct.wm8350*, %struct.wm8350** %12, align 8
  store %struct.wm8350* %13, %struct.wm8350** %7, align 8
  %14 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %15 = load i32, i32* @WM8350_GPIO_LEVEL, align 4
  %16 = call i32 @wm8350_reg_read(%struct.wm8350* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %29

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %27, %19
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.wm8350_gpio_data* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
