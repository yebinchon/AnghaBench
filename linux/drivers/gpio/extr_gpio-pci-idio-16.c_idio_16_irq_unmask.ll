; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pci-idio-16.c_idio_16_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pci-idio-16.c_idio_16_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.idio_16_gpio = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @idio_16_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idio_16_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.idio_16_gpio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.gpio_chip* %9, %struct.gpio_chip** %3, align 8
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %11 = call %struct.idio_16_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.idio_16_gpio* %11, %struct.idio_16_gpio** %4, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %13 = call i32 @irqd_to_hwirq(%struct.irq_data* %12)
  %14 = call i64 @BIT(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %4, align 8
  %16 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %4, align 8
  %20 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = or i64 %21, %18
  store i64 %22, i64* %20, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %1
  %26 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %4, align 8
  %27 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %26, i32 0, i32 1
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @raw_spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %4, align 8
  %31 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @ioread8(i32* %33)
  %35 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %4, align 8
  %36 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %35, i32 0, i32 1
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @raw_spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %39

39:                                               ; preds = %25, %1
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.idio_16_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread8(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
