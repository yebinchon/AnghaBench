; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp873x.c_lp873x_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp873x.c_lp873x_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.lp873x_gpio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LP873X_REG_GPO_CTRL = common dso_local global i32 0, align 4
@BITS_PER_GPO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @lp873x_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp873x_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp873x_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.lp873x_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.lp873x_gpio* %10, %struct.lp873x_gpio** %6, align 8
  %11 = load %struct.lp873x_gpio*, %struct.lp873x_gpio** %6, align 8
  %12 = getelementptr inbounds %struct.lp873x_gpio, %struct.lp873x_gpio* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LP873X_REG_GPO_CTRL, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %8)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @BITS_PER_GPO, align 4
  %26 = mul i32 %24, %25
  %27 = call i32 @BIT(i32 %26)
  %28 = and i32 %23, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.lp873x_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
