; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-palmas.c_palmas_gpio_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-palmas.c_palmas_gpio_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.palmas_gpio = type { %struct.palmas* }
%struct.palmas = type { i32 }

@PALMAS_GPIO_DATA_DIR2 = common dso_local global i32 0, align 4
@PALMAS_GPIO_DATA_DIR = common dso_local global i32 0, align 4
@PALMAS_GPIO_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Reg 0x%02x update failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @palmas_gpio_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_gpio_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.palmas_gpio*, align 8
  %6 = alloca %struct.palmas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %11 = call %struct.palmas_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.palmas_gpio* %11, %struct.palmas_gpio** %5, align 8
  %12 = load %struct.palmas_gpio*, %struct.palmas_gpio** %5, align 8
  %13 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %12, i32 0, i32 0
  %14 = load %struct.palmas*, %struct.palmas** %13, align 8
  store %struct.palmas* %14, %struct.palmas** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = udiv i32 %15, 8
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %4, align 4
  %18 = urem i32 %17, 8
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @PALMAS_GPIO_DATA_DIR2, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @PALMAS_GPIO_DATA_DIR, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %8, align 4
  %27 = load %struct.palmas*, %struct.palmas** %6, align 8
  %28 = load i32, i32* @PALMAS_GPIO_BASE, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = call i32 @palmas_update_bits(%struct.palmas* %27, i32 %28, i32 %29, i32 %31, i32 0)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %37 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %25
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local %struct.palmas_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @palmas_update_bits(%struct.palmas*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
