; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bd70528.c_bd70528_gpio_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bd70528.c_bd70528_gpio_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.bd70528_gpio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BD70528_GPIO_DRIVE_MASK = common dso_local global i32 0, align 4
@BD70528_GPIO_OPEN_DRAIN = common dso_local global i32 0, align 4
@BD70528_GPIO_PUSH_PULL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i64)* @bd70528_gpio_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_gpio_set_config(%struct.gpio_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.bd70528_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %10 = call %struct.bd70528_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.bd70528_gpio* %10, %struct.bd70528_gpio** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @pinconf_to_config_param(i64 %11)
  switch i32 %12, label %39 [
    i32 130, label %13
    i32 129, label %23
    i32 128, label %33
  ]

13:                                               ; preds = %3
  %14 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %8, align 8
  %15 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @GPIO_OUT_REG(i32 %18)
  %20 = load i32, i32* @BD70528_GPIO_DRIVE_MASK, align 4
  %21 = load i32, i32* @BD70528_GPIO_OPEN_DRAIN, align 4
  %22 = call i32 @regmap_update_bits(i32 %17, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %43

23:                                               ; preds = %3
  %24 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %8, align 8
  %25 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @GPIO_OUT_REG(i32 %28)
  %30 = load i32, i32* @BD70528_GPIO_DRIVE_MASK, align 4
  %31 = load i32, i32* @BD70528_GPIO_PUSH_PULL, align 4
  %32 = call i32 @regmap_update_bits(i32 %27, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %43

33:                                               ; preds = %3
  %34 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @pinconf_to_config_argument(i64 %36)
  %38 = call i32 @bd70528_set_debounce(%struct.bd70528_gpio* %34, i32 %35, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %43

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* @ENOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %33, %23, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.bd70528_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @GPIO_OUT_REG(i32) #1

declare dso_local i32 @bd70528_set_debounce(%struct.bd70528_gpio*, i32, i32) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
