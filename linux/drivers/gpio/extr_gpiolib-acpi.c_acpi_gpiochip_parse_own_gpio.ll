; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpiochip_parse_own_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpiochip_parse_own_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.acpi_gpio_chip = type { %struct.gpio_chip* }
%struct.gpio_chip = type { i32 }
%struct.fwnode_handle = type { i32 }

@GPIO_LOOKUP_FLAGS_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@GPIO_ACTIVE_LOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"output-low\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"output-high\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"line-name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpio_desc* (%struct.acpi_gpio_chip*, %struct.fwnode_handle*, i8**, i64*, i32*)* @acpi_gpiochip_parse_own_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpio_desc* @acpi_gpiochip_parse_own_gpio(%struct.acpi_gpio_chip* %0, %struct.fwnode_handle* %1, i8** %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca %struct.acpi_gpio_chip*, align 8
  %8 = alloca %struct.fwnode_handle*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.gpio_chip*, align 8
  %13 = alloca %struct.gpio_desc*, align 8
  %14 = alloca [2 x i64], align 16
  %15 = alloca i32, align 4
  store %struct.acpi_gpio_chip* %0, %struct.acpi_gpio_chip** %7, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %7, align 8
  %17 = getelementptr inbounds %struct.acpi_gpio_chip, %struct.acpi_gpio_chip* %16, i32 0, i32 0
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %17, align 8
  store %struct.gpio_chip* %18, %struct.gpio_chip** %12, align 8
  %19 = load i64, i64* @GPIO_LOOKUP_FLAGS_DEFAULT, align 8
  %20 = load i64*, i64** %10, align 8
  store i64 %19, i64* %20, align 8
  %21 = load i32*, i32** %11, align 8
  store i32 0, i32* %21, align 4
  %22 = load i8**, i8*** %9, align 8
  store i8* null, i8** %22, align 8
  %23 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %26 = call i32 @ARRAY_SIZE(i64* %25)
  %27 = call i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* %24, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* %15, align 4
  %32 = call %struct.gpio_desc* @ERR_PTR(i32 %31)
  store %struct.gpio_desc* %32, %struct.gpio_desc** %6, align 8
  br label %90

33:                                               ; preds = %5
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %12, align 8
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %36 = load i64, i64* %35, align 16
  %37 = call %struct.gpio_desc* @gpiochip_get_desc(%struct.gpio_chip* %34, i64 %36)
  store %struct.gpio_desc* %37, %struct.gpio_desc** %13, align 8
  %38 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %39 = call i64 @IS_ERR(%struct.gpio_desc* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  store %struct.gpio_desc* %42, %struct.gpio_desc** %6, align 8
  br label %90

43:                                               ; preds = %33
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i64, i64* @GPIO_ACTIVE_LOW, align 8
  %49 = load i64*, i64** %10, align 8
  %50 = load i64, i64* %49, align 8
  %51 = or i64 %50, %48
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %47, %43
  %53 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %54 = call i64 @fwnode_property_present(%struct.fwnode_handle* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32, i32* @GPIOD_IN, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %85

61:                                               ; preds = %52
  %62 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %63 = call i64 @fwnode_property_present(%struct.fwnode_handle* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %84

70:                                               ; preds = %61
  %71 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %72 = call i64 @fwnode_property_present(%struct.fwnode_handle* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %75
  store i32 %78, i32* %76, align 4
  br label %83

79:                                               ; preds = %70
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  %82 = call %struct.gpio_desc* @ERR_PTR(i32 %81)
  store %struct.gpio_desc* %82, %struct.gpio_desc** %6, align 8
  br label %90

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %65
  br label %85

85:                                               ; preds = %84, %56
  %86 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %87 = load i8**, i8*** %9, align 8
  %88 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %87)
  %89 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  store %struct.gpio_desc* %89, %struct.gpio_desc** %6, align 8
  br label %90

90:                                               ; preds = %85, %79, %41, %30
  %91 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  ret %struct.gpio_desc* %91
}

declare dso_local i32 @fwnode_property_read_u32_array(%struct.fwnode_handle*, i8*, i64*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local %struct.gpio_desc* @gpiochip_get_desc(%struct.gpio_chip*, i64) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i64 @fwnode_property_present(%struct.fwnode_handle*, i8*) #1

declare dso_local i32 @fwnode_property_read_string(%struct.fwnode_handle*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
