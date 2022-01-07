; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_dev_gpio_irq_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_dev_gpio_irq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_gpio_info = type { i32, i32, i32, i64 }
%struct.gpio_desc = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@GPIO_LOOKUP_FLAGS_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GpioInt() %d\00", align 1
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_dev_gpio_irq_get(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.acpi_gpio_info, align 8
  %11 = alloca %struct.gpio_desc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [32 x i8], align 16
  %14 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %94, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %97

19:                                               ; preds = %15
  %20 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.gpio_desc* @acpi_get_gpiod_by_index(%struct.acpi_device* %20, i32* null, i32 %21, %struct.acpi_gpio_info* %10)
  store %struct.gpio_desc* %22, %struct.gpio_desc** %11, align 8
  %23 = load %struct.gpio_desc*, %struct.gpio_desc** %11, align 8
  %24 = call i64 @IS_ERR(%struct.gpio_desc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.gpio_desc*, %struct.gpio_desc** %11, align 8
  %28 = call i32 @PTR_ERR(%struct.gpio_desc* %27)
  %29 = load i32, i32* @EPROBE_DEFER, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.gpio_desc*, %struct.gpio_desc** %11, align 8
  %34 = call i32 @PTR_ERR(%struct.gpio_desc* %33)
  store i32 %34, i32* %3, align 4
  br label %100

35:                                               ; preds = %26, %19
  %36 = getelementptr inbounds %struct.acpi_gpio_info, %struct.acpi_gpio_info* %10, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %93

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %93

44:                                               ; preds = %39
  %45 = load i64, i64* @GPIO_LOOKUP_FLAGS_DEFAULT, align 8
  store i64 %45, i64* %12, align 8
  %46 = load %struct.gpio_desc*, %struct.gpio_desc** %11, align 8
  %47 = call i64 @IS_ERR(%struct.gpio_desc* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.gpio_desc*, %struct.gpio_desc** %11, align 8
  %51 = call i32 @PTR_ERR(%struct.gpio_desc* %50)
  store i32 %51, i32* %3, align 4
  br label %100

52:                                               ; preds = %44
  %53 = load %struct.gpio_desc*, %struct.gpio_desc** %11, align 8
  %54 = call i32 @gpiod_to_irq(%struct.gpio_desc* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %3, align 4
  br label %100

59:                                               ; preds = %52
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @snprintf(i8* %60, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.gpio_desc*, %struct.gpio_desc** %11, align 8
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds %struct.acpi_gpio_info, %struct.acpi_gpio_info* %10, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @gpiod_configure_flags(%struct.gpio_desc* %63, i8* %64, i64 %65, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %100

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.acpi_gpio_info, %struct.acpi_gpio_info* %10, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.acpi_gpio_info, %struct.acpi_gpio_info* %10, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @acpi_dev_get_irq_type(i32 %75, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %73
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @irq_get_trigger_type(i32 %84)
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @irq_set_irq_type(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %82, %73
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %3, align 4
  br label %100

93:                                               ; preds = %39, %35
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %15

97:                                               ; preds = %15
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %91, %71, %57, %49, %32
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.gpio_desc* @acpi_get_gpiod_by_index(%struct.acpi_device*, i32*, i32, %struct.acpi_gpio_info*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @gpiod_to_irq(%struct.gpio_desc*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @gpiod_configure_flags(%struct.gpio_desc*, i8*, i64, i32) #1

declare dso_local i32 @acpi_dev_get_irq_type(i32, i32) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
