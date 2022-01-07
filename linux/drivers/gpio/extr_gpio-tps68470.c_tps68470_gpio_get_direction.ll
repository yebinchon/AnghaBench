; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps68470.c_tps68470_gpio_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps68470.c_tps68470_gpio_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.tps68470_gpio_data = type { %struct.TYPE_2__, %struct.regmap* }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }

@TPS68470_N_REGULAR_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"reg 0x%x read failed\0A\00", align 1
@TPS68470_GPIO_MODE_MASK = common dso_local global i32 0, align 4
@TPS68470_GPIO_MODE_OUT_CMOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @tps68470_gpio_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps68470_gpio_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps68470_gpio_data*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.tps68470_gpio_data* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.tps68470_gpio_data* %11, %struct.tps68470_gpio_data** %6, align 8
  %12 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %6, align 8
  %13 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %12, i32 0, i32 1
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @TPS68470_N_REGULAR_GPIO, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.regmap*, %struct.regmap** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @TPS68470_GPIO_CTL_REG_A(i32 %21)
  %23 = call i32 @regmap_read(%struct.regmap* %20, i32 %22, i32* %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %6, align 8
  %28 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @TPS68470_GPIO_CTL_REG_A(i32 %31)
  %33 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %19
  %36 = load i32, i32* @TPS68470_GPIO_MODE_MASK, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @TPS68470_GPIO_MODE_OUT_CMOS, align 4
  %41 = icmp sge i32 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 0, i32 1
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %26, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.tps68470_gpio_data* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @TPS68470_GPIO_CTL_REG_A(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
