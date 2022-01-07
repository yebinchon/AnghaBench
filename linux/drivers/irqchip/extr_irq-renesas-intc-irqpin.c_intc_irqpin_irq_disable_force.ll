; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_irq_disable_force.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_irq_disable_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.intc_irqpin_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @intc_irqpin_irq_disable_force to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intc_irqpin_irq_disable_force(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.intc_irqpin_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.intc_irqpin_priv* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.intc_irqpin_priv* %6, %struct.intc_irqpin_priv** %3, align 8
  %7 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %3, align 8
  %8 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = call i64 @irqd_to_hwirq(%struct.irq_data* %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.TYPE_4__* @irq_get_chip(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @irq_get_irq_data(i32 %19)
  %21 = call i32 %18(i32 %20)
  %22 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %23 = call i32 @intc_irqpin_irq_disable(%struct.irq_data* %22)
  ret void
}

declare dso_local %struct.intc_irqpin_priv* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local %struct.TYPE_4__* @irq_get_chip(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @intc_irqpin_irq_disable(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
