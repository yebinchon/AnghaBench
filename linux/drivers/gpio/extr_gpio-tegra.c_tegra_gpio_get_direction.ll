; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.tegra_gpio_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @tegra_gpio_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_gpio_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.tegra_gpio_info* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.tegra_gpio_info* %11, %struct.tegra_gpio_info** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @GPIO_BIT(i32 %12)
  %14 = call i32 @BIT(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %6, align 8
  %16 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @GPIO_CNF(%struct.tegra_gpio_info* %16, i32 %17)
  %19 = call i32 @tegra_gpio_readl(%struct.tegra_gpio_info* %15, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %2
  %28 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %6, align 8
  %29 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @GPIO_OE(%struct.tegra_gpio_info* %29, i32 %30)
  %32 = call i32 @tegra_gpio_readl(%struct.tegra_gpio_info* %28, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %27, %24
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.tegra_gpio_info* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @GPIO_BIT(i32) #1

declare dso_local i32 @tegra_gpio_readl(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @GPIO_CNF(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @GPIO_OE(%struct.tegra_gpio_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
