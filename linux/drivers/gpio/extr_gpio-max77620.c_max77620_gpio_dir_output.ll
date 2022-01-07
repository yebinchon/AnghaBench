; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max77620.c_max77620_gpio_dir_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max77620.c_max77620_gpio_dir_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.max77620_gpio = type { i32, i32 }

@MAX77620_CNFG_GPIO_OUTPUT_VAL_HIGH = common dso_local global i32 0, align 4
@MAX77620_CNFG_GPIO_OUTPUT_VAL_LOW = common dso_local global i32 0, align 4
@MAX77620_CNFG_GPIO_OUTPUT_VAL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"CNFG_GPIOx val update failed: %d\0A\00", align 1
@MAX77620_CNFG_GPIO_DIR_MASK = common dso_local global i32 0, align 4
@MAX77620_CNFG_GPIO_DIR_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"CNFG_GPIOx dir update failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @max77620_gpio_dir_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_gpio_dir_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.max77620_gpio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %12 = call %struct.max77620_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.max77620_gpio* %12, %struct.max77620_gpio** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @MAX77620_CNFG_GPIO_OUTPUT_VAL_HIGH, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @MAX77620_CNFG_GPIO_OUTPUT_VAL_LOW, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %9, align 4
  %21 = load %struct.max77620_gpio*, %struct.max77620_gpio** %8, align 8
  %22 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @GPIO_REG_ADDR(i32 %24)
  %26 = load i32, i32* @MAX77620_CNFG_GPIO_OUTPUT_VAL_MASK, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @regmap_update_bits(i32 %23, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load %struct.max77620_gpio*, %struct.max77620_gpio** %8, align 8
  %33 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %57

38:                                               ; preds = %19
  %39 = load %struct.max77620_gpio*, %struct.max77620_gpio** %8, align 8
  %40 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @GPIO_REG_ADDR(i32 %42)
  %44 = load i32, i32* @MAX77620_CNFG_GPIO_DIR_MASK, align 4
  %45 = load i32, i32* @MAX77620_CNFG_GPIO_DIR_OUTPUT, align 4
  %46 = call i32 @regmap_update_bits(i32 %41, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load %struct.max77620_gpio*, %struct.max77620_gpio** %8, align 8
  %51 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %38
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %31
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.max77620_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @GPIO_REG_ADDR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
