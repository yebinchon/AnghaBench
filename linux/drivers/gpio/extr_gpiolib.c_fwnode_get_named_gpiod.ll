; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_fwnode_get_named_gpiod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_fwnode_get_named_gpiod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.acpi_gpio_info = type { i32 }

@GPIO_LOOKUP_FLAGS_DEFAULT = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gpio_desc* @fwnode_get_named_gpiod(%struct.fwnode_handle* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca %struct.fwnode_handle*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.gpio_desc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.acpi_gpio_info, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i64, i64* @GPIO_LOOKUP_FLAGS_DEFAULT, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.gpio_desc* @ERR_PTR(i32 %18)
  store %struct.gpio_desc* %19, %struct.gpio_desc** %13, align 8
  %20 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %21 = icmp ne %struct.fwnode_handle* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.gpio_desc* @ERR_PTR(i32 %24)
  store %struct.gpio_desc* %25, %struct.gpio_desc** %6, align 8
  br label %81

26:                                               ; preds = %5
  %27 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %28 = call i64 @is_of_node(%struct.fwnode_handle* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %32 = call i32 @to_of_node(%struct.fwnode_handle* %31)
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = call %struct.gpio_desc* @gpiod_get_from_of_node(i32 %32, i8* %33, i32 %34, i32 %35, i8* %36)
  store %struct.gpio_desc* %37, %struct.gpio_desc** %13, align 8
  %38 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  store %struct.gpio_desc* %38, %struct.gpio_desc** %6, align 8
  br label %81

39:                                               ; preds = %26
  %40 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %41 = call i64 @is_acpi_node(%struct.fwnode_handle* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.gpio_desc* @acpi_node_get_gpiod(%struct.fwnode_handle* %44, i8* %45, i32 %46, %struct.acpi_gpio_info* %15)
  store %struct.gpio_desc* %47, %struct.gpio_desc** %13, align 8
  %48 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %49 = call i64 @IS_ERR(%struct.gpio_desc* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  store %struct.gpio_desc* %52, %struct.gpio_desc** %6, align 8
  br label %81

53:                                               ; preds = %43
  %54 = call i32 @acpi_gpio_update_gpiod_flags(i32* %10, %struct.acpi_gpio_info* %15)
  %55 = call i32 @acpi_gpio_update_gpiod_lookup_flags(i64* %12, %struct.acpi_gpio_info* %15)
  br label %56

56:                                               ; preds = %53, %39
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @gpiod_request(%struct.gpio_desc* %58, i8* %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %14, align 4
  %65 = call %struct.gpio_desc* @ERR_PTR(i32 %64)
  store %struct.gpio_desc* %65, %struct.gpio_desc** %6, align 8
  br label %81

66:                                               ; preds = %57
  %67 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @gpiod_configure_flags(%struct.gpio_desc* %67, i8* %68, i64 %69, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %76 = call i32 @gpiod_put(%struct.gpio_desc* %75)
  %77 = load i32, i32* %14, align 4
  %78 = call %struct.gpio_desc* @ERR_PTR(i32 %77)
  store %struct.gpio_desc* %78, %struct.gpio_desc** %6, align 8
  br label %81

79:                                               ; preds = %66
  %80 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  store %struct.gpio_desc* %80, %struct.gpio_desc** %6, align 8
  br label %81

81:                                               ; preds = %79, %74, %63, %51, %30, %22
  %82 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  ret %struct.gpio_desc* %82
}

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local i64 @is_of_node(%struct.fwnode_handle*) #1

declare dso_local %struct.gpio_desc* @gpiod_get_from_of_node(i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @to_of_node(%struct.fwnode_handle*) #1

declare dso_local i64 @is_acpi_node(%struct.fwnode_handle*) #1

declare dso_local %struct.gpio_desc* @acpi_node_get_gpiod(%struct.fwnode_handle*, i8*, i32, %struct.acpi_gpio_info*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @acpi_gpio_update_gpiod_flags(i32*, %struct.acpi_gpio_info*) #1

declare dso_local i32 @acpi_gpio_update_gpiod_lookup_flags(i64*, %struct.acpi_gpio_info*) #1

declare dso_local i32 @gpiod_request(%struct.gpio_desc*, i8*) #1

declare dso_local i32 @gpiod_configure_flags(%struct.gpio_desc*, i8*, i64, i32) #1

declare dso_local i32 @gpiod_put(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
