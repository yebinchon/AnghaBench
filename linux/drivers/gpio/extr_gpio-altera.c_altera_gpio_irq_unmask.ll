; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-altera.c_altera_gpio_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-altera.c_altera_gpio_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.altera_gpio_chip = type { i32, %struct.of_mm_gpio_chip }
%struct.of_mm_gpio_chip = type { i64 }

@ALTERA_GPIO_IRQ_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @altera_gpio_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_gpio_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.altera_gpio_chip*, align 8
  %4 = alloca %struct.of_mm_gpio_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call i32 @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  %9 = call %struct.altera_gpio_chip* @gpiochip_get_data(i32 %8)
  store %struct.altera_gpio_chip* %9, %struct.altera_gpio_chip** %3, align 8
  %10 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %3, align 8
  %11 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %10, i32 0, i32 1
  store %struct.of_mm_gpio_chip* %11, %struct.of_mm_gpio_chip** %4, align 8
  %12 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %3, align 8
  %13 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @raw_spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %4, align 8
  %17 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ALTERA_GPIO_IRQ_MASK, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %23 = call i32 @irqd_to_hwirq(%struct.irq_data* %22)
  %24 = call i32 @BIT(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %4, align 8
  %29 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ALTERA_GPIO_IRQ_MASK, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load %struct.altera_gpio_chip*, %struct.altera_gpio_chip** %3, align 8
  %35 = getelementptr inbounds %struct.altera_gpio_chip, %struct.altera_gpio_chip* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @raw_spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local %struct.altera_gpio_chip* @gpiochip_get_data(i32) #1

declare dso_local i32 @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
