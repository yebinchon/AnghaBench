; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-kempld.c_kempld_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-kempld.c_kempld_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.kempld_device_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.kempld_platform_data = type { i32 }
%struct.kempld_gpio_data = type { %struct.gpio_chip, %struct.kempld_device_data* }
%struct.gpio_chip = type { i8*, i32, i32, i64, i32, i32, i32, i32, i32, %struct.device*, i32 }

@.str = private unnamed_addr constant [78 x i8] c"Driver only supports GPIO devices compatible to PLD spec. rev. 2.0 or higher\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"gpio-kempld\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@kempld_gpio_direction_input = common dso_local global i32 0, align 4
@kempld_gpio_direction_output = common dso_local global i32 0, align 4
@kempld_gpio_get_direction = common dso_local global i32 0, align 4
@kempld_gpio_get = common dso_local global i32 0, align 4
@kempld_gpio_set = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"No GPIO pins detected\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Could not register GPIO chip\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"GPIO functionality initialized with %d pins\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kempld_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kempld_device_data*, align 8
  %6 = alloca %struct.kempld_platform_data*, align 8
  %7 = alloca %struct.kempld_gpio_data*, align 8
  %8 = alloca %struct.gpio_chip*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.kempld_device_data* @dev_get_drvdata(i32 %14)
  store %struct.kempld_device_data* %15, %struct.kempld_device_data** %5, align 8
  %16 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %17 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.kempld_platform_data* @dev_get_platdata(i32 %18)
  store %struct.kempld_platform_data* %19, %struct.kempld_platform_data** %6, align 8
  %20 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %21 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %120

30:                                               ; preds = %1
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.kempld_gpio_data* @devm_kzalloc(%struct.device* %31, i32 72, i32 %32)
  store %struct.kempld_gpio_data* %33, %struct.kempld_gpio_data** %7, align 8
  %34 = load %struct.kempld_gpio_data*, %struct.kempld_gpio_data** %7, align 8
  %35 = icmp ne %struct.kempld_gpio_data* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %120

39:                                               ; preds = %30
  %40 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %41 = load %struct.kempld_gpio_data*, %struct.kempld_gpio_data** %7, align 8
  %42 = getelementptr inbounds %struct.kempld_gpio_data, %struct.kempld_gpio_data* %41, i32 0, i32 1
  store %struct.kempld_device_data* %40, %struct.kempld_device_data** %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.kempld_gpio_data*, %struct.kempld_gpio_data** %7, align 8
  %45 = call i32 @platform_set_drvdata(%struct.platform_device* %43, %struct.kempld_gpio_data* %44)
  %46 = load %struct.kempld_gpio_data*, %struct.kempld_gpio_data** %7, align 8
  %47 = getelementptr inbounds %struct.kempld_gpio_data, %struct.kempld_gpio_data* %46, i32 0, i32 0
  store %struct.gpio_chip* %47, %struct.gpio_chip** %8, align 8
  %48 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %49 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %49, align 8
  %50 = load i32, i32* @THIS_MODULE, align 4
  %51 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %52 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 8
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %55 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %54, i32 0, i32 9
  store %struct.device* %53, %struct.device** %55, align 8
  %56 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %57 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %56, i32 0, i32 1
  store i32 1, i32* %57, align 8
  %58 = load %struct.kempld_platform_data*, %struct.kempld_platform_data** %6, align 8
  %59 = icmp ne %struct.kempld_platform_data* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %39
  %61 = load %struct.kempld_platform_data*, %struct.kempld_platform_data** %6, align 8
  %62 = getelementptr inbounds %struct.kempld_platform_data, %struct.kempld_platform_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.kempld_platform_data*, %struct.kempld_platform_data** %6, align 8
  %67 = getelementptr inbounds %struct.kempld_platform_data, %struct.kempld_platform_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %70 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %74

71:                                               ; preds = %60, %39
  %72 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %73 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %72, i32 0, i32 2
  store i32 -1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i32, i32* @kempld_gpio_direction_input, align 4
  %76 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %77 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @kempld_gpio_direction_output, align 4
  %79 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %80 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @kempld_gpio_get_direction, align 4
  %82 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %83 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @kempld_gpio_get, align 4
  %85 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %86 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @kempld_gpio_set, align 4
  %88 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %89 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %91 = call i64 @kempld_gpio_pincount(%struct.kempld_device_data* %90)
  %92 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %93 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %92, i32 0, i32 3
  store i64 %91, i64* %93, align 8
  %94 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %95 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %74
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %120

103:                                              ; preds = %74
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %106 = load %struct.kempld_gpio_data*, %struct.kempld_gpio_data** %7, align 8
  %107 = call i32 @devm_gpiochip_add_data(%struct.device* %104, %struct.gpio_chip* %105, %struct.kempld_gpio_data* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = call i32 @dev_err(%struct.device* %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %2, align 4
  br label %120

114:                                              ; preds = %103
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %117 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @dev_info(%struct.device* %115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %118)
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %114, %110, %98, %36, %25
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.kempld_device_data* @dev_get_drvdata(i32) #1

declare dso_local %struct.kempld_platform_data* @dev_get_platdata(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.kempld_gpio_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.kempld_gpio_data*) #1

declare dso_local i64 @kempld_gpio_pincount(%struct.kempld_device_data*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.gpio_chip*, %struct.kempld_gpio_data*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
