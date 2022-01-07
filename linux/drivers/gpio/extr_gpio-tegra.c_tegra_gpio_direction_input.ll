; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i64 }
%struct.tegra_gpio_info = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Failed to set pinctrl input direction of GPIO %d: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @tegra_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_gpio_info*, align 8
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.tegra_gpio_info* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.tegra_gpio_info* %8, %struct.tegra_gpio_info** %5, align 8
  %9 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %5, align 8
  %10 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @GPIO_MSK_OE(%struct.tegra_gpio_info* %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @tegra_gpio_mask_write(%struct.tegra_gpio_info* %9, i32 %12, i32 %13, i32 0)
  %15 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @tegra_gpio_enable(%struct.tegra_gpio_info* %15, i32 %16)
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call i32 @pinctrl_gpio_direction_input(i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %5, align 8
  %29 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %32 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %27, %2
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.tegra_gpio_info* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @tegra_gpio_mask_write(%struct.tegra_gpio_info*, i32, i32, i32) #1

declare dso_local i32 @GPIO_MSK_OE(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @tegra_gpio_enable(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @pinctrl_gpio_direction_input(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
