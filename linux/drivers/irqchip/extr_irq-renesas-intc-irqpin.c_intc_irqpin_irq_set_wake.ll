; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_irq_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_irq_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.intc_irqpin_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @intc_irqpin_irq_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intc_irqpin_irq_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intc_irqpin_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %8 = call %struct.intc_irqpin_priv* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.intc_irqpin_priv* %8, %struct.intc_irqpin_priv** %5, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = call i32 @irqd_to_hwirq(%struct.irq_data* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %5, align 8
  %12 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @irq_set_irq_wake(i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %5, align 8
  %25 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %24, i32 0, i32 0
  %26 = call i32 @atomic_inc(i32* %25)
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %5, align 8
  %29 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %28, i32 0, i32 0
  %30 = call i32 @atomic_dec(i32* %29)
  br label %31

31:                                               ; preds = %27, %23
  ret i32 0
}

declare dso_local %struct.intc_irqpin_priv* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @irq_set_irq_wake(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
