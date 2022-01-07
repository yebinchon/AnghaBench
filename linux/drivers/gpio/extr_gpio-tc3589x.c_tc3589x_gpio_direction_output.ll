; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.tc3589x_gpio = type { %struct.tc3589x* }
%struct.tc3589x = type { i32 }

@TC3589x_GPIODIR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @tc3589x_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc3589x_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tc3589x_gpio*, align 8
  %8 = alloca %struct.tc3589x*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.tc3589x_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.tc3589x_gpio* %12, %struct.tc3589x_gpio** %7, align 8
  %13 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %7, align 8
  %14 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %13, i32 0, i32 0
  %15 = load %struct.tc3589x*, %struct.tc3589x** %14, align 8
  store %struct.tc3589x* %15, %struct.tc3589x** %8, align 8
  %16 = load i64, i64* @TC3589x_GPIODIR0, align 8
  %17 = load i32, i32* %5, align 4
  %18 = udiv i32 %17, 8
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* %5, align 4
  %22 = urem i32 %21, 8
  store i32 %22, i32* %10, align 4
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @tc3589x_gpio_set(%struct.gpio_chip* %23, i32 %24, i32 %25)
  %27 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = call i32 @tc3589x_set_bits(%struct.tc3589x* %27, i64 %28, i32 %30, i32 %32)
  ret i32 %33
}

declare dso_local %struct.tc3589x_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @tc3589x_gpio_set(%struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @tc3589x_set_bits(%struct.tc3589x*, i64, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
