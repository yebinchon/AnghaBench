; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm8350.c_wm8350_gpio_direction_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm8350.c_wm8350_gpio_direction_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.wm8350_gpio_data = type { %struct.wm8350* }
%struct.wm8350 = type { i32 }

@WM8350_GPIO_CONFIGURATION_I_O = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @wm8350_gpio_direction_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_gpio_direction_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm8350_gpio_data*, align 8
  %9 = alloca %struct.wm8350*, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %12 = call %struct.wm8350_gpio_data* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.wm8350_gpio_data* %12, %struct.wm8350_gpio_data** %8, align 8
  %13 = load %struct.wm8350_gpio_data*, %struct.wm8350_gpio_data** %8, align 8
  %14 = getelementptr inbounds %struct.wm8350_gpio_data, %struct.wm8350_gpio_data* %13, i32 0, i32 0
  %15 = load %struct.wm8350*, %struct.wm8350** %14, align 8
  store %struct.wm8350* %15, %struct.wm8350** %9, align 8
  %16 = load %struct.wm8350*, %struct.wm8350** %9, align 8
  %17 = load i32, i32* @WM8350_GPIO_CONFIGURATION_I_O, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 1, %18
  %20 = call i32 @wm8350_clear_bits(%struct.wm8350* %16, i32 %17, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @wm8350_gpio_set(%struct.gpio_chip* %26, i32 %27, i32 %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %23
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.wm8350_gpio_data* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_gpio_set(%struct.gpio_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
