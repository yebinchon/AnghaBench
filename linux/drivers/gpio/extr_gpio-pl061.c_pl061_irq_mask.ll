; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pl061.c_pl061_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pl061.c_pl061_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.pl061 = type { i32, i64 }

@PL061_GPIO_NR = common dso_local global i32 0, align 4
@GPIOIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @pl061_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl061_irq_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.pl061*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.gpio_chip* %8, %struct.gpio_chip** %3, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.pl061* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.pl061* %10, %struct.pl061** %4, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = call i32 @irqd_to_hwirq(%struct.irq_data* %11)
  %13 = load i32, i32* @PL061_GPIO_NR, align 4
  %14 = srem i32 %12, %13
  %15 = call i32 @BIT(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.pl061*, %struct.pl061** %4, align 8
  %17 = getelementptr inbounds %struct.pl061, %struct.pl061* %16, i32 0, i32 0
  %18 = call i32 @raw_spin_lock(i32* %17)
  %19 = load %struct.pl061*, %struct.pl061** %4, align 8
  %20 = getelementptr inbounds %struct.pl061, %struct.pl061* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GPIOIE, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readb(i64 %23)
  %25 = load i32, i32* %5, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.pl061*, %struct.pl061** %4, align 8
  %30 = getelementptr inbounds %struct.pl061, %struct.pl061* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GPIOIE, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writeb(i32 %28, i64 %33)
  %35 = load %struct.pl061*, %struct.pl061** %4, align 8
  %36 = getelementptr inbounds %struct.pl061, %struct.pl061* %35, i32 0, i32 0
  %37 = call i32 @raw_spin_unlock(i32* %36)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.pl061* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
