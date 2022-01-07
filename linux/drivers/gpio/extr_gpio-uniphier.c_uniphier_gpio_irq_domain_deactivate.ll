; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_irq_domain_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_irq_domain_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.uniphier_gpio_priv* }
%struct.uniphier_gpio_priv = type { %struct.gpio_chip }
%struct.gpio_chip = type { i32 }
%struct.irq_data = type { i64 }

@UNIPHIER_GPIO_IRQ_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, %struct.irq_data*)* @uniphier_gpio_irq_domain_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_gpio_irq_domain_deactivate(%struct.irq_domain* %0, %struct.irq_data* %1) #0 {
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.uniphier_gpio_priv*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %3, align 8
  store %struct.irq_data* %1, %struct.irq_data** %4, align 8
  %7 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %8 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %7, i32 0, i32 0
  %9 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %8, align 8
  store %struct.uniphier_gpio_priv* %9, %struct.uniphier_gpio_priv** %5, align 8
  %10 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %5, align 8
  %11 = getelementptr inbounds %struct.uniphier_gpio_priv, %struct.uniphier_gpio_priv* %10, i32 0, i32 0
  store %struct.gpio_chip* %11, %struct.gpio_chip** %6, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UNIPHIER_GPIO_IRQ_OFFSET, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @gpiochip_unlock_as_irq(%struct.gpio_chip* %12, i64 %17)
  ret void
}

declare dso_local i32 @gpiochip_unlock_as_irq(%struct.gpio_chip*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
