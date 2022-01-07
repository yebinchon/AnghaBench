; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpiochip_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpiochip_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32 }
%struct.acpi_gpio_chip = type { i32, i32, %struct.gpio_chip* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to allocate memory for ACPI GPIO chip\0A\00", align 1
@acpi_gpio_chip_dh = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to attach ACPI GPIO chip\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_gpiochip_add(%struct.gpio_chip* %0) #0 {
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
  br label %75

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
  br label %75

22:                                               ; preds = %14
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.acpi_gpio_chip* @kzalloc(i32 16, i32 %23)
  store %struct.acpi_gpio_chip* %24, %struct.acpi_gpio_chip** %3, align 8
  %25 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %3, align 8
  %26 = icmp ne %struct.acpi_gpio_chip* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %29 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %75

32:                                               ; preds = %22
  %33 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %34 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %3, align 8
  %35 = getelementptr inbounds %struct.acpi_gpio_chip, %struct.acpi_gpio_chip* %34, i32 0, i32 2
  store %struct.gpio_chip* %33, %struct.gpio_chip** %35, align 8
  %36 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %3, align 8
  %37 = getelementptr inbounds %struct.acpi_gpio_chip, %struct.acpi_gpio_chip* %36, i32 0, i32 1
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_gpio_chip, %struct.acpi_gpio_chip* %39, i32 0, i32 0
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @acpi_gpio_chip_dh, align 4
  %44 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %3, align 8
  %45 = call i32 @acpi_attach_data(i32 %42, i32 %43, %struct.acpi_gpio_chip* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @ACPI_FAILURE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %32
  %50 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %51 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %3, align 8
  %55 = call i32 @kfree(%struct.acpi_gpio_chip* %54)
  br label %75

56:                                               ; preds = %32
  %57 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %58 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %63 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %64 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_fwnode(i32 %65)
  %67 = call i32 @devprop_gpiochip_set_names(%struct.gpio_chip* %62, i32 %66)
  br label %68

68:                                               ; preds = %61, %56
  %69 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %3, align 8
  %70 = call i32 @acpi_gpiochip_request_regions(%struct.acpi_gpio_chip* %69)
  %71 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %3, align 8
  %72 = call i32 @acpi_gpiochip_scan_gpios(%struct.acpi_gpio_chip* %71)
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @acpi_walk_dep_device_list(i32 %73)
  br label %75

75:                                               ; preds = %68, %49, %27, %21, %13
  ret void
}

declare dso_local i32 @ACPI_HANDLE(i32) #1

declare dso_local %struct.acpi_gpio_chip* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @acpi_attach_data(i32, i32, %struct.acpi_gpio_chip*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @kfree(%struct.acpi_gpio_chip*) #1

declare dso_local i32 @devprop_gpiochip_set_names(%struct.gpio_chip*, i32) #1

declare dso_local i32 @dev_fwnode(i32) #1

declare dso_local i32 @acpi_gpiochip_request_regions(%struct.acpi_gpio_chip*) #1

declare dso_local i32 @acpi_gpiochip_scan_gpios(%struct.acpi_gpio_chip*) #1

declare dso_local i32 @acpi_walk_dep_device_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
