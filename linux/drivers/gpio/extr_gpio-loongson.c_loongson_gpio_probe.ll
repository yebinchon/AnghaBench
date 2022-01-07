; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-loongson.c_loongson_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-loongson.c_loongson_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.gpio_chip = type { i8*, i32, i32, i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"loongson-gpio-chip\00", align 1
@LOONGSON_N_GPIO = common dso_local global i32 0, align 4
@loongson_gpio_get_value = common dso_local global i32 0, align 4
@loongson_gpio_set_value = common dso_local global i32 0, align 4
@loongson_gpio_direction_input = common dso_local global i32 0, align 4
@loongson_gpio_direction_output = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @loongson_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loongson_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.gpio_chip* @devm_kzalloc(%struct.device* %8, i32 40, i32 %9)
  store %struct.gpio_chip* %10, %struct.gpio_chip** %4, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = icmp ne %struct.gpio_chip* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %18 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @LOONGSON_N_GPIO, align 4
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %23 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @loongson_gpio_get_value, align 4
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @loongson_gpio_set_value, align 4
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %29 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @loongson_gpio_direction_input, align 4
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %32 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @loongson_gpio_direction_output, align 4
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %37 = call i32 @gpiochip_add_data(%struct.gpio_chip* %36, i32* null)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %16, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.gpio_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
