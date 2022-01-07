; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_gpio_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dln2.c_dln2_gpio_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.dln2_gpio = type { i32 }

@PIN_CONFIG_INPUT_DEBOUNCE = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@DLN2_GPIO_SET_DEBOUNCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i64)* @dln2_gpio_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_gpio_set_config(%struct.gpio_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dln2_gpio*, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %11 = call %struct.dln2_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.dln2_gpio* %11, %struct.dln2_gpio** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @pinconf_to_config_param(i64 %12)
  %14 = load i64, i64* @PIN_CONFIG_INPUT_DEBOUNCE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %28

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @pinconf_to_config_argument(i64 %20)
  %22 = call i32 @cpu_to_le32(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.dln2_gpio*, %struct.dln2_gpio** %8, align 8
  %24 = getelementptr inbounds %struct.dln2_gpio, %struct.dln2_gpio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DLN2_GPIO_SET_DEBOUNCE, align 4
  %27 = call i32 @dln2_transfer_tx(i32 %25, i32 %26, i32* %9, i32 4)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.dln2_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @pinconf_to_config_param(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @dln2_transfer_tx(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
