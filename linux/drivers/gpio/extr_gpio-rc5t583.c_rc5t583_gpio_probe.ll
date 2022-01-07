; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rc5t583.c_rc5t583_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rc5t583.c_rc5t583_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rc5t583 = type { i32 }
%struct.rc5t583_platform_data = type { i32 }
%struct.rc5t583_gpio = type { %struct.TYPE_5__, %struct.rc5t583* }
%struct.TYPE_5__ = type { i8*, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"gpio-rc5t583\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@rc5t583_gpio_free = common dso_local global i32 0, align 4
@rc5t583_gpio_dir_input = common dso_local global i32 0, align 4
@rc5t583_gpio_dir_output = common dso_local global i32 0, align 4
@rc5t583_gpio_set = common dso_local global i32 0, align 4
@rc5t583_gpio_get = common dso_local global i32 0, align 4
@rc5t583_gpio_to_irq = common dso_local global i32 0, align 4
@RC5T583_MAX_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rc5t583_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc5t583_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rc5t583*, align 8
  %5 = alloca %struct.rc5t583_platform_data*, align 8
  %6 = alloca %struct.rc5t583_gpio*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.rc5t583* @dev_get_drvdata(i32 %10)
  store %struct.rc5t583* %11, %struct.rc5t583** %4, align 8
  %12 = load %struct.rc5t583*, %struct.rc5t583** %4, align 8
  %13 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.rc5t583_platform_data* @dev_get_platdata(i32 %14)
  store %struct.rc5t583_platform_data* %15, %struct.rc5t583_platform_data** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.rc5t583_gpio* @devm_kzalloc(%struct.TYPE_4__* %17, i32 64, i32 %18)
  store %struct.rc5t583_gpio* %19, %struct.rc5t583_gpio** %6, align 8
  %20 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %21 = icmp ne %struct.rc5t583_gpio* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %99

25:                                               ; preds = %1
  %26 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %27 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %28, align 8
  %29 = load i32, i32* @THIS_MODULE, align 4
  %30 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %31 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 11
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @rc5t583_gpio_free, align 4
  %34 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %35 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 10
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @rc5t583_gpio_dir_input, align 4
  %38 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %39 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 9
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @rc5t583_gpio_dir_output, align 4
  %42 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %43 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 8
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @rc5t583_gpio_set, align 4
  %46 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %47 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 7
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @rc5t583_gpio_get, align 4
  %50 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %51 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 6
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* @rc5t583_gpio_to_irq, align 4
  %54 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %55 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 5
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @RC5T583_MAX_GPIO, align 4
  %58 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %59 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  store i32 %57, i32* %60, align 8
  %61 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %62 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %67 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %68, align 8
  %69 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %70 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i32 -1, i32* %71, align 4
  %72 = load %struct.rc5t583*, %struct.rc5t583** %4, align 8
  %73 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %74 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %73, i32 0, i32 1
  store %struct.rc5t583* %72, %struct.rc5t583** %74, align 8
  %75 = load %struct.rc5t583_platform_data*, %struct.rc5t583_platform_data** %5, align 8
  %76 = icmp ne %struct.rc5t583_platform_data* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %25
  %78 = load %struct.rc5t583_platform_data*, %struct.rc5t583_platform_data** %5, align 8
  %79 = getelementptr inbounds %struct.rc5t583_platform_data, %struct.rc5t583_platform_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.rc5t583_platform_data*, %struct.rc5t583_platform_data** %5, align 8
  %84 = getelementptr inbounds %struct.rc5t583_platform_data, %struct.rc5t583_platform_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %87 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %82, %77, %25
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %92 = call i32 @platform_set_drvdata(%struct.platform_device* %90, %struct.rc5t583_gpio* %91)
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %96 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %95, i32 0, i32 0
  %97 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %6, align 8
  %98 = call i32 @devm_gpiochip_add_data(%struct.TYPE_4__* %94, %struct.TYPE_5__* %96, %struct.rc5t583_gpio* %97)
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %89, %22
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.rc5t583* @dev_get_drvdata(i32) #1

declare dso_local %struct.rc5t583_platform_data* @dev_get_platdata(i32) #1

declare dso_local %struct.rc5t583_gpio* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rc5t583_gpio*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_4__*, %struct.TYPE_5__*, %struct.rc5t583_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
