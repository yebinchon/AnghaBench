; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mlxbf.c_mlxbf_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mlxbf.c_mlxbf_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mlxbf_gpio_state = type { %struct.gpio_chip, i64 }
%struct.gpio_chip = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXBF_GPIO_PIN_STATE = common dso_local global i64 0, align 8
@MLXBF_GPIO_PIN_DIR_O = common dso_local global i64 0, align 8
@MLXBF_GPIO_PIN_DIR_I = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@MLXBF_GPIO_NR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed adding memory mapped gpiochip\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"registered Mellanox BlueField GPIO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mlxbf_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxbf_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mlxbf_gpio_state*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mlxbf_gpio_state* @devm_kzalloc(%struct.device* %11, i32 16, i32 %12)
  store %struct.mlxbf_gpio_state* %13, %struct.mlxbf_gpio_state** %4, align 8
  %14 = load %struct.mlxbf_gpio_state*, %struct.mlxbf_gpio_state** %4, align 8
  %15 = icmp ne %struct.mlxbf_gpio_state* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %86

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %20, i32 0)
  %22 = load %struct.mlxbf_gpio_state*, %struct.mlxbf_gpio_state** %4, align 8
  %23 = getelementptr inbounds %struct.mlxbf_gpio_state, %struct.mlxbf_gpio_state* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.mlxbf_gpio_state*, %struct.mlxbf_gpio_state** %4, align 8
  %25 = getelementptr inbounds %struct.mlxbf_gpio_state, %struct.mlxbf_gpio_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @IS_ERR(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.mlxbf_gpio_state*, %struct.mlxbf_gpio_state** %4, align 8
  %31 = getelementptr inbounds %struct.mlxbf_gpio_state, %struct.mlxbf_gpio_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @PTR_ERR(i64 %32)
  store i32 %33, i32* %2, align 4
  br label %86

34:                                               ; preds = %19
  %35 = load %struct.mlxbf_gpio_state*, %struct.mlxbf_gpio_state** %4, align 8
  %36 = getelementptr inbounds %struct.mlxbf_gpio_state, %struct.mlxbf_gpio_state* %35, i32 0, i32 0
  store %struct.gpio_chip* %36, %struct.gpio_chip** %6, align 8
  %37 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load %struct.mlxbf_gpio_state*, %struct.mlxbf_gpio_state** %4, align 8
  %40 = getelementptr inbounds %struct.mlxbf_gpio_state, %struct.mlxbf_gpio_state* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MLXBF_GPIO_PIN_STATE, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.mlxbf_gpio_state*, %struct.mlxbf_gpio_state** %4, align 8
  %45 = getelementptr inbounds %struct.mlxbf_gpio_state, %struct.mlxbf_gpio_state* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MLXBF_GPIO_PIN_DIR_O, align 8
  %48 = add nsw i64 %46, %47
  %49 = load %struct.mlxbf_gpio_state*, %struct.mlxbf_gpio_state** %4, align 8
  %50 = getelementptr inbounds %struct.mlxbf_gpio_state, %struct.mlxbf_gpio_state* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MLXBF_GPIO_PIN_DIR_I, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @bgpio_init(%struct.gpio_chip* %37, %struct.device* %38, i32 8, i64 %43, i32* null, i32* null, i64 %48, i64 %53, i32 0)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %34
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %86

60:                                               ; preds = %34
  %61 = load i32, i32* @THIS_MODULE, align 4
  %62 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %63 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @MLXBF_GPIO_NR, align 4
  %65 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %66 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = load %struct.mlxbf_gpio_state*, %struct.mlxbf_gpio_state** %4, align 8
  %69 = getelementptr inbounds %struct.mlxbf_gpio_state, %struct.mlxbf_gpio_state* %68, i32 0, i32 0
  %70 = load %struct.mlxbf_gpio_state*, %struct.mlxbf_gpio_state** %4, align 8
  %71 = call i32 @devm_gpiochip_add_data(%struct.device* %67, %struct.gpio_chip* %69, %struct.mlxbf_gpio_state* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %60
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %86

79:                                               ; preds = %60
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = load %struct.mlxbf_gpio_state*, %struct.mlxbf_gpio_state** %4, align 8
  %82 = call i32 @platform_set_drvdata(%struct.platform_device* %80, %struct.mlxbf_gpio_state* %81)
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_info(%struct.device* %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %79, %74, %57, %29, %16
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.mlxbf_gpio_state* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @bgpio_init(%struct.gpio_chip*, %struct.device*, i32, i64, i32*, i32*, i64, i64, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.gpio_chip*, %struct.mlxbf_gpio_state*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mlxbf_gpio_state*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
