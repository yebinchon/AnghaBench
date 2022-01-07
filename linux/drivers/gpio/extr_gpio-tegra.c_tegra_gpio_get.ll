; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.tegra_gpio_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @tegra_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_gpio_info*, align 8
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.tegra_gpio_info* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.tegra_gpio_info* %9, %struct.tegra_gpio_info** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @GPIO_BIT(i32 %10)
  %12 = call i32 @BIT(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %6, align 8
  %14 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @GPIO_OE(%struct.tegra_gpio_info* %14, i32 %15)
  %17 = call i32 @tegra_gpio_readl(%struct.tegra_gpio_info* %13, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %6, align 8
  %23 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @GPIO_OUT(%struct.tegra_gpio_info* %23, i32 %24)
  %26 = call i32 @tegra_gpio_readl(%struct.tegra_gpio_info* %22, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %2
  %34 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %6, align 8
  %35 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @GPIO_IN(%struct.tegra_gpio_info* %35, i32 %36)
  %38 = call i32 @tegra_gpio_readl(%struct.tegra_gpio_info* %34, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %33, %21
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.tegra_gpio_info* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @GPIO_BIT(i32) #1

declare dso_local i32 @tegra_gpio_readl(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @GPIO_OE(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @GPIO_OUT(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @GPIO_IN(%struct.tegra_gpio_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
