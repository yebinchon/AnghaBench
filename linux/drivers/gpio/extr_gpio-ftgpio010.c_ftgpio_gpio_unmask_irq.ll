; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ftgpio010.c_ftgpio_gpio_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ftgpio010.c_ftgpio_gpio_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.ftgpio_gpio = type { i64 }

@GPIO_INT_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ftgpio_gpio_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftgpio_gpio_unmask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.ftgpio_gpio*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.gpio_chip* %7, %struct.gpio_chip** %3, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.ftgpio_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.ftgpio_gpio* %9, %struct.ftgpio_gpio** %4, align 8
  %10 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %4, align 8
  %11 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GPIO_INT_EN, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %17 = call i32 @irqd_to_hwirq(%struct.irq_data* %16)
  %18 = call i32 @BIT(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ftgpio_gpio*, %struct.ftgpio_gpio** %4, align 8
  %23 = getelementptr inbounds %struct.ftgpio_gpio, %struct.ftgpio_gpio* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GPIO_INT_EN, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.ftgpio_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
