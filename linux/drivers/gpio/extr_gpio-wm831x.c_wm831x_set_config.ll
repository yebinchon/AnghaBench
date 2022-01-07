; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm831x.c_wm831x_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm831x.c_wm831x_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.wm831x_gpio = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_GPIO1_CONTROL = common dso_local global i32 0, align 4
@WM831X_GPN_OD_MASK = common dso_local global i32 0, align 4
@WM831X_GPN_OD = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i64)* @wm831x_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_set_config(%struct.gpio_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.wm831x_gpio*, align 8
  %9 = alloca %struct.wm831x*, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %12 = call %struct.wm831x_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.wm831x_gpio* %12, %struct.wm831x_gpio** %8, align 8
  %13 = load %struct.wm831x_gpio*, %struct.wm831x_gpio** %8, align 8
  %14 = getelementptr inbounds %struct.wm831x_gpio, %struct.wm831x_gpio* %13, i32 0, i32 0
  %15 = load %struct.wm831x*, %struct.wm831x** %14, align 8
  store %struct.wm831x* %15, %struct.wm831x** %9, align 8
  %16 = load i32, i32* @WM831X_GPIO1_CONTROL, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @pinconf_to_config_param(i64 %19)
  switch i32 %20, label %38 [
    i32 130, label %21
    i32 129, label %27
    i32 128, label %32
  ]

21:                                               ; preds = %3
  %22 = load %struct.wm831x*, %struct.wm831x** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @WM831X_GPN_OD_MASK, align 4
  %25 = load i32, i32* @WM831X_GPN_OD, align 4
  %26 = call i32 @wm831x_set_bits(%struct.wm831x* %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %42

27:                                               ; preds = %3
  %28 = load %struct.wm831x*, %struct.wm831x** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @WM831X_GPN_OD_MASK, align 4
  %31 = call i32 @wm831x_set_bits(%struct.wm831x* %28, i32 %29, i32 %30, i32 0)
  store i32 %31, i32* %4, align 4
  br label %42

32:                                               ; preds = %3
  %33 = load %struct.wm831x*, %struct.wm831x** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @pinconf_to_config_argument(i64 %35)
  %37 = call i32 @wm831x_gpio_set_debounce(%struct.wm831x* %33, i32 %34, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* @ENOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %32, %27, %21
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.wm831x_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @wm831x_gpio_set_debounce(%struct.wm831x*, i32, i32) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
