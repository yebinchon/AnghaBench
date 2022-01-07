; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm831x.c_wm831x_gpio_direction_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm831x.c_wm831x_gpio_direction_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.wm831x_gpio = type { %struct.wm831x* }
%struct.wm831x = type { i64 }

@WM831X_GPN_DIR = common dso_local global i32 0, align 4
@WM831X_GPN_TRI = common dso_local global i32 0, align 4
@WM831X_GPIO1_CONTROL = common dso_local global i32 0, align 4
@WM831X_GPN_FN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @wm831x_gpio_direction_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_gpio_direction_in(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm831x_gpio*, align 8
  %6 = alloca %struct.wm831x*, align 8
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.wm831x_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.wm831x_gpio* %9, %struct.wm831x_gpio** %5, align 8
  %10 = load %struct.wm831x_gpio*, %struct.wm831x_gpio** %5, align 8
  %11 = getelementptr inbounds %struct.wm831x_gpio, %struct.wm831x_gpio* %10, i32 0, i32 0
  %12 = load %struct.wm831x*, %struct.wm831x** %11, align 8
  store %struct.wm831x* %12, %struct.wm831x** %6, align 8
  %13 = load i32, i32* @WM831X_GPN_DIR, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %15 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @WM831X_GPN_TRI, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %24 = load i32, i32* @WM831X_GPIO1_CONTROL, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %24, %25
  %27 = load i32, i32* @WM831X_GPN_DIR, align 4
  %28 = load i32, i32* @WM831X_GPN_TRI, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @WM831X_GPN_FN_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @wm831x_set_bits(%struct.wm831x* %23, i32 %26, i32 %31, i32 %32)
  ret i32 %33
}

declare dso_local %struct.wm831x_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
