; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xlp.c_xlp_gpio_irq_mask_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xlp.c_xlp_gpio_irq_mask_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.xlp_gpio_priv = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @xlp_gpio_irq_mask_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_gpio_irq_mask_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.xlp_gpio_priv*, align 8
  %5 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.gpio_chip* %7, %struct.gpio_chip** %3, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.xlp_gpio_priv* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.xlp_gpio_priv* %9, %struct.xlp_gpio_priv** %4, align 8
  %10 = load %struct.xlp_gpio_priv*, %struct.xlp_gpio_priv** %4, align 8
  %11 = getelementptr inbounds %struct.xlp_gpio_priv, %struct.xlp_gpio_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.xlp_gpio_priv*, %struct.xlp_gpio_priv** %4, align 8
  %15 = getelementptr inbounds %struct.xlp_gpio_priv, %struct.xlp_gpio_priv* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @xlp_gpio_set_reg(i32 %16, i32 %19, i32 0)
  %21 = load %struct.xlp_gpio_priv*, %struct.xlp_gpio_priv** %4, align 8
  %22 = getelementptr inbounds %struct.xlp_gpio_priv, %struct.xlp_gpio_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %25 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @xlp_gpio_set_reg(i32 %23, i32 %26, i32 1)
  %28 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %29 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xlp_gpio_priv*, %struct.xlp_gpio_priv** %4, align 8
  %32 = getelementptr inbounds %struct.xlp_gpio_priv, %struct.xlp_gpio_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__clear_bit(i32 %30, i32 %33)
  %35 = load %struct.xlp_gpio_priv*, %struct.xlp_gpio_priv** %4, align 8
  %36 = getelementptr inbounds %struct.xlp_gpio_priv, %struct.xlp_gpio_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.xlp_gpio_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xlp_gpio_set_reg(i32, i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
