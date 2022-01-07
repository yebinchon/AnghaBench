; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lpc32xx.c___set_gpio_level_p012.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lpc32xx.c___set_gpio_level_p012.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_gpio_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_gpio_chip*, i32, i32)* @__set_gpio_level_p012 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__set_gpio_level_p012(%struct.lpc32xx_gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lpc32xx_gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lpc32xx_gpio_chip* %0, %struct.lpc32xx_gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = load %struct.lpc32xx_gpio_chip*, %struct.lpc32xx_gpio_chip** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @GPIO012_PIN_TO_BIT(i32 %11)
  %13 = load %struct.lpc32xx_gpio_chip*, %struct.lpc32xx_gpio_chip** %4, align 8
  %14 = getelementptr inbounds %struct.lpc32xx_gpio_chip, %struct.lpc32xx_gpio_chip* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gpreg_write(%struct.lpc32xx_gpio_chip* %10, i32 %12, i32 %17)
  br label %29

19:                                               ; preds = %3
  %20 = load %struct.lpc32xx_gpio_chip*, %struct.lpc32xx_gpio_chip** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @GPIO012_PIN_TO_BIT(i32 %21)
  %23 = load %struct.lpc32xx_gpio_chip*, %struct.lpc32xx_gpio_chip** %4, align 8
  %24 = getelementptr inbounds %struct.lpc32xx_gpio_chip, %struct.lpc32xx_gpio_chip* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gpreg_write(%struct.lpc32xx_gpio_chip* %20, i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %19, %9
  ret void
}

declare dso_local i32 @gpreg_write(%struct.lpc32xx_gpio_chip*, i32, i32) #1

declare dso_local i32 @GPIO012_PIN_TO_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
