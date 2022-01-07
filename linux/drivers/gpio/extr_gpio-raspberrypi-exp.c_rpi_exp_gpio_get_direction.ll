; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-raspberrypi-exp.c_rpi_exp_gpio_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-raspberrypi-exp.c_rpi_exp_gpio_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.rpi_exp_gpio = type { i32 }
%struct.gpio_get_config = type { i32, i32 }

@RPI_EXP_GPIO_BASE = common dso_local global i32 0, align 4
@RPI_FIRMWARE_GET_GPIO_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to get GPIO %u config (%d %x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @rpi_exp_gpio_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpi_exp_gpio_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpi_exp_gpio*, align 8
  %7 = alloca %struct.gpio_get_config, align 4
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.rpi_exp_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.rpi_exp_gpio* %10, %struct.rpi_exp_gpio** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @RPI_EXP_GPIO_BASE, align 4
  %13 = add i32 %11, %12
  %14 = getelementptr inbounds %struct.gpio_get_config, %struct.gpio_get_config* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %6, align 8
  %16 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RPI_FIRMWARE_GET_GPIO_CONFIG, align 4
  %19 = call i32 @rpi_firmware_property(i32 %17, i32 %18, %struct.gpio_get_config* %7, i32 8)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.gpio_get_config, %struct.gpio_get_config* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %22, %2
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.gpio_get_config, %struct.gpio_get_config* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  br label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ]
  store i32 %43, i32* %3, align 4
  br label %50

44:                                               ; preds = %22
  %45 = getelementptr inbounds %struct.gpio_get_config, %struct.gpio_get_config* %7, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %42
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.rpi_exp_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @rpi_firmware_property(i32, i32, %struct.gpio_get_config*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
