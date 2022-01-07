; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps68470.c_tps68470_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps68470.c_tps68470_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.tps68470_gpio_data = type { %struct.TYPE_2__, %struct.regmap* }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }

@TPS68470_REG_GPDO = common dso_local global i32 0, align 4
@TPS68470_N_REGULAR_GPIO = common dso_local global i32 0, align 4
@TPS68470_REG_SGPO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"reg 0x%x read failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @tps68470_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps68470_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps68470_gpio_data*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.tps68470_gpio_data* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.tps68470_gpio_data* %12, %struct.tps68470_gpio_data** %6, align 8
  %13 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %6, align 8
  %14 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %13, i32 0, i32 1
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %7, align 8
  %16 = load i32, i32* @TPS68470_REG_GPDO, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @TPS68470_N_REGULAR_GPIO, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @TPS68470_N_REGULAR_GPIO, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @TPS68470_REG_SGPO, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.regmap*, %struct.regmap** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @regmap_read(%struct.regmap* %26, i32 %27, i32* %9)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %6, align 8
  %33 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TPS68470_REG_SGPO, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  br label %48

39:                                               ; preds = %25
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %39, %31
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.tps68470_gpio_data* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
