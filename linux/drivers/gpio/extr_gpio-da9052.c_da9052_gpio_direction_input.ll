; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-da9052.c_da9052_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-da9052.c_da9052_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.da9052_gpio = type { i32 }

@DA9052_INPUT = common dso_local global i32 0, align 4
@DA9052_ACTIVE_LOW = common dso_local global i32 0, align 4
@DA9052_DEBOUNCING_ON = common dso_local global i32 0, align 4
@DA9052_GPIO_0_1_REG = common dso_local global i64 0, align 8
@DA9052_GPIO_MASK_UPPER_NIBBLE = common dso_local global i32 0, align 4
@DA9052_GPIO_NIBBLE_SHIFT = common dso_local global i8 0, align 1
@DA9052_GPIO_MASK_LOWER_NIBBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @da9052_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.da9052_gpio*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.da9052_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.da9052_gpio* %9, %struct.da9052_gpio** %5, align 8
  %10 = load i32, i32* @DA9052_INPUT, align 4
  %11 = load i32, i32* @DA9052_ACTIVE_LOW, align 4
  %12 = shl i32 %11, 2
  %13 = or i32 %10, %12
  %14 = load i32, i32* @DA9052_DEBOUNCING_ON, align 4
  %15 = shl i32 %14, 3
  %16 = or i32 %13, %15
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %6, align 1
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @da9052_gpio_port_odd(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = load %struct.da9052_gpio*, %struct.da9052_gpio** %5, align 8
  %23 = getelementptr inbounds %struct.da9052_gpio, %struct.da9052_gpio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = lshr i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* @DA9052_GPIO_0_1_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* @DA9052_GPIO_MASK_UPPER_NIBBLE, align 4
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @DA9052_GPIO_NIBBLE_SHIFT, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %32, %34
  %36 = trunc i32 %35 to i8
  %37 = call i32 @da9052_reg_update(i32 %24, i64 %29, i32 %30, i8 zeroext %36)
  store i32 %37, i32* %7, align 4
  br label %50

38:                                               ; preds = %2
  %39 = load %struct.da9052_gpio*, %struct.da9052_gpio** %5, align 8
  %40 = getelementptr inbounds %struct.da9052_gpio, %struct.da9052_gpio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = lshr i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* @DA9052_GPIO_0_1_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* @DA9052_GPIO_MASK_LOWER_NIBBLE, align 4
  %48 = load i8, i8* %6, align 1
  %49 = call i32 @da9052_reg_update(i32 %41, i64 %46, i32 %47, i8 zeroext %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %38, %21
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local %struct.da9052_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @da9052_gpio_port_odd(i32) #1

declare dso_local i32 @da9052_reg_update(i32, i64, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
