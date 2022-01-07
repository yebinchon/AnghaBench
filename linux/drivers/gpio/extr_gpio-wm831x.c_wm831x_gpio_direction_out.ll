; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm831x.c_wm831x_gpio_direction_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm831x.c_wm831x_gpio_direction_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.wm831x_gpio = type { %struct.wm831x* }
%struct.wm831x = type { i64 }

@WM831X_GPN_TRI = common dso_local global i32 0, align 4
@WM831X_GPIO1_CONTROL = common dso_local global i32 0, align 4
@WM831X_GPN_DIR = common dso_local global i32 0, align 4
@WM831X_GPN_FN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @wm831x_gpio_direction_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_gpio_direction_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm831x_gpio*, align 8
  %9 = alloca %struct.wm831x*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = call %struct.wm831x_gpio* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.wm831x_gpio* %13, %struct.wm831x_gpio** %8, align 8
  %14 = load %struct.wm831x_gpio*, %struct.wm831x_gpio** %8, align 8
  %15 = getelementptr inbounds %struct.wm831x_gpio, %struct.wm831x_gpio* %14, i32 0, i32 0
  %16 = load %struct.wm831x*, %struct.wm831x** %15, align 8
  store %struct.wm831x* %16, %struct.wm831x** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.wm831x*, %struct.wm831x** %9, align 8
  %18 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @WM831X_GPN_TRI, align 4
  %23 = load i32, i32* %10, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.wm831x*, %struct.wm831x** %9, align 8
  %27 = load i32, i32* @WM831X_GPIO1_CONTROL, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %27, %28
  %30 = load i32, i32* @WM831X_GPN_DIR, align 4
  %31 = load i32, i32* @WM831X_GPN_TRI, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @WM831X_GPN_FN_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @wm831x_set_bits(%struct.wm831x* %26, i32 %29, i32 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %25
  %42 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @wm831x_gpio_set(%struct.gpio_chip* %42, i32 %43, i32 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %39
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.wm831x_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @wm831x_gpio_set(%struct.gpio_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
