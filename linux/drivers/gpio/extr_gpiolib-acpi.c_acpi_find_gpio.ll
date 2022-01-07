; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_find_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_find_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.device = type { i32 }
%struct.acpi_device = type { i32 }
%struct.acpi_gpio_info = type { i64 }

@gpio_suffixes = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"refusing GpioInt() entry when doing GPIOD_OUT_* lookup\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gpio_desc* @acpi_find_gpio(%struct.device* %0, i8* %1, i32 %2, i32* %3, i64* %4) #0 {
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.acpi_device*, align 8
  %13 = alloca %struct.acpi_gpio_info, align 8
  %14 = alloca %struct.gpio_desc*, align 8
  %15 = alloca [32 x i8], align 16
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %17)
  store %struct.acpi_device* %18, %struct.acpi_device** %12, align 8
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %63, %5
  %20 = load i32, i32* %16, align 4
  %21 = load i8**, i8*** @gpio_suffixes, align 8
  %22 = call i32 @ARRAY_SIZE(i8** %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %29 = load i8*, i8** %8, align 8
  %30 = load i8**, i8*** @gpio_suffixes, align 8
  %31 = load i32, i32* %16, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %28, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %34)
  br label %44

36:                                               ; preds = %24
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %38 = load i8**, i8*** @gpio_suffixes, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %37, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %36, %27
  %45 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %47 = load i32, i32* %9, align 4
  %48 = call %struct.gpio_desc* @acpi_get_gpiod_by_index(%struct.acpi_device* %45, i8* %46, i32 %47, %struct.acpi_gpio_info* %13)
  store %struct.gpio_desc* %48, %struct.gpio_desc** %14, align 8
  %49 = load %struct.gpio_desc*, %struct.gpio_desc** %14, align 8
  %50 = call i64 @IS_ERR(%struct.gpio_desc* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %66

53:                                               ; preds = %44
  %54 = load %struct.gpio_desc*, %struct.gpio_desc** %14, align 8
  %55 = call i32 @PTR_ERR(%struct.gpio_desc* %54)
  %56 = load i32, i32* @EPROBE_DEFER, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.gpio_desc*, %struct.gpio_desc** %14, align 8
  %61 = call %struct.gpio_desc* @ERR_CAST(%struct.gpio_desc* %60)
  store %struct.gpio_desc* %61, %struct.gpio_desc** %6, align 8
  br label %115

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %16, align 4
  br label %19

66:                                               ; preds = %52, %19
  %67 = load %struct.gpio_desc*, %struct.gpio_desc** %14, align 8
  %68 = call i64 @IS_ERR(%struct.gpio_desc* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %66
  %71 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @acpi_can_fallback_to_crs(%struct.acpi_device* %71, i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @ENOENT, align 4
  %77 = sub nsw i32 0, %76
  %78 = call %struct.gpio_desc* @ERR_PTR(i32 %77)
  store %struct.gpio_desc* %78, %struct.gpio_desc** %6, align 8
  br label %115

79:                                               ; preds = %70
  %80 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call %struct.gpio_desc* @acpi_get_gpiod_by_index(%struct.acpi_device* %80, i8* null, i32 %81, %struct.acpi_gpio_info* %13)
  store %struct.gpio_desc* %82, %struct.gpio_desc** %14, align 8
  %83 = load %struct.gpio_desc*, %struct.gpio_desc** %14, align 8
  %84 = call i64 @IS_ERR(%struct.gpio_desc* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load %struct.gpio_desc*, %struct.gpio_desc** %14, align 8
  store %struct.gpio_desc* %87, %struct.gpio_desc** %6, align 8
  br label %115

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %66
  %90 = getelementptr inbounds %struct.acpi_gpio_info, %struct.acpi_gpio_info* %13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %98, %93
  %104 = load %struct.device*, %struct.device** %7, align 8
  %105 = call i32 @dev_dbg(%struct.device* %104, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @ENOENT, align 4
  %107 = sub nsw i32 0, %106
  %108 = call %struct.gpio_desc* @ERR_PTR(i32 %107)
  store %struct.gpio_desc* %108, %struct.gpio_desc** %6, align 8
  br label %115

109:                                              ; preds = %98, %89
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @acpi_gpio_update_gpiod_flags(i32* %110, %struct.acpi_gpio_info* %13)
  %112 = load i64*, i64** %11, align 8
  %113 = call i32 @acpi_gpio_update_gpiod_lookup_flags(i64* %112, %struct.acpi_gpio_info* %13)
  %114 = load %struct.gpio_desc*, %struct.gpio_desc** %14, align 8
  store %struct.gpio_desc* %114, %struct.gpio_desc** %6, align 8
  br label %115

115:                                              ; preds = %109, %103, %86, %75, %59
  %116 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  ret %struct.gpio_desc* %116
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local %struct.gpio_desc* @acpi_get_gpiod_by_index(%struct.acpi_device*, i8*, i32, %struct.acpi_gpio_info*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @ERR_CAST(%struct.gpio_desc*) #1

declare dso_local i32 @acpi_can_fallback_to_crs(%struct.acpi_device*, i8*) #1

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @acpi_gpio_update_gpiod_flags(i32*, %struct.acpi_gpio_info*) #1

declare dso_local i32 @acpi_gpio_update_gpiod_lookup_flags(i64*, %struct.acpi_gpio_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
