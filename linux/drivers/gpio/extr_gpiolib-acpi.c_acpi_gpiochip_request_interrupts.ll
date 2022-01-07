; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpiochip_request_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpiochip_request_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32 }
%struct.acpi_gpio_chip = type { i32 }

@acpi_gpio_chip_dh = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_AEI\00", align 1
@acpi_gpiochip_alloc_event = common dso_local global i32 0, align 4
@acpi_gpio_deferred_req_irqs_lock = common dso_local global i32 0, align 4
@acpi_gpio_deferred_req_irqs_done = common dso_local global i32 0, align 4
@acpi_gpio_deferred_req_irqs_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_gpiochip_request_interrupts(%struct.gpio_chip* %0) #0 {
  %2 = alloca %struct.gpio_chip*, align 8
  %3 = alloca %struct.acpi_gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %2, align 8
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %8 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %1
  br label %58

17:                                               ; preds = %11
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ACPI_HANDLE(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %58

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @acpi_gpio_chip_dh, align 4
  %28 = bitcast %struct.acpi_gpio_chip** %3 to i8**
  %29 = call i32 @acpi_get_data(i32 %26, i32 %27, i8** %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @ACPI_FAILURE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %58

34:                                               ; preds = %25
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @acpi_gpiochip_alloc_event, align 4
  %37 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %3, align 8
  %38 = call i32 @acpi_walk_resources(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36, %struct.acpi_gpio_chip* %37)
  %39 = call i32 @mutex_lock(i32* @acpi_gpio_deferred_req_irqs_lock)
  %40 = load i32, i32* @acpi_gpio_deferred_req_irqs_done, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %3, align 8
  %48 = getelementptr inbounds %struct.acpi_gpio_chip, %struct.acpi_gpio_chip* %47, i32 0, i32 0
  %49 = call i32 @list_add(i32* %48, i32* @acpi_gpio_deferred_req_irqs_list)
  br label %50

50:                                               ; preds = %46, %34
  %51 = call i32 @mutex_unlock(i32* @acpi_gpio_deferred_req_irqs_lock)
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %58

55:                                               ; preds = %50
  %56 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %3, align 8
  %57 = call i32 @acpi_gpiochip_request_irqs(%struct.acpi_gpio_chip* %56)
  br label %58

58:                                               ; preds = %55, %54, %33, %24, %16
  ret void
}

declare dso_local i32 @ACPI_HANDLE(i32) #1

declare dso_local i32 @acpi_get_data(i32, i32, i8**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_walk_resources(i32, i8*, i32, %struct.acpi_gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @acpi_gpiochip_request_irqs(%struct.acpi_gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
