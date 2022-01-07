; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_irq_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_irq_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.brcmstb_gpio_bank = type { i32, %struct.brcmstb_gpio_priv* }
%struct.brcmstb_gpio_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @brcmstb_gpio_irq_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_gpio_irq_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.brcmstb_gpio_bank*, align 8
  %7 = alloca %struct.brcmstb_gpio_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.gpio_chip* %10, %struct.gpio_chip** %5, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %12 = call %struct.brcmstb_gpio_bank* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.brcmstb_gpio_bank* %12, %struct.brcmstb_gpio_bank** %6, align 8
  %13 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %6, align 8
  %14 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %13, i32 0, i32 1
  %15 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %14, align 8
  store %struct.brcmstb_gpio_priv* %15, %struct.brcmstb_gpio_priv** %7, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %17 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %6, align 8
  %20 = call i32 @brcmstb_gpio_hwirq_to_offset(i32 %18, %struct.brcmstb_gpio_bank* %19)
  %21 = call i32 @BIT(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %6, align 8
  %27 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %37

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %6, align 8
  %34 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %7, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @brcmstb_gpio_priv_set_wake(%struct.brcmstb_gpio_priv* %38, i32 %39)
  ret i32 %40
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.brcmstb_gpio_bank* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @brcmstb_gpio_hwirq_to_offset(i32, %struct.brcmstb_gpio_bank*) #1

declare dso_local i32 @brcmstb_gpio_priv_set_wake(%struct.brcmstb_gpio_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
