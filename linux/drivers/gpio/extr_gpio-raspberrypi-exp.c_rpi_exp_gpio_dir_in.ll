; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-raspberrypi-exp.c_rpi_exp_gpio_dir_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-raspberrypi-exp.c_rpi_exp_gpio_dir_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.rpi_exp_gpio = type { i32 }
%struct.gpio_set_config = type { i32, i32, i64, i64, i64, i32 }

@RPI_EXP_GPIO_BASE = common dso_local global i32 0, align 4
@RPI_EXP_GPIO_DIR_IN = common dso_local global i32 0, align 4
@RPI_FIRMWARE_SET_GPIO_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to set GPIO %u to input (%d %x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @rpi_exp_gpio_dir_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpi_exp_gpio_dir_in(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpi_exp_gpio*, align 8
  %7 = alloca %struct.gpio_set_config, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.rpi_exp_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.rpi_exp_gpio* %10, %struct.rpi_exp_gpio** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @RPI_EXP_GPIO_BASE, align 4
  %13 = add i32 %11, %12
  %14 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @RPI_EXP_GPIO_DIR_IN, align 4
  %16 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %7, i32 0, i32 5
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %7, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %7, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %7, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @rpi_exp_gpio_get_polarity(%struct.gpio_chip* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %60

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %7, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %6, align 8
  %31 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RPI_FIRMWARE_SET_GPIO_CONFIG, align 4
  %34 = call i32 @rpi_firmware_property(i32 %32, i32 %33, %struct.gpio_set_config* %7, i32 40)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %37, %27
  %42 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %43 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %8, align 4
  %47 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  br label %57

54:                                               ; preds = %41
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi i32 [ %53, %52 ], [ %56, %54 ]
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %57, %25
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.rpi_exp_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @rpi_exp_gpio_get_polarity(%struct.gpio_chip*, i32) #1

declare dso_local i32 @rpi_firmware_property(i32, i32, %struct.gpio_set_config*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
