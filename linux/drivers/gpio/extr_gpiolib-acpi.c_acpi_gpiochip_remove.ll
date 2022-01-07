; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpiochip_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpiochip_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.acpi_gpio_chip = type { i32 }

@acpi_gpio_chip_dh = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to retrieve ACPI GPIO chip\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_gpiochip_remove(%struct.gpio_chip* %0) #0 {
  %2 = alloca %struct.gpio_chip*, align 8
  %3 = alloca %struct.acpi_gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %2, align 8
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %7 = icmp ne %struct.gpio_chip* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %10 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  br label %43

14:                                               ; preds = %8
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %16 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ACPI_HANDLE(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %43

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @acpi_gpio_chip_dh, align 4
  %25 = bitcast %struct.acpi_gpio_chip** %3 to i8**
  %26 = call i32 @acpi_get_data(i32 %23, i32 %24, i8** %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %32 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_warn(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %43

35:                                               ; preds = %22
  %36 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %3, align 8
  %37 = call i32 @acpi_gpiochip_free_regions(%struct.acpi_gpio_chip* %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @acpi_gpio_chip_dh, align 4
  %40 = call i32 @acpi_detach_data(i32 %38, i32 %39)
  %41 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %3, align 8
  %42 = call i32 @kfree(%struct.acpi_gpio_chip* %41)
  br label %43

43:                                               ; preds = %35, %30, %21, %13
  ret void
}

declare dso_local i32 @ACPI_HANDLE(i32) #1

declare dso_local i32 @acpi_get_data(i32, i32, i8**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @acpi_gpiochip_free_regions(%struct.acpi_gpio_chip*) #1

declare dso_local i32 @acpi_detach_data(i32, i32) #1

declare dso_local i32 @kfree(%struct.acpi_gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
