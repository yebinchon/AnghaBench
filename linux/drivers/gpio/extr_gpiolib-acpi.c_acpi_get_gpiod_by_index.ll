; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_get_gpiod_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_get_gpiod_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.acpi_device = type { i32 }
%struct.acpi_gpio_info = type { i32 }
%struct.acpi_gpio_lookup = type { i32, %struct.gpio_desc*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.acpi_device* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"GPIO: looking up %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"GPIO: _DSD returned %s %d %d %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"GPIO: looking up %d in _CRS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpio_desc* (%struct.acpi_device*, i8*, i32, %struct.acpi_gpio_info*)* @acpi_get_gpiod_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpio_desc* @acpi_get_gpiod_by_index(%struct.acpi_device* %0, i8* %1, i32 %2, %struct.acpi_gpio_info* %3) #0 {
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_gpio_info*, align 8
  %10 = alloca %struct.acpi_gpio_lookup, align 8
  %11 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.acpi_gpio_info* %3, %struct.acpi_gpio_info** %9, align 8
  %12 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %13 = icmp ne %struct.acpi_device* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.gpio_desc* @ERR_PTR(i32 %16)
  store %struct.gpio_desc* %17, %struct.gpio_desc** %5, align 8
  br label %75

18:                                               ; preds = %4
  %19 = call i32 @memset(%struct.acpi_gpio_lookup* %10, i32 0, i32 32)
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %10, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %54

24:                                               ; preds = %18
  %25 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %26 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %25, i32 0, i32 0
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %30 = call i32 @acpi_fwnode_handle(%struct.acpi_device* %29)
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @acpi_gpio_property_lookup(i32 %30, i8* %31, i32 %32, %struct.acpi_gpio_lookup* %10)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* %11, align 4
  %38 = call %struct.gpio_desc* @ERR_PTR(i32 %37)
  store %struct.gpio_desc* %38, %struct.gpio_desc** %5, align 8
  br label %75

39:                                               ; preds = %24
  %40 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %10, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.acpi_device*, %struct.acpi_device** %43, align 8
  %45 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %44, i32 0, i32 0
  %46 = call i32 @dev_name(i32* %45)
  %47 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %10, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %10, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %10, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %48, i32 %50, i32 %52)
  br label %62

54:                                               ; preds = %18
  %55 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %56 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %60 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %10, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store %struct.acpi_device* %59, %struct.acpi_device** %61, align 8
  br label %62

62:                                               ; preds = %54, %39
  %63 = load %struct.acpi_gpio_info*, %struct.acpi_gpio_info** %9, align 8
  %64 = call i32 @acpi_gpio_resource_lookup(%struct.acpi_gpio_lookup* %10, %struct.acpi_gpio_info* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = call %struct.gpio_desc* @ERR_PTR(i32 %68)
  br label %73

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %10, i32 0, i32 1
  %72 = load %struct.gpio_desc*, %struct.gpio_desc** %71, align 8
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi %struct.gpio_desc* [ %69, %67 ], [ %72, %70 ]
  store %struct.gpio_desc* %74, %struct.gpio_desc** %5, align 8
  br label %75

75:                                               ; preds = %73, %36, %14
  %76 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  ret %struct.gpio_desc* %76
}

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.acpi_gpio_lookup*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @acpi_gpio_property_lookup(i32, i8*, i32, %struct.acpi_gpio_lookup*) #1

declare dso_local i32 @acpi_fwnode_handle(%struct.acpi_device*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @acpi_gpio_resource_lookup(%struct.acpi_gpio_lookup*, %struct.acpi_gpio_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
