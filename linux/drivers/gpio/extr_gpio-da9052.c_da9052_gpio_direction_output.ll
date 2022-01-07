; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-da9052.c_da9052_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-da9052.c_da9052_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.da9052_gpio = type { i32 }

@DA9052_OUTPUT_PUSHPULL = common dso_local global i32 0, align 4
@DA9052_SUPPLY_VDD_IO1 = common dso_local global i32 0, align 4
@DA9052_GPIO_0_1_REG = common dso_local global i64 0, align 8
@DA9052_GPIO_MASK_UPPER_NIBBLE = common dso_local global i32 0, align 4
@DA9052_GPIO_NIBBLE_SHIFT = common dso_local global i8 0, align 1
@DA9052_GPIO_MASK_LOWER_NIBBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @da9052_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.da9052_gpio*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.da9052_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.da9052_gpio* %11, %struct.da9052_gpio** %7, align 8
  %12 = load i32, i32* @DA9052_OUTPUT_PUSHPULL, align 4
  %13 = load i32, i32* @DA9052_SUPPLY_VDD_IO1, align 4
  %14 = shl i32 %13, 2
  %15 = or i32 %12, %14
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %16, 3
  %18 = or i32 %15, %17
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %8, align 1
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @da9052_gpio_port_odd(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %3
  %24 = load %struct.da9052_gpio*, %struct.da9052_gpio** %7, align 8
  %25 = getelementptr inbounds %struct.da9052_gpio, %struct.da9052_gpio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = lshr i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* @DA9052_GPIO_0_1_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @DA9052_GPIO_MASK_UPPER_NIBBLE, align 4
  %33 = load i8, i8* %8, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @DA9052_GPIO_NIBBLE_SHIFT, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %34, %36
  %38 = trunc i32 %37 to i8
  %39 = call i32 @da9052_reg_update(i32 %26, i64 %31, i32 %32, i8 zeroext %38)
  store i32 %39, i32* %9, align 4
  br label %52

40:                                               ; preds = %3
  %41 = load %struct.da9052_gpio*, %struct.da9052_gpio** %7, align 8
  %42 = getelementptr inbounds %struct.da9052_gpio, %struct.da9052_gpio* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = lshr i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* @DA9052_GPIO_0_1_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* @DA9052_GPIO_MASK_LOWER_NIBBLE, align 4
  %50 = load i8, i8* %8, align 1
  %51 = call i32 @da9052_reg_update(i32 %43, i64 %48, i32 %49, i8 zeroext %50)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %40, %23
  %53 = load i32, i32* %9, align 4
  ret i32 %53
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
