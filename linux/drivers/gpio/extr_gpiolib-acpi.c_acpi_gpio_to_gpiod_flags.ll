; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpio_to_gpiod_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpio_to_gpiod_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource_gpio = type { i32, i32 }

@GPIOD_IN = common dso_local global i32 0, align 4
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@GPIOD_ASIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource_gpio*)* @acpi_gpio_to_gpiod_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_gpio_to_gpiod_flags(%struct.acpi_resource_gpio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_resource_gpio*, align 8
  store %struct.acpi_resource_gpio* %0, %struct.acpi_resource_gpio** %3, align 8
  %4 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %3, align 8
  %5 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %19 [
    i32 131, label %7
    i32 130, label %9
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @GPIOD_IN, align 4
  store i32 %8, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %17 [
    i32 128, label %13
    i32 129, label %15
  ]

13:                                               ; preds = %9
  %14 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  store i32 %14, i32* %2, align 4
  br label %22

15:                                               ; preds = %9
  %16 = load i32, i32* @GPIOD_OUT_LOW, align 4
  store i32 %16, i32* %2, align 4
  br label %22

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  br label %19

19:                                               ; preds = %1, %18
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* @GPIOD_ASIS, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %15, %13, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
