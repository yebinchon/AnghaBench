; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bt8xx.c_bt8xxgpio_gpio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bt8xx.c_bt8xxgpio_gpio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt8xxgpio = type { %struct.TYPE_2__*, %struct.gpio_chip }
%struct.TYPE_2__ = type { i32 }
%struct.gpio_chip = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@bt8xxgpio_gpio_direction_input = common dso_local global i32 0, align 4
@bt8xxgpio_gpio_get = common dso_local global i32 0, align 4
@bt8xxgpio_gpio_direction_output = common dso_local global i32 0, align 4
@bt8xxgpio_gpio_set = common dso_local global i32 0, align 4
@modparam_gpiobase = common dso_local global i32 0, align 4
@BT8XXGPIO_NR_GPIOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt8xxgpio*)* @bt8xxgpio_gpio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt8xxgpio_gpio_setup(%struct.bt8xxgpio* %0) #0 {
  %2 = alloca %struct.bt8xxgpio*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  store %struct.bt8xxgpio* %0, %struct.bt8xxgpio** %2, align 8
  %4 = load %struct.bt8xxgpio*, %struct.bt8xxgpio** %2, align 8
  %5 = getelementptr inbounds %struct.bt8xxgpio, %struct.bt8xxgpio* %4, i32 0, i32 1
  store %struct.gpio_chip* %5, %struct.gpio_chip** %3, align 8
  %6 = load %struct.bt8xxgpio*, %struct.bt8xxgpio** %2, align 8
  %7 = getelementptr inbounds %struct.bt8xxgpio, %struct.bt8xxgpio* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @dev_name(i32* %9)
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 9
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @THIS_MODULE, align 4
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %15 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @bt8xxgpio_gpio_direction_input, align 4
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %18 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @bt8xxgpio_gpio_get, align 4
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @bt8xxgpio_gpio_direction_output, align 4
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %24 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @bt8xxgpio_gpio_set, align 4
  %26 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %27 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %29 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @modparam_gpiobase, align 4
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %32 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @BT8XXGPIO_NR_GPIOS, align 4
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %37 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  ret void
}

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
