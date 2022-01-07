; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max77650.c_max77650_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max77650.c_max77650_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device* }
%struct.max77650_gpio_chip = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device*, i32 }
%struct.i2c_client = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GPI\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@max77650_gpio_direction_input = common dso_local global i32 0, align 4
@max77650_gpio_direction_output = common dso_local global i32 0, align 4
@max77650_gpio_set_value = common dso_local global i32 0, align 4
@max77650_gpio_get_value = common dso_local global i32 0, align 4
@max77650_gpio_get_direction = common dso_local global i32 0, align 4
@max77650_gpio_set_config = common dso_local global i32 0, align 4
@max77650_gpio_to_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77650_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77650_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max77650_gpio_chip*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.max77650_gpio_chip* @devm_kzalloc(%struct.device* %15, i32 80, i32 %16)
  store %struct.max77650_gpio_chip* %17, %struct.max77650_gpio_chip** %4, align 8
  %18 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %19 = icmp ne %struct.max77650_gpio_chip* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %106

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call i32 @dev_get_regmap(%struct.device* %24, i32* null)
  %26 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %27 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %29 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %106

35:                                               ; preds = %23
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = call i64 @platform_get_irq_byname(%struct.platform_device* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %39 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %41 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %46 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %106

49:                                               ; preds = %35
  %50 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %51 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  %53 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %54 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %60 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 12
  store i32 %58, i32* %61, align 8
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %64 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 11
  store %struct.device* %62, %struct.device** %65, align 8
  %66 = load i32, i32* @THIS_MODULE, align 4
  %67 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %68 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 10
  store i32 %66, i32* %69, align 8
  %70 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %71 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  %73 = load i32, i32* @max77650_gpio_direction_input, align 4
  %74 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %75 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 9
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @max77650_gpio_direction_output, align 4
  %78 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %79 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 8
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @max77650_gpio_set_value, align 4
  %82 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %83 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 7
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @max77650_gpio_get_value, align 4
  %86 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %87 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 6
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* @max77650_gpio_get_direction, align 4
  %90 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %91 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 5
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* @max77650_gpio_set_config, align 4
  %94 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %95 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 8
  %97 = load i32, i32* @max77650_gpio_to_irq, align 4
  %98 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %99 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 4
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %103 = getelementptr inbounds %struct.max77650_gpio_chip, %struct.max77650_gpio_chip* %102, i32 0, i32 1
  %104 = load %struct.max77650_gpio_chip*, %struct.max77650_gpio_chip** %4, align 8
  %105 = call i32 @devm_gpiochip_add_data(%struct.device* %101, %struct.TYPE_2__* %103, %struct.max77650_gpio_chip* %104)
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %49, %44, %32, %20
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.max77650_gpio_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_get_regmap(%struct.device*, i32*) #1

declare dso_local i64 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_2__*, %struct.max77650_gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
