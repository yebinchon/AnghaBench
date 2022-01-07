; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp873x.c_lp873x_gpio_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp873x.c_lp873x_gpio_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.lp873x_gpio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LP873X_REG_GPO_CTRL = common dso_local global i32 0, align 4
@BITS_PER_GPO = common dso_local global i32 0, align 4
@LP873X_GPO_CTRL_OD = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i64)* @lp873x_gpio_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp873x_gpio_set_config(%struct.gpio_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.lp873x_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %10 = call %struct.lp873x_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.lp873x_gpio* %10, %struct.lp873x_gpio** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @pinconf_to_config_param(i64 %11)
  switch i32 %12, label %47 [
    i32 129, label %13
    i32 128, label %33
  ]

13:                                               ; preds = %3
  %14 = load %struct.lp873x_gpio*, %struct.lp873x_gpio** %8, align 8
  %15 = getelementptr inbounds %struct.lp873x_gpio, %struct.lp873x_gpio* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LP873X_REG_GPO_CTRL, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BITS_PER_GPO, align 4
  %22 = mul i32 %20, %21
  %23 = load i32, i32* @LP873X_GPO_CTRL_OD, align 4
  %24 = add i32 %22, %23
  %25 = call i32 @BIT(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @BITS_PER_GPO, align 4
  %28 = mul i32 %26, %27
  %29 = load i32, i32* @LP873X_GPO_CTRL_OD, align 4
  %30 = add i32 %28, %29
  %31 = call i32 @BIT(i32 %30)
  %32 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 %25, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %3
  %34 = load %struct.lp873x_gpio*, %struct.lp873x_gpio** %8, align 8
  %35 = getelementptr inbounds %struct.lp873x_gpio, %struct.lp873x_gpio* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LP873X_REG_GPO_CTRL, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @BITS_PER_GPO, align 4
  %42 = mul i32 %40, %41
  %43 = load i32, i32* @LP873X_GPO_CTRL_OD, align 4
  %44 = add i32 %42, %43
  %45 = call i32 @BIT(i32 %44)
  %46 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %45, i32 0)
  store i32 %46, i32* %4, align 4
  br label %50

47:                                               ; preds = %3
  %48 = load i32, i32* @ENOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %33, %13
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.lp873x_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
