; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-raspberrypi-exp.c_rpi_exp_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-raspberrypi-exp.c_rpi_exp_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.rpi_exp_gpio = type { i32 }
%struct.gpio_get_set_state = type { i32, i32 }

@RPI_EXP_GPIO_BASE = common dso_local global i32 0, align 4
@RPI_FIRMWARE_SET_GPIO_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to set GPIO %u state (%d %x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @rpi_exp_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpi_exp_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpi_exp_gpio*, align 8
  %8 = alloca %struct.gpio_get_set_state, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.rpi_exp_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.rpi_exp_gpio* %11, %struct.rpi_exp_gpio** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @RPI_EXP_GPIO_BASE, align 4
  %14 = add i32 %12, %13
  %15 = getelementptr inbounds %struct.gpio_get_set_state, %struct.gpio_get_set_state* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds %struct.gpio_get_set_state, %struct.gpio_get_set_state* %8, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.rpi_exp_gpio*, %struct.rpi_exp_gpio** %7, align 8
  %19 = getelementptr inbounds %struct.rpi_exp_gpio, %struct.rpi_exp_gpio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RPI_FIRMWARE_SET_GPIO_STATE, align 4
  %22 = call i32 @rpi_firmware_property(i32 %20, i32 %21, %struct.gpio_get_set_state* %8, i32 8)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.gpio_get_set_state, %struct.gpio_get_set_state* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25, %3
  %30 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %31 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds %struct.gpio_get_set_state, %struct.gpio_get_set_state* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %29, %25
  ret void
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
