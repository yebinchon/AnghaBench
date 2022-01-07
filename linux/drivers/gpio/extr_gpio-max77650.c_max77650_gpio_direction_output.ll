; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max77650.c_max77650_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max77650.c_max77650_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.max77650_gpio_chip = type { i32 }

@MAX77650_GPIO_DIR_MASK = common dso_local global i32 0, align 4
@MAX77650_GPIO_OUTVAL_MASK = common dso_local global i32 0, align 4
@MAX77650_GPIO_OUT_HIGH = common dso_local global i32 0, align 4
@MAX77650_GPIO_OUT_LOW = common dso_local global i32 0, align 4
@MAX77650_GPIO_DIR_OUT = common dso_local global i32 0, align 4
@MAX77650_REG_CNFG_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @max77650_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77650_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.max77650_gpio_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.max77650_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.max77650_gpio_chip* %11, %struct.max77650_gpio_chip** %7, align 8
  %12 = load i32, i32* @MAX77650_GPIO_DIR_MASK, align 4
  %13 = load i32, i32* @MAX77650_GPIO_OUTVAL_MASK, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @MAX77650_GPIO_OUT_HIGH, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @MAX77650_GPIO_OUT_LOW, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @MAX77650_GPIO_DIR_OUT, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %7, align 8
  %27 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MAX77650_REG_CNFG_GPIO, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  ret i32 %32
}

declare dso_local %struct.max77650_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
