; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpio_property_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpio_property_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.acpi_gpio_lookup = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i8* }
%struct.fwnode_reference_args = type { i32, %struct.fwnode_handle*, i32* }
%struct.acpi_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwnode_handle*, i8*, i32, %struct.acpi_gpio_lookup*)* @acpi_gpio_property_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_gpio_property_lookup(%struct.fwnode_handle* %0, i8* %1, i32 %2, %struct.acpi_gpio_lookup* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_gpio_lookup*, align 8
  %10 = alloca %struct.fwnode_reference_args, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.acpi_device*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.acpi_gpio_lookup* %3, %struct.acpi_gpio_lookup** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = call i32 @memset(%struct.fwnode_reference_args* %10, i32 0, i32 24)
  %15 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @__acpi_node_get_property_reference(%struct.fwnode_handle* %15, i8* %16, i32 %17, i32 3, %struct.fwnode_reference_args* %10)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %4
  %22 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %23 = call i8* @to_acpi_device_node(%struct.fwnode_handle* %22)
  %24 = bitcast i8* %23 to %struct.acpi_device*
  store %struct.acpi_device* %24, %struct.acpi_device** %13, align 8
  %25 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  %26 = icmp ne %struct.acpi_device* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %5, align 4
  br label %86

29:                                               ; preds = %21
  %30 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @acpi_get_driver_gpio_data(%struct.acpi_device* %30, i8* %31, i32 %32, %struct.fwnode_reference_args* %10, i32* %11)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %86

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %4
  %39 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %10, i32 0, i32 1
  %40 = load %struct.fwnode_handle*, %struct.fwnode_handle** %39, align 8
  %41 = call i8* @to_acpi_device_node(%struct.fwnode_handle* %40)
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %86

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %10, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 3
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EPROTO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %86

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %10, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %9, align 8
  %59 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %10, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %9, align 8
  %65 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %10, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %9, align 8
  %75 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %10, i32 0, i32 1
  %77 = load %struct.fwnode_handle*, %struct.fwnode_handle** %76, align 8
  %78 = call i8* @to_acpi_device_node(%struct.fwnode_handle* %77)
  %79 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %9, align 8
  %80 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i8* %78, i8** %81, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %9, align 8
  %84 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %53, %50, %43, %35, %27
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @memset(%struct.fwnode_reference_args*, i32, i32) #1

declare dso_local i32 @__acpi_node_get_property_reference(%struct.fwnode_handle*, i8*, i32, i32, %struct.fwnode_reference_args*) #1

declare dso_local i8* @to_acpi_device_node(%struct.fwnode_handle*) #1

declare dso_local i32 @acpi_get_driver_gpio_data(%struct.acpi_device*, i8*, i32, %struct.fwnode_reference_args*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
