; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-da9055.c_da9055_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-da9055.c_da9055_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.da9055_gpio = type { i32 }

@DA9055_ACT_LOW = common dso_local global i8 0, align 1
@DA9055_GPI = common dso_local global i8 0, align 1
@DA9055_REG_GPIO0_1 = common dso_local global i64 0, align 8
@DA9055_PORT_MASK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @da9055_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.da9055_gpio*, align 8
  %6 = alloca i8, align 1
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.da9055_gpio* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.da9055_gpio* %8, %struct.da9055_gpio** %5, align 8
  %9 = load i8, i8* @DA9055_ACT_LOW, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @DA9055_GPI, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %10, %12
  %14 = load i32, i32* %4, align 4
  %15 = call zeroext i8 @DA9055_PORT_SHIFT(i32 %14)
  %16 = zext i8 %15 to i32
  %17 = shl i32 %13, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = load %struct.da9055_gpio*, %struct.da9055_gpio** %5, align 8
  %20 = getelementptr inbounds %struct.da9055_gpio, %struct.da9055_gpio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = lshr i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* @DA9055_REG_GPIO0_1, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i8, i8* @DA9055_PORT_MASK, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32, i32* %4, align 4
  %30 = call zeroext i8 @DA9055_PORT_SHIFT(i32 %29)
  %31 = zext i8 %30 to i32
  %32 = shl i32 %28, %31
  %33 = trunc i32 %32 to i8
  %34 = load i8, i8* %6, align 1
  %35 = call i32 @da9055_reg_update(i32 %21, i64 %26, i8 zeroext %33, i8 zeroext %34)
  ret i32 %35
}

declare dso_local %struct.da9055_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local zeroext i8 @DA9055_PORT_SHIFT(i32) #1

declare dso_local i32 @da9055_reg_update(i32, i64, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
