; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mpc8xxx.c_mpc8xxx_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mpc8xxx.c_mpc8xxx_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.mpc8xxx_gpio_chip = type { i32, i64, %struct.gpio_chip }
%struct.gpio_chip = type { i32 (i64)*, i32 (i64, i32)* }

@GPIO_IMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @mpc8xxx_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc8xxx_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.mpc8xxx_gpio_chip*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.mpc8xxx_gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.mpc8xxx_gpio_chip* %7, %struct.mpc8xxx_gpio_chip** %3, align 8
  %8 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %3, align 8
  %9 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %8, i32 0, i32 2
  store %struct.gpio_chip* %9, %struct.gpio_chip** %4, align 8
  %10 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %3, align 8
  %11 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @raw_spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %15 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 1
  %16 = load i32 (i64, i32)*, i32 (i64, i32)** %15, align 8
  %17 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %3, align 8
  %18 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @GPIO_IMR, align 8
  %21 = add nsw i64 %19, %20
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %23 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 0
  %24 = load i32 (i64)*, i32 (i64)** %23, align 8
  %25 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %3, align 8
  %26 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GPIO_IMR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 %24(i64 %29)
  %31 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %32 = call i32 @irqd_to_hwirq(%struct.irq_data* %31)
  %33 = call i32 @mpc_pin2mask(i32 %32)
  %34 = or i32 %30, %33
  %35 = call i32 %16(i64 %21, i32 %34)
  %36 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %3, align 8
  %37 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %36, i32 0, i32 0
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @raw_spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local %struct.mpc8xxx_gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mpc_pin2mask(i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
