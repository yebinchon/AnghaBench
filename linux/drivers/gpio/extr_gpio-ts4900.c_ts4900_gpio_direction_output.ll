; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ts4900.c_ts4900_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ts4900.c_ts4900_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ts4900_gpio_priv = type { i32 }

@TS4900_GPIO_OE = common dso_local global i32 0, align 4
@TS4900_GPIO_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @ts4900_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts4900_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ts4900_gpio_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.ts4900_gpio_priv* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.ts4900_gpio_priv* %10, %struct.ts4900_gpio_priv** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.ts4900_gpio_priv*, %struct.ts4900_gpio_priv** %7, align 8
  %15 = getelementptr inbounds %struct.ts4900_gpio_priv, %struct.ts4900_gpio_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @TS4900_GPIO_OE, align 4
  %19 = load i32, i32* @TS4900_GPIO_OUT, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @regmap_write(i32 %16, i32 %17, i32 %20)
  store i32 %21, i32* %8, align 4
  br label %29

22:                                               ; preds = %3
  %23 = load %struct.ts4900_gpio_priv*, %struct.ts4900_gpio_priv** %7, align 8
  %24 = getelementptr inbounds %struct.ts4900_gpio_priv, %struct.ts4900_gpio_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @TS4900_GPIO_OE, align 4
  %28 = call i32 @regmap_write(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %22, %13
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local %struct.ts4900_gpio_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
