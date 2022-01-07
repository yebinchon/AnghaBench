; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm8994.c_wm8994_gpio_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm8994.c_wm8994_gpio_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.wm8994_gpio = type { %struct.wm8994* }
%struct.wm8994 = type { i32 }

@WM8994_GPIO_1 = common dso_local global i32 0, align 4
@WM8994_GPN_OP_CFG_MASK = common dso_local global i32 0, align 4
@WM8994_GPN_OP_CFG = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i64)* @wm8994_gpio_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8994_gpio_set_config(%struct.gpio_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.wm8994_gpio*, align 8
  %9 = alloca %struct.wm8994*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %11 = call %struct.wm8994_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.wm8994_gpio* %11, %struct.wm8994_gpio** %8, align 8
  %12 = load %struct.wm8994_gpio*, %struct.wm8994_gpio** %8, align 8
  %13 = getelementptr inbounds %struct.wm8994_gpio, %struct.wm8994_gpio* %12, i32 0, i32 0
  %14 = load %struct.wm8994*, %struct.wm8994** %13, align 8
  store %struct.wm8994* %14, %struct.wm8994** %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @pinconf_to_config_param(i64 %15)
  switch i32 %16, label %32 [
    i32 129, label %17
    i32 128, label %25
  ]

17:                                               ; preds = %3
  %18 = load %struct.wm8994*, %struct.wm8994** %9, align 8
  %19 = load i32, i32* @WM8994_GPIO_1, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add i32 %19, %20
  %22 = load i32, i32* @WM8994_GPN_OP_CFG_MASK, align 4
  %23 = load i32, i32* @WM8994_GPN_OP_CFG, align 4
  %24 = call i32 @wm8994_set_bits(%struct.wm8994* %18, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %36

25:                                               ; preds = %3
  %26 = load %struct.wm8994*, %struct.wm8994** %9, align 8
  %27 = load i32, i32* @WM8994_GPIO_1, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %27, %28
  %30 = load i32, i32* @WM8994_GPN_OP_CFG_MASK, align 4
  %31 = call i32 @wm8994_set_bits(%struct.wm8994* %26, i32 %29, i32 %30, i32 0)
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* @ENOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %25, %17
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.wm8994_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @wm8994_set_bits(%struct.wm8994*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
