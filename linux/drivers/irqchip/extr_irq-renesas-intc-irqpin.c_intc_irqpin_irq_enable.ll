; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.intc_irqpin_priv = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@INTC_IRQPIN_REG_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @intc_irqpin_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intc_irqpin_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.intc_irqpin_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.intc_irqpin_priv* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.intc_irqpin_priv* %6, %struct.intc_irqpin_priv** %3, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call i32 @irqd_to_hwirq(%struct.irq_data* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %3, align 8
  %10 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 @intc_irqpin_dbg(i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %3, align 8
  %17 = load i32, i32* @INTC_IRQPIN_REG_CLEAR, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @intc_irqpin_irq_write_hwirq(%struct.intc_irqpin_priv* %16, i32 %17, i32 %18)
  ret void
}

declare dso_local %struct.intc_irqpin_priv* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @intc_irqpin_dbg(i32*, i8*) #1

declare dso_local i32 @intc_irqpin_irq_write_hwirq(%struct.intc_irqpin_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
