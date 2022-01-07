; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max77650.c_max77650_gpio_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max77650.c_max77650_gpio_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.max77650_gpio_chip = type { i32 }

@MAX77650_REG_CNFG_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @max77650_gpio_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77650_gpio_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max77650_gpio_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.max77650_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.max77650_gpio_chip* %10, %struct.max77650_gpio_chip** %6, align 8
  %11 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %6, align 8
  %12 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAX77650_REG_CNFG_GPIO, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @MAX77650_GPIO_DIR_BITS(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %18
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.max77650_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @MAX77650_GPIO_DIR_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
