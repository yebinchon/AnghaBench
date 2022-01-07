; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intc_irqpin_priv = type { %struct.intc_irqpin_iomem* }
%struct.intc_irqpin_iomem = type { i64 (i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intc_irqpin_priv*, i32)* @intc_irqpin_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intc_irqpin_read(%struct.intc_irqpin_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.intc_irqpin_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intc_irqpin_iomem*, align 8
  store %struct.intc_irqpin_priv* %0, %struct.intc_irqpin_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %3, align 8
  %7 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %6, i32 0, i32 0
  %8 = load %struct.intc_irqpin_iomem*, %struct.intc_irqpin_iomem** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.intc_irqpin_iomem, %struct.intc_irqpin_iomem* %8, i64 %10
  store %struct.intc_irqpin_iomem* %11, %struct.intc_irqpin_iomem** %5, align 8
  %12 = load %struct.intc_irqpin_iomem*, %struct.intc_irqpin_iomem** %5, align 8
  %13 = getelementptr inbounds %struct.intc_irqpin_iomem, %struct.intc_irqpin_iomem* %12, i32 0, i32 0
  %14 = load i64 (i32)*, i64 (i32)** %13, align 8
  %15 = load %struct.intc_irqpin_iomem*, %struct.intc_irqpin_iomem** %5, align 8
  %16 = getelementptr inbounds %struct.intc_irqpin_iomem, %struct.intc_irqpin_iomem* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 %14(i32 %17)
  ret i64 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
