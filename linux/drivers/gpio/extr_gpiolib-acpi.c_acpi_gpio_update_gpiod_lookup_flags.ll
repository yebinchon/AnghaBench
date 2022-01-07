; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpio_update_gpiod_lookup_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpio_update_gpiod_lookup_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpio_info = type { i32, i64 }

@GPIO_PULL_UP = common dso_local global i64 0, align 8
@GPIO_PULL_DOWN = common dso_local global i64 0, align 8
@GPIO_ACTIVE_LOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_gpio_update_gpiod_lookup_flags(i64* %0, %struct.acpi_gpio_info* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.acpi_gpio_info*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.acpi_gpio_info* %1, %struct.acpi_gpio_info** %4, align 8
  %5 = load %struct.acpi_gpio_info*, %struct.acpi_gpio_info** %4, align 8
  %6 = getelementptr inbounds %struct.acpi_gpio_info, %struct.acpi_gpio_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %18 [
    i32 128, label %8
    i32 129, label %13
  ]

8:                                                ; preds = %2
  %9 = load i64, i64* @GPIO_PULL_UP, align 8
  %10 = load i64*, i64** %3, align 8
  %11 = load i64, i64* %10, align 8
  %12 = or i64 %11, %9
  store i64 %12, i64* %10, align 8
  br label %19

13:                                               ; preds = %2
  %14 = load i64, i64* @GPIO_PULL_DOWN, align 8
  %15 = load i64*, i64** %3, align 8
  %16 = load i64, i64* %15, align 8
  %17 = or i64 %16, %14
  store i64 %17, i64* %15, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %13, %8
  %20 = load %struct.acpi_gpio_info*, %struct.acpi_gpio_info** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_gpio_info, %struct.acpi_gpio_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GPIO_ACTIVE_LOW, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i64, i64* @GPIO_ACTIVE_LOW, align 8
  %27 = load i64*, i64** %3, align 8
  %28 = load i64, i64* %27, align 8
  %29 = or i64 %28, %26
  store i64 %29, i64* %27, align 8
  br label %30

30:                                               ; preds = %25, %19
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
