; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max77620.c_max77620_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max77620.c_max77620_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.max77620_chip = type { i32, i32 }
%struct.max77620_gpio = type { %struct.TYPE_8__, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max77620_gpio_dir_input = common dso_local global i32 0, align 4
@max77620_gpio_get = common dso_local global i32 0, align 4
@max77620_gpio_dir_output = common dso_local global i32 0, align 4
@max77620_gpio_set = common dso_local global i32 0, align 4
@max77620_gpio_set_config = common dso_local global i32 0, align 4
@max77620_gpio_to_irq = common dso_local global i32 0, align 4
@MAX77620_GPIO_NR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"gpio_init: Failed to add max77620_gpio\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@max77620_gpio_irq_chip = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to add gpio irq_chip %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77620_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max77620_chip*, align 8
  %5 = alloca %struct.max77620_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = call %struct.max77620_chip* @dev_get_drvdata(%struct.TYPE_9__* %11)
  store %struct.max77620_chip* %12, %struct.max77620_chip** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call i32 @platform_get_irq(%struct.platform_device* %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %121

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.max77620_gpio* @devm_kzalloc(%struct.TYPE_7__* %22, i32 72, i32 %23)
  store %struct.max77620_gpio* %24, %struct.max77620_gpio** %5, align 8
  %25 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %26 = icmp ne %struct.max77620_gpio* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %121

30:                                               ; preds = %20
  %31 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %32 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %35 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %39 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %38, i32 0, i32 1
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %44 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 11
  store i32 %42, i32* %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %49 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 10
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %50, align 8
  %51 = load i32, i32* @max77620_gpio_dir_input, align 4
  %52 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %53 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 9
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @max77620_gpio_get, align 4
  %56 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %57 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 8
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @max77620_gpio_dir_output, align 4
  %60 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %61 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 7
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @max77620_gpio_set, align 4
  %64 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %65 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 6
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* @max77620_gpio_set_config, align 4
  %68 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %69 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 5
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @max77620_gpio_to_irq, align 4
  %72 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %73 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* @MAX77620_GPIO_NR, align 4
  %76 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %77 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  store i32 %75, i32* %78, align 4
  %79 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %80 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %83 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 -1, i32* %84, align 4
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %87 = call i32 @platform_set_drvdata(%struct.platform_device* %85, %struct.max77620_gpio* %86)
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %91 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %90, i32 0, i32 0
  %92 = load %struct.max77620_gpio*, %struct.max77620_gpio** %5, align 8
  %93 = call i32 @devm_gpiochip_add_data(%struct.TYPE_7__* %89, %struct.TYPE_8__* %91, %struct.max77620_gpio* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %30
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %121

101:                                              ; preds = %30
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %105 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @IRQF_ONESHOT, align 4
  %109 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %110 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %109, i32 0, i32 0
  %111 = call i32 @devm_regmap_add_irq_chip(%struct.TYPE_7__* %103, i32 %106, i32 %107, i32 %108, i32 -1, i32* @max77620_gpio_irq_chip, i32* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %101
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load i32, i32* %7, align 4
  %118 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %2, align 4
  br label %121

120:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %114, %96, %27, %17
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.max77620_chip* @dev_get_drvdata(%struct.TYPE_9__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.max77620_gpio* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max77620_gpio*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.max77620_gpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @devm_regmap_add_irq_chip(%struct.TYPE_7__*, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
