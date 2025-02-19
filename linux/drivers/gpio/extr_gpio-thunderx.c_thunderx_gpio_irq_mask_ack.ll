; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-thunderx.c_thunderx_gpio_irq_mask_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-thunderx.c_thunderx_gpio_irq_mask_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.thunderx_gpio = type { i64 }

@GPIO_INTR_ENA_W1C = common dso_local global i32 0, align 4
@GPIO_INTR_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @thunderx_gpio_irq_mask_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thunderx_gpio_irq_mask_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.thunderx_gpio*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.gpio_chip* %6, %struct.gpio_chip** %3, align 8
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.thunderx_gpio* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.thunderx_gpio* %8, %struct.thunderx_gpio** %4, align 8
  %9 = load i32, i32* @GPIO_INTR_ENA_W1C, align 4
  %10 = load i32, i32* @GPIO_INTR_INTR, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.thunderx_gpio*, %struct.thunderx_gpio** %4, align 8
  %13 = getelementptr inbounds %struct.thunderx_gpio, %struct.thunderx_gpio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %16 = call i32 @irqd_to_hwirq(%struct.irq_data* %15)
  %17 = call i64 @intr_reg(i32 %16)
  %18 = add nsw i64 %14, %17
  %19 = call i32 @writeq(i32 %11, i64 %18)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.thunderx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @intr_reg(i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
