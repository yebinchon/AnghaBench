; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-raspberrypi-exp.c_rpi_exp_gpio_dir_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-raspberrypi-exp.c_rpi_exp_gpio_dir_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.rpi_exp_gpio = type { i32 }
%struct.gpio_set_config = type { i32, i32, i32, i64, i64, i32 }

@RPI_EXP_GPIO_BASE = common dso_local global i32 0, align 4
@RPI_EXP_GPIO_DIR_OUT = common dso_local global i32 0, align 4
@RPI_FIRMWARE_SET_GPIO_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to set GPIO %u to output (%d %x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @rpi_exp_gpio_dir_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpi_exp_gpio_dir_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpi_exp_gpio*, align 8
  %9 = alloca %struct.gpio_set_config, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %12 = call %struct.rpi_exp_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.rpi_exp_gpio* %12, %struct.rpi_exp_gpio** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RPI_EXP_GPIO_BASE, align 4
  %15 = add i32 %13, %14
  %16 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %9, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @RPI_EXP_GPIO_DIR_OUT, align 4
  %18 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %9, i32 0, i32 5
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %9, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %9, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %9, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @rpi_exp_gpio_get_polarity(%struct.gpio_chip* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %63

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %9, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %8, align 8
  %34 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RPI_FIRMWARE_SET_GPIO_CONFIG, align 4
  %37 = call i32 @rpi_firmware_property(i32 %35, i32 %36, %struct.gpio_set_config* %9, i32 40)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %40, %30
  %45 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %46 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %10, align 4
  %50 = getelementptr inbounds %struct.gpio_set_config, %struct.gpio_set_config* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %10, align 4
  br label %60

57:                                               ; preds = %44
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi i32 [ %56, %55 ], [ %59, %57 ]
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %60, %28
  %64 = load i32, i32* %4, align 4
  ret i32 %64
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
