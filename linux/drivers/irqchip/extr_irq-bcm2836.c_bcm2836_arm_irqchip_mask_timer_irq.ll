; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm2836.c_bcm2836_arm_irqchip_mask_timer_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm2836.c_bcm2836_arm_irqchip_mask_timer_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }

@LOCAL_TIMER_INT_CONTROL0 = common dso_local global i32 0, align 4
@LOCAL_IRQ_CNTPSIRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @bcm2836_arm_irqchip_mask_timer_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2836_arm_irqchip_mask_timer_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %3 = load i32, i32* @LOCAL_TIMER_INT_CONTROL0, align 4
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LOCAL_IRQ_CNTPSIRQ, align 8
  %8 = sub nsw i64 %6, %7
  %9 = call i32 (...) @smp_processor_id()
  %10 = call i32 @bcm2836_arm_irqchip_mask_per_cpu_irq(i32 %3, i64 %8, i32 %9)
  ret void
}

declare dso_local i32 @bcm2836_arm_irqchip_mask_per_cpu_irq(i32, i64, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
