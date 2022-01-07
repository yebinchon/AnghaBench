; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max77650.c_max77650_gpio_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max77650.c_max77650_gpio_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.max77650_gpio_chip = type { i32 }

@MAX77650_REG_CNFG_GPIO = common dso_local global i32 0, align 4
@MAX77650_GPIO_DRV_MASK = common dso_local global i32 0, align 4
@MAX77650_GPIO_DRV_OPEN_DRAIN = common dso_local global i32 0, align 4
@MAX77650_GPIO_DRV_PUSH_PULL = common dso_local global i32 0, align 4
@MAX77650_GPIO_DEBOUNCE_MASK = common dso_local global i32 0, align 4
@MAX77650_GPIO_DEBOUNCE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i64)* @max77650_gpio_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77650_gpio_set_config(%struct.gpio_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.max77650_gpio_chip*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %10 = call %struct.max77650_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.max77650_gpio_chip* %10, %struct.max77650_gpio_chip** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @pinconf_to_config_param(i64 %11)
  switch i32 %12, label %37 [
    i32 130, label %13
    i32 129, label %21
    i32 128, label %29
  ]

13:                                               ; preds = %3
  %14 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %8, align 8
  %15 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MAX77650_REG_CNFG_GPIO, align 4
  %18 = load i32, i32* @MAX77650_GPIO_DRV_MASK, align 4
  %19 = load i32, i32* @MAX77650_GPIO_DRV_OPEN_DRAIN, align 4
  %20 = call i32 @regmap_update_bits(i32 %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %40

21:                                               ; preds = %3
  %22 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %8, align 8
  %23 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAX77650_REG_CNFG_GPIO, align 4
  %26 = load i32, i32* @MAX77650_GPIO_DRV_MASK, align 4
  %27 = load i32, i32* @MAX77650_GPIO_DRV_PUSH_PULL, align 4
  %28 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %3
  %30 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %8, align 8
  %31 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MAX77650_REG_CNFG_GPIO, align 4
  %34 = load i32, i32* @MAX77650_GPIO_DEBOUNCE_MASK, align 4
  %35 = load i32, i32* @MAX77650_GPIO_DEBOUNCE, align 4
  %36 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @ENOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %29, %21, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.max77650_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
