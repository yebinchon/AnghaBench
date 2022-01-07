; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp87565.c_lp87565_gpio_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp87565.c_lp87565_gpio_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.lp87565_gpio = type { i32 }

@LP87565_REG_GPIO_CONFIG = common dso_local global i32 0, align 4
@LP87565_GOIO1_OD = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i64)* @lp87565_gpio_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp87565_gpio_set_config(%struct.gpio_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.lp87565_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %10 = call %struct.lp87565_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.lp87565_gpio* %10, %struct.lp87565_gpio** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @pinconf_to_config_param(i64 %11)
  switch i32 %12, label %40 [
    i32 129, label %13
    i32 128, label %29
  ]

13:                                               ; preds = %3
  %14 = load %struct.lp87565_gpio*, %struct.lp87565_gpio** %8, align 8
  %15 = getelementptr inbounds %struct.lp87565_gpio, %struct.lp87565_gpio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LP87565_REG_GPIO_CONFIG, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @LP87565_GOIO1_OD, align 4
  %20 = call i32 @__ffs(i32 %19)
  %21 = add i32 %18, %20
  %22 = call i32 @BIT(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @LP87565_GOIO1_OD, align 4
  %25 = call i32 @__ffs(i32 %24)
  %26 = add i32 %23, %25
  %27 = call i32 @BIT(i32 %26)
  %28 = call i32 @regmap_update_bits(i32 %16, i32 %17, i32 %22, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %43

29:                                               ; preds = %3
  %30 = load %struct.lp87565_gpio*, %struct.lp87565_gpio** %8, align 8
  %31 = getelementptr inbounds %struct.lp87565_gpio, %struct.lp87565_gpio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LP87565_REG_GPIO_CONFIG, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @LP87565_GOIO1_OD, align 4
  %36 = call i32 @__ffs(i32 %35)
  %37 = add i32 %34, %36
  %38 = call i32 @BIT(i32 %37)
  %39 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %38, i32 0)
  store i32 %39, i32* %4, align 4
  br label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @ENOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %29, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.lp87565_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
