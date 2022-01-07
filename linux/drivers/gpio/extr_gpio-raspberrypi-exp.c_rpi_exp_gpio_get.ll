; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-raspberrypi-exp.c_rpi_exp_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-raspberrypi-exp.c_rpi_exp_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.rpi_exp_gpio = type { i32 }
%struct.gpio_get_set_state = type { i32, i64 }

@RPI_EXP_GPIO_BASE = common dso_local global i32 0, align 4
@RPI_FIRMWARE_GET_GPIO_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to get GPIO %u state (%d %x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @rpi_exp_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpi_exp_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpi_exp_gpio*, align 8
  %7 = alloca %struct.gpio_get_set_state, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.rpi_exp_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.rpi_exp_gpio* %10, %struct.rpi_exp_gpio** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @RPI_EXP_GPIO_BASE, align 4
  %13 = add i32 %11, %12
  %14 = getelementptr inbounds %struct.gpio_get_set_state, %struct.gpio_get_set_state* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.gpio_get_set_state, %struct.gpio_get_set_state* %7, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %6, align 8
  %17 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RPI_FIRMWARE_GET_GPIO_STATE, align 4
  %20 = call i32 @rpi_firmware_property(i32 %18, i32 %19, %struct.gpio_get_set_state* %7, i32 16)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.gpio_get_set_state, %struct.gpio_get_set_state* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %23, %2
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %29 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds %struct.gpio_get_set_state, %struct.gpio_get_set_state* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  br label %43

40:                                               ; preds = %27
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  br label %43

43:                                               ; preds = %40, %38
  %44 = phi i32 [ %39, %38 ], [ %42, %40 ]
  store i32 %44, i32* %3, align 4
  br label %52

45:                                               ; preds = %23
  %46 = getelementptr inbounds %struct.gpio_get_set_state, %struct.gpio_get_set_state* %7, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %43
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.rpi_exp_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @rpi_firmware_property(i32, i32, %struct.gpio_get_set_state*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
