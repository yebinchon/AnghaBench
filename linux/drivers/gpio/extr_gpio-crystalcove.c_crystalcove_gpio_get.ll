; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_crystalcove_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_crystalcove_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.crystalcove_gpio = type { i32 }

@CTRL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @crystalcove_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crystalcove_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crystalcove_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.crystalcove_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.crystalcove_gpio* %11, %struct.crystalcove_gpio** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @CTRL_IN, align 4
  %14 = call i32 @to_reg(i32 %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %6, align 8
  %20 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %26, %17
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.crystalcove_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @to_reg(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
