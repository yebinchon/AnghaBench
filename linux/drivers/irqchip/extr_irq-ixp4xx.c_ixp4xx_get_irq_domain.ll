; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ixp4xx.c_ixp4xx_get_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ixp4xx.c_ixp4xx_get_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixp4xx_irq = type { %struct.irq_domain* }
%struct.irq_domain = type { i32 }

@ixirq = common dso_local global %struct.ixp4xx_irq zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.irq_domain* @ixp4xx_get_irq_domain() #0 {
  %1 = alloca %struct.ixp4xx_irq*, align 8
  store %struct.ixp4xx_irq* @ixirq, %struct.ixp4xx_irq** %1, align 8
  %2 = load %struct.ixp4xx_irq*, %struct.ixp4xx_irq** %1, align 8
  %3 = getelementptr inbounds %struct.ixp4xx_irq, %struct.ixp4xx_irq* %2, i32 0, i32 0
  %4 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  ret %struct.irq_domain* %4
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
