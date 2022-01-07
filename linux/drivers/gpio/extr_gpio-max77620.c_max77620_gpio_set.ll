; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max77620.c_max77620_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max77620.c_max77620_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.max77620_gpio = type { i32, i32 }

@MAX77620_CNFG_GPIO_OUTPUT_VAL_HIGH = common dso_local global i32 0, align 4
@MAX77620_CNFG_GPIO_OUTPUT_VAL_LOW = common dso_local global i32 0, align 4
@MAX77620_CNFG_GPIO_OUTPUT_VAL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"CNFG_GPIO_OUT update failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @max77620_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max77620_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.max77620_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.max77620_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.max77620_gpio* %11, %struct.max77620_gpio** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @MAX77620_CNFG_GPIO_OUTPUT_VAL_HIGH, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @MAX77620_CNFG_GPIO_OUTPUT_VAL_LOW, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %8, align 4
  %20 = load %struct.max77620_gpio*, %struct.max77620_gpio** %7, align 8
  %21 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @GPIO_REG_ADDR(i32 %23)
  %25 = load i32, i32* @MAX77620_CNFG_GPIO_OUTPUT_VAL_MASK, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @regmap_update_bits(i32 %22, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load %struct.max77620_gpio*, %struct.max77620_gpio** %7, align 8
  %32 = getelementptr inbounds %struct.max77620_gpio, %struct.max77620_gpio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %30, %18
  ret void
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
