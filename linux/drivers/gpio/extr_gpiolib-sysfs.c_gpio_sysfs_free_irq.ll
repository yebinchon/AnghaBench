; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_gpio_sysfs_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_gpio_sysfs_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gpiod_data = type { i32, i32, i64, %struct.gpio_desc* }
%struct.gpio_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @gpio_sysfs_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_sysfs_free_irq(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.gpiod_data*, align 8
  %4 = alloca %struct.gpio_desc*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.gpiod_data* @dev_get_drvdata(%struct.device* %5)
  store %struct.gpiod_data* %6, %struct.gpiod_data** %3, align 8
  %7 = load %struct.gpiod_data*, %struct.gpiod_data** %3, align 8
  %8 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %7, i32 0, i32 3
  %9 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  store %struct.gpio_desc* %9, %struct.gpio_desc** %4, align 8
  %10 = load %struct.gpiod_data*, %struct.gpiod_data** %3, align 8
  %11 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.gpiod_data*, %struct.gpiod_data** %3, align 8
  %13 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.gpiod_data*, %struct.gpiod_data** %3, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.gpiod_data* %15)
  %17 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %18 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %23 = call i32 @gpio_chip_hwgpio(%struct.gpio_desc* %22)
  %24 = call i32 @gpiochip_unlock_as_irq(i32 %21, i32 %23)
  %25 = load %struct.gpiod_data*, %struct.gpiod_data** %3, align 8
  %26 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @sysfs_put(i32 %27)
  ret void
}

declare dso_local %struct.gpiod_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @free_irq(i32, %struct.gpiod_data*) #1

declare dso_local i32 @gpiochip_unlock_as_irq(i32, i32) #1

declare dso_local i32 @gpio_chip_hwgpio(%struct.gpio_desc*) #1

declare dso_local i32 @sysfs_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
