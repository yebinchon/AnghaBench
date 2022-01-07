; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imgpdc.c_perip_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imgpdc.c_perip_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.pdc_intc_priv = type { i32, i32 }

@PDC_IRQ_ROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @perip_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perip_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.pdc_intc_priv*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call %struct.pdc_intc_priv* @irqd_to_priv(%struct.irq_data* %4)
  store %struct.pdc_intc_priv* %5, %struct.pdc_intc_priv** %3, align 8
  %6 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %3, align 8
  %7 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %6, i32 0, i32 0
  %8 = call i32 @raw_spin_lock(i32* %7)
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %3, align 8
  %13 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %3, align 8
  %17 = load i32, i32* @PDC_IRQ_ROUTE, align 4
  %18 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %3, align 8
  %19 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pdc_write(%struct.pdc_intc_priv* %16, i32 %17, i32 %20)
  %22 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %3, align 8
  %23 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %22, i32 0, i32 0
  %24 = call i32 @raw_spin_unlock(i32* %23)
  ret void
}

declare dso_local %struct.pdc_intc_priv* @irqd_to_priv(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @pdc_write(%struct.pdc_intc_priv*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
