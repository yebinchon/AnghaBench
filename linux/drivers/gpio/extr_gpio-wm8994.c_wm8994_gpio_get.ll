; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm8994.c_wm8994_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm8994.c_wm8994_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.wm8994_gpio = type { %struct.wm8994* }
%struct.wm8994 = type { i32 }

@WM8994_GPIO_1 = common dso_local global i32 0, align 4
@WM8994_GPN_LVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @wm8994_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8994_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8994_gpio*, align 8
  %7 = alloca %struct.wm8994*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.wm8994_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.wm8994_gpio* %10, %struct.wm8994_gpio** %6, align 8
  %11 = load %struct.wm8994_gpio*, %struct.wm8994_gpio** %6, align 8
  %12 = getelementptr inbounds %struct.wm8994_gpio, %struct.wm8994_gpio* %11, i32 0, i32 0
  %13 = load %struct.wm8994*, %struct.wm8994** %12, align 8
  store %struct.wm8994* %13, %struct.wm8994** %7, align 8
  %14 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %15 = load i32, i32* @WM8994_GPIO_1, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add i32 %15, %16
  %18 = call i32 @wm8994_reg_read(%struct.wm8994* %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @WM8994_GPN_LVL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %30

29:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.wm8994_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @wm8994_reg_read(%struct.wm8994*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
