; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_irq_domain_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_irq_domain_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.uniphier_gpio_priv* }
%struct.uniphier_gpio_priv = type { %struct.gpio_chip }
%struct.gpio_chip = type { i32 }
%struct.irq_data = type { i64 }

@UNIPHIER_GPIO_IRQ_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_data*, i32)* @uniphier_gpio_irq_domain_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_gpio_irq_domain_activate(%struct.irq_domain* %0, %struct.irq_data* %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uniphier_gpio_priv*, align 8
  %8 = alloca %struct.gpio_chip*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store %struct.irq_data* %1, %struct.irq_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %10 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %9, i32 0, i32 0
  %11 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %10, align 8
  store %struct.uniphier_gpio_priv* %11, %struct.uniphier_gpio_priv** %7, align 8
  %12 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %7, align 8
  %13 = getelementptr inbounds %struct.uniphier_gpio_priv, %struct.uniphier_gpio_priv* %12, i32 0, i32 0
  store %struct.gpio_chip* %13, %struct.gpio_chip** %8, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UNIPHIER_GPIO_IRQ_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @gpiochip_lock_as_irq(%struct.gpio_chip* %14, i64 %19)
  ret i32 %20
}

declare dso_local i32 @gpiochip_lock_as_irq(%struct.gpio_chip*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
