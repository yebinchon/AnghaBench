; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-madera.c_madera_gpio_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-madera.c_madera_gpio_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.madera_gpio = type { %struct.madera* }
%struct.madera = type { i32 }

@MADERA_GPIO1_CTRL_2 = common dso_local global i64 0, align 8
@MADERA_GP1_DIR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @madera_gpio_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_gpio_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.madera_gpio*, align 8
  %7 = alloca %struct.madera*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.madera_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.madera_gpio* %12, %struct.madera_gpio** %6, align 8
  %13 = load %struct.madera_gpio*, %struct.madera_gpio** %6, align 8
  %14 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %13, i32 0, i32 0
  %15 = load %struct.madera*, %struct.madera** %14, align 8
  store %struct.madera* %15, %struct.madera** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = mul i32 2, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.madera*, %struct.madera** %7, align 8
  %19 = getelementptr inbounds %struct.madera, %struct.madera* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @MADERA_GPIO1_CTRL_2, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = call i32 @regmap_read(i32 %20, i64 %24, i32* %9)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MADERA_GP1_DIR_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %30, %28
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.madera_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
