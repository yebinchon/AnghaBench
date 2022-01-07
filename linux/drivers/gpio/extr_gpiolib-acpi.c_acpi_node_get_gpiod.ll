; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_node_get_gpiod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_node_get_gpiod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.acpi_gpio_info = type { i32 }
%struct.acpi_gpio_lookup = type { i32, %struct.gpio_desc* }
%struct.acpi_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gpio_desc* @acpi_node_get_gpiod(%struct.fwnode_handle* %0, i8* %1, i32 %2, %struct.acpi_gpio_info* %3) #0 {
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_gpio_info*, align 8
  %10 = alloca %struct.acpi_gpio_lookup, align 8
  %11 = alloca %struct.acpi_device*, align 8
  %12 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.acpi_gpio_info* %3, %struct.acpi_gpio_info** %9, align 8
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %14 = call %struct.acpi_device* @to_acpi_device_node(%struct.fwnode_handle* %13)
  store %struct.acpi_device* %14, %struct.acpi_device** %11, align 8
  %15 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %16 = icmp ne %struct.acpi_device* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.acpi_gpio_info*, %struct.acpi_gpio_info** %9, align 8
  %22 = call %struct.gpio_desc* @acpi_get_gpiod_by_index(%struct.acpi_device* %18, i8* %19, i32 %20, %struct.acpi_gpio_info* %21)
  store %struct.gpio_desc* %22, %struct.gpio_desc** %5, align 8
  br label %64

23:                                               ; preds = %4
  %24 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %25 = call i32 @is_acpi_data_node(%struct.fwnode_handle* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.gpio_desc* @ERR_PTR(i32 %29)
  store %struct.gpio_desc* %30, %struct.gpio_desc** %5, align 8
  br label %64

31:                                               ; preds = %23
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.gpio_desc* @ERR_PTR(i32 %36)
  store %struct.gpio_desc* %37, %struct.gpio_desc** %5, align 8
  br label %64

38:                                               ; preds = %31
  %39 = call i32 @memset(%struct.acpi_gpio_lookup* %10, i32 0, i32 16)
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %10, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @acpi_gpio_property_lookup(%struct.fwnode_handle* %42, i8* %43, i32 %44, %struct.acpi_gpio_lookup* %10)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* %12, align 4
  %50 = call %struct.gpio_desc* @ERR_PTR(i32 %49)
  store %struct.gpio_desc* %50, %struct.gpio_desc** %5, align 8
  br label %64

51:                                               ; preds = %38
  %52 = load %struct.acpi_gpio_info*, %struct.acpi_gpio_info** %9, align 8
  %53 = call i32 @acpi_gpio_resource_lookup(%struct.acpi_gpio_lookup* %10, %struct.acpi_gpio_info* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  %58 = call %struct.gpio_desc* @ERR_PTR(i32 %57)
  br label %62

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %10, i32 0, i32 1
  %61 = load %struct.gpio_desc*, %struct.gpio_desc** %60, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi %struct.gpio_desc* [ %58, %56 ], [ %61, %59 ]
  store %struct.gpio_desc* %63, %struct.gpio_desc** %5, align 8
  br label %64

64:                                               ; preds = %62, %48, %34, %27, %17
  %65 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  ret %struct.gpio_desc* %65
}

declare dso_local %struct.acpi_device* @to_acpi_device_node(%struct.fwnode_handle*) #1

declare dso_local %struct.gpio_desc* @acpi_get_gpiod_by_index(%struct.acpi_device*, i8*, i32, %struct.acpi_gpio_info*) #1

declare dso_local i32 @is_acpi_data_node(%struct.fwnode_handle*) #1

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.acpi_gpio_lookup*, i32, i32) #1

declare dso_local i32 @acpi_gpio_property_lookup(%struct.fwnode_handle*, i8*, i32, %struct.acpi_gpio_lookup*) #1

declare dso_local i32 @acpi_gpio_resource_lookup(%struct.acpi_gpio_lookup*, %struct.acpi_gpio_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
