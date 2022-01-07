; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_get_driver_gpio_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_get_driver_gpio_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.acpi_gpio_mapping* }
%struct.acpi_gpio_mapping = type { i32, i32, %struct.acpi_gpio_params*, i64 }
%struct.acpi_gpio_params = type { i32, i32, i32 }
%struct.fwnode_reference_args = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i8*, i32, %struct.fwnode_reference_args*, i32*)* @acpi_get_driver_gpio_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_get_driver_gpio_data(%struct.acpi_device* %0, i8* %1, i32 %2, %struct.fwnode_reference_args* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fwnode_reference_args*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.acpi_gpio_mapping*, align 8
  %13 = alloca %struct.acpi_gpio_params*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.fwnode_reference_args* %3, %struct.fwnode_reference_args** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 0
  %16 = load %struct.acpi_gpio_mapping*, %struct.acpi_gpio_mapping** %15, align 8
  %17 = icmp ne %struct.acpi_gpio_mapping* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %89

19:                                               ; preds = %5
  %20 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 0
  %22 = load %struct.acpi_gpio_mapping*, %struct.acpi_gpio_mapping** %21, align 8
  store %struct.acpi_gpio_mapping* %22, %struct.acpi_gpio_mapping** %12, align 8
  br label %23

23:                                               ; preds = %85, %19
  %24 = load %struct.acpi_gpio_mapping*, %struct.acpi_gpio_mapping** %12, align 8
  %25 = getelementptr inbounds %struct.acpi_gpio_mapping, %struct.acpi_gpio_mapping* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %88

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.acpi_gpio_mapping*, %struct.acpi_gpio_mapping** %12, align 8
  %31 = getelementptr inbounds %struct.acpi_gpio_mapping, %struct.acpi_gpio_mapping* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @strcmp(i8* %29, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %84, label %35

35:                                               ; preds = %28
  %36 = load %struct.acpi_gpio_mapping*, %struct.acpi_gpio_mapping** %12, align 8
  %37 = getelementptr inbounds %struct.acpi_gpio_mapping, %struct.acpi_gpio_mapping* %36, i32 0, i32 2
  %38 = load %struct.acpi_gpio_params*, %struct.acpi_gpio_params** %37, align 8
  %39 = icmp ne %struct.acpi_gpio_params* %38, null
  br i1 %39, label %40, label %84

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.acpi_gpio_mapping*, %struct.acpi_gpio_mapping** %12, align 8
  %43 = getelementptr inbounds %struct.acpi_gpio_mapping, %struct.acpi_gpio_mapping* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %40
  %47 = load %struct.acpi_gpio_mapping*, %struct.acpi_gpio_mapping** %12, align 8
  %48 = getelementptr inbounds %struct.acpi_gpio_mapping, %struct.acpi_gpio_mapping* %47, i32 0, i32 2
  %49 = load %struct.acpi_gpio_params*, %struct.acpi_gpio_params** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.acpi_gpio_params, %struct.acpi_gpio_params* %49, i64 %51
  store %struct.acpi_gpio_params* %52, %struct.acpi_gpio_params** %13, align 8
  %53 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %54 = call i32 @acpi_fwnode_handle(%struct.acpi_device* %53)
  %55 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %10, align 8
  %56 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.acpi_gpio_params*, %struct.acpi_gpio_params** %13, align 8
  %58 = getelementptr inbounds %struct.acpi_gpio_params, %struct.acpi_gpio_params* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %10, align 8
  %61 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %59, i32* %63, align 4
  %64 = load %struct.acpi_gpio_params*, %struct.acpi_gpio_params** %13, align 8
  %65 = getelementptr inbounds %struct.acpi_gpio_params, %struct.acpi_gpio_params* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %10, align 8
  %68 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %66, i32* %70, align 4
  %71 = load %struct.acpi_gpio_params*, %struct.acpi_gpio_params** %13, align 8
  %72 = getelementptr inbounds %struct.acpi_gpio_params, %struct.acpi_gpio_params* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %10, align 8
  %75 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 %73, i32* %77, align 4
  %78 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %10, align 8
  %79 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %78, i32 0, i32 0
  store i32 3, i32* %79, align 8
  %80 = load %struct.acpi_gpio_mapping*, %struct.acpi_gpio_mapping** %12, align 8
  %81 = getelementptr inbounds %struct.acpi_gpio_mapping, %struct.acpi_gpio_mapping* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %11, align 8
  store i32 %82, i32* %83, align 4
  store i32 1, i32* %6, align 4
  br label %89

84:                                               ; preds = %40, %35, %28
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.acpi_gpio_mapping*, %struct.acpi_gpio_mapping** %12, align 8
  %87 = getelementptr inbounds %struct.acpi_gpio_mapping, %struct.acpi_gpio_mapping* %86, i32 1
  store %struct.acpi_gpio_mapping* %87, %struct.acpi_gpio_mapping** %12, align 8
  br label %23

88:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %46, %18
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @acpi_fwnode_handle(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
