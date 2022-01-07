; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-madera.c_madera_gpio_direction_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-madera.c_madera_gpio_direction_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.madera_gpio = type { %struct.madera* }
%struct.madera = type { i32 }

@MADERA_GPIO1_CTRL_2 = common dso_local global i64 0, align 8
@MADERA_GP1_DIR_MASK = common dso_local global i32 0, align 4
@MADERA_GP1_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @madera_gpio_direction_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_gpio_direction_in(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.madera_gpio*, align 8
  %6 = alloca %struct.madera*, align 8
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.madera_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.madera_gpio* %9, %struct.madera_gpio** %5, align 8
  %10 = load %struct.madera_gpio*, %struct.madera_gpio** %5, align 8
  %11 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %10, i32 0, i32 0
  %12 = load %struct.madera*, %struct.madera** %11, align 8
  store %struct.madera* %12, %struct.madera** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = mul i32 2, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.madera*, %struct.madera** %6, align 8
  %16 = getelementptr inbounds %struct.madera, %struct.madera* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @MADERA_GPIO1_CTRL_2, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load i32, i32* @MADERA_GP1_DIR_MASK, align 4
  %23 = load i32, i32* @MADERA_GP1_DIR, align 4
  %24 = call i32 @regmap_update_bits(i32 %17, i64 %21, i32 %22, i32 %23)
  ret i32 %24
}

declare dso_local %struct.madera_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
