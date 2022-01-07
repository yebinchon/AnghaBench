; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-loongson1.c_ls1x_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-loongson1.c_ls1x_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.gpio_chip = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gpio_reg_base = common dso_local global i64 0, align 8
@GPIO_DATA = common dso_local global i64 0, align 8
@GPIO_OUTPUT = common dso_local global i64 0, align 8
@GPIO_DIR = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@ls1x_gpio_request = common dso_local global i32 0, align 4
@ls1x_gpio_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Loongson1 GPIO driver registered\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to register GPIO device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ls1x_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls1x_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 1
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.gpio_chip* @devm_kzalloc(%struct.device* %9, i32 16, i32 %10)
  store %struct.gpio_chip* %11, %struct.gpio_chip** %5, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = icmp ne %struct.gpio_chip* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %74

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %18, i32 0)
  store i64 %19, i64* @gpio_reg_base, align 8
  %20 = load i64, i64* @gpio_reg_base, align 8
  %21 = call i64 @IS_ERR(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i64, i64* @gpio_reg_base, align 8
  %25 = call i32 @PTR_ERR(i64 %24)
  store i32 %25, i32* %2, align 4
  br label %74

26:                                               ; preds = %17
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i64, i64* @gpio_reg_base, align 8
  %30 = load i64, i64* @GPIO_DATA, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @gpio_reg_base, align 8
  %33 = load i64, i64* @GPIO_OUTPUT, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* @gpio_reg_base, align 8
  %36 = load i64, i64* @GPIO_DIR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @bgpio_init(%struct.gpio_chip* %27, %struct.device* %28, i32 4, i64 %31, i64 %34, i32* null, i32* null, i64 %37, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %70

42:                                               ; preds = %26
  %43 = load i32, i32* @THIS_MODULE, align 4
  %44 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %45 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @ls1x_gpio_request, align 4
  %47 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %48 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ls1x_gpio_free, align 4
  %50 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %51 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 32
  %56 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %57 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %60 = call i32 @devm_gpiochip_add_data(%struct.device* %58, %struct.gpio_chip* %59, i32* null)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %42
  br label %70

64:                                               ; preds = %42
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %67 = call i32 @platform_set_drvdata(%struct.platform_device* %65, %struct.gpio_chip* %66)
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @dev_info(%struct.device* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %74

70:                                               ; preds = %63, %41
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %64, %23, %14
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.gpio_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @bgpio_init(%struct.gpio_chip*, %struct.device*, i32, i64, i64, i32*, i32*, i64, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.gpio_chip*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpio_chip*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
