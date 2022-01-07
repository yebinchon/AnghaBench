; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps68470.c_tps68470_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps68470.c_tps68470_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.tps68470_gpio_data = type { %struct.regmap* }
%struct.regmap = type { i32 }

@TPS68470_REG_GPDO = common dso_local global i32 0, align 4
@TPS68470_N_REGULAR_GPIO = common dso_local global i32 0, align 4
@TPS68470_REG_SGPO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @tps68470_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tps68470_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tps68470_gpio_data*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.tps68470_gpio_data* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.tps68470_gpio_data* %11, %struct.tps68470_gpio_data** %7, align 8
  %12 = load %struct.tps68470_gpio_data*, %struct.tps68470_gpio_data** %7, align 8
  %13 = getelementptr inbounds %struct.tps68470_gpio_data, %struct.tps68470_gpio_data* %12, i32 0, i32 0
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %8, align 8
  %15 = load i32, i32* @TPS68470_REG_GPDO, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TPS68470_N_REGULAR_GPIO, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @TPS68470_REG_SGPO, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @TPS68470_N_REGULAR_GPIO, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.regmap*, %struct.regmap** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @BIT(i32 %32)
  br label %35

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ 0, %34 ]
  %37 = call i32 @regmap_update_bits(%struct.regmap* %25, i32 %26, i32 %28, i32 %36)
  ret void
}

declare dso_local %struct.tps68470_gpio_data* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
