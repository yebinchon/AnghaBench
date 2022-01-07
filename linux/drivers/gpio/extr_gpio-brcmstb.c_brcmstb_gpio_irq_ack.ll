; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 (i64, i32)* }
%struct.brcmstb_gpio_bank = type { i32, %struct.brcmstb_gpio_priv* }
%struct.brcmstb_gpio_priv = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @brcmstb_gpio_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmstb_gpio_irq_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.brcmstb_gpio_bank*, align 8
  %5 = alloca %struct.brcmstb_gpio_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.gpio_chip* %8, %struct.gpio_chip** %3, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.brcmstb_gpio_bank* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.brcmstb_gpio_bank* %10, %struct.brcmstb_gpio_bank** %4, align 8
  %11 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %4, align 8
  %12 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %11, i32 0, i32 1
  %13 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %12, align 8
  store %struct.brcmstb_gpio_priv* %13, %struct.brcmstb_gpio_priv** %5, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %4, align 8
  %18 = call i32 @brcmstb_gpio_hwirq_to_offset(i32 %16, %struct.brcmstb_gpio_bank* %17)
  %19 = call i32 @BIT(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 0
  %22 = load i32 (i64, i32)*, i32 (i64, i32)** %21, align 8
  %23 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %24 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %4, align 8
  %27 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @GIO_STAT(i32 %28)
  %30 = add nsw i64 %25, %29
  %31 = load i32, i32* %6, align 4
  %32 = call i32 %22(i64 %30, i32 %31)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.brcmstb_gpio_bank* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @brcmstb_gpio_hwirq_to_offset(i32, %struct.brcmstb_gpio_bank*) #1

declare dso_local i64 @GIO_STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
