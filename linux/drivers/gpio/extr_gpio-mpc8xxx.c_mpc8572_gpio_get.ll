; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mpc8xxx.c_mpc8572_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mpc8xxx.c_mpc8572_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 (i64)*, i32 }
%struct.mpc8xxx_gpio_chip = type { i64 }

@GPIO_DIR = common dso_local global i64 0, align 8
@GPIO_DAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @mpc8572_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8572_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpc8xxx_gpio_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.mpc8xxx_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.mpc8xxx_gpio_chip* %10, %struct.mpc8xxx_gpio_chip** %6, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 0
  %13 = load i32 (i64)*, i32 (i64)** %12, align 8
  %14 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %6, align 8
  %15 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GPIO_DIR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 %13(i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 0
  %22 = load i32 (i64)*, i32 (i64)** %21, align 8
  %23 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %6, align 8
  %24 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GPIO_DAT, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 %22(i64 %27)
  %29 = load i32, i32* %7, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %33 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @mpc_pin2mask(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  ret i32 %46
}

declare dso_local %struct.mpc8xxx_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mpc_pin2mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
