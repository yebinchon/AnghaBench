; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i64 }
%struct.tegra_gpio_info = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Failed to set pinctrl output direction of GPIO %d: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @tegra_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_gpio_info*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.tegra_gpio_info* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.tegra_gpio_info* %10, %struct.tegra_gpio_info** %7, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @tegra_gpio_set(%struct.gpio_chip* %11, i32 %12, i32 %13)
  %15 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %7, align 8
  %16 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @GPIO_MSK_OE(%struct.tegra_gpio_info* %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @tegra_gpio_mask_write(%struct.tegra_gpio_info* %15, i32 %18, i32 %19, i32 1)
  %21 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @tegra_gpio_enable(%struct.tegra_gpio_info* %21, i32 %22)
  %24 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %25 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i32 @pinctrl_gpio_direction_output(i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %3
  %34 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %7, align 8
  %35 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %38 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %42, i32 %43)
  br label %45

45:                                               ; preds = %33, %3
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local %struct.tegra_gpio_info* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @tegra_gpio_set(%struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @tegra_gpio_mask_write(%struct.tegra_gpio_info*, i32, i32, i32) #1

declare dso_local i32 @GPIO_MSK_OE(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @tegra_gpio_enable(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @pinctrl_gpio_direction_output(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
