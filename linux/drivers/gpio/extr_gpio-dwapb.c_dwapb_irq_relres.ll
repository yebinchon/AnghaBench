; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dwapb.c_dwapb_irq_relres.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dwapb.c_dwapb_irq_relres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { %struct.dwapb_gpio* }
%struct.dwapb_gpio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gpio_chip }
%struct.gpio_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @dwapb_irq_relres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwapb_irq_relres(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_chip_generic*, align 8
  %4 = alloca %struct.dwapb_gpio*, align 8
  %5 = alloca %struct.gpio_chip*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.irq_chip_generic* %7, %struct.irq_chip_generic** %3, align 8
  %8 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %9 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %8, i32 0, i32 0
  %10 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %9, align 8
  store %struct.dwapb_gpio* %10, %struct.dwapb_gpio** %4, align 8
  %11 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %12 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.gpio_chip* %15, %struct.gpio_chip** %5, align 8
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %17 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %18 = call i32 @irqd_to_hwirq(%struct.irq_data* %17)
  %19 = call i32 @gpiochip_unlock_as_irq(%struct.gpio_chip* %16, i32 %18)
  ret void
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @gpiochip_unlock_as_irq(%struct.gpio_chip*, i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
