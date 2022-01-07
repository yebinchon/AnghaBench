; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-da9052.c_da9052_gpio_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-da9052.c_da9052_gpio_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.da9052_gpio = type { %struct.da9052* }
%struct.da9052 = type { i32 }

@DA9052_IRQ_GPI0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i64)* @da9052_gpio_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_gpio_to_irq(%struct.gpio_chip* %0, i64 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.da9052_gpio*, align 8
  %6 = alloca %struct.da9052*, align 8
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.da9052_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.da9052_gpio* %9, %struct.da9052_gpio** %5, align 8
  %10 = load %struct.da9052_gpio*, %struct.da9052_gpio** %5, align 8
  %11 = getelementptr inbounds %struct.da9052_gpio, %struct.da9052_gpio* %10, i32 0, i32 0
  %12 = load %struct.da9052*, %struct.da9052** %11, align 8
  store %struct.da9052* %12, %struct.da9052** %6, align 8
  %13 = load %struct.da9052*, %struct.da9052** %6, align 8
  %14 = getelementptr inbounds %struct.da9052, %struct.da9052* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* @DA9052_IRQ_GPI0, align 8
  %17 = load i64, i64* %4, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @regmap_irq_get_virq(i32 %15, i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  ret i32 %20
}

declare dso_local %struct.da9052_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
