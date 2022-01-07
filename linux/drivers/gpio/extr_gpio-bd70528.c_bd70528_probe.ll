; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bd70528.c_bd70528_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bd70528.c_bd70528_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.bd70528_gpio = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.rohm_regmap_dev = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"No MFD driver data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"bd70528-gpio\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@bd70528_get_direction = common dso_local global i32 0, align 4
@bd70528_direction_input = common dso_local global i32 0, align 4
@bd70528_direction_output = common dso_local global i32 0, align 4
@bd70528_gpio_set_config = common dso_local global i32 0, align 4
@bd70528_gpio_get = common dso_local global i32 0, align 4
@bd70528_gpio_set = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"gpio_init: Failed to add bd70528-gpio\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bd70528_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bd70528_gpio*, align 8
  %5 = alloca %struct.rohm_regmap_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = call %struct.rohm_regmap_dev* @dev_get_drvdata(%struct.TYPE_10__* %10)
  store %struct.rohm_regmap_dev* %11, %struct.rohm_regmap_dev** %5, align 8
  %12 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %5, align 8
  %13 = icmp ne %struct.rohm_regmap_dev* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %103

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.bd70528_gpio* @devm_kzalloc(%struct.TYPE_8__* %22, i32 80, i32 %23)
  store %struct.bd70528_gpio* %24, %struct.bd70528_gpio** %4, align 8
  %25 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %26 = icmp ne %struct.bd70528_gpio* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %103

30:                                               ; preds = %20
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %34 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %41 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 12
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %42, align 8
  %43 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %44 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %45, align 8
  %46 = load i32, i32* @THIS_MODULE, align 4
  %47 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %48 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 11
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @bd70528_get_direction, align 4
  %51 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %52 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 10
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @bd70528_direction_input, align 4
  %55 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %56 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 9
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @bd70528_direction_output, align 4
  %59 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %60 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 8
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @bd70528_gpio_set_config, align 4
  %63 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %64 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 7
  store i32 %62, i32* %65, align 8
  %66 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %67 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 8
  %69 = load i32, i32* @bd70528_gpio_get, align 4
  %70 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %71 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 6
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @bd70528_gpio_set, align 4
  %74 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %75 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 5
  store i32 %73, i32* %76, align 8
  %77 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %78 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  store i32 4, i32* %79, align 4
  %80 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %81 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  store i32 -1, i32* %82, align 8
  %83 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %5, align 8
  %84 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %87 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %92 = getelementptr inbounds %struct.bd70528_gpio, %struct.bd70528_gpio* %91, i32 0, i32 0
  %93 = load %struct.bd70528_gpio*, %struct.bd70528_gpio** %4, align 8
  %94 = call i32 @devm_gpiochip_add_data(%struct.TYPE_8__* %90, %struct.TYPE_9__* %92, %struct.bd70528_gpio* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %30
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @dev_err(%struct.TYPE_8__* %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %97, %30
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %27, %14
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.rohm_regmap_dev* @dev_get_drvdata(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local %struct.bd70528_gpio* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.bd70528_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
