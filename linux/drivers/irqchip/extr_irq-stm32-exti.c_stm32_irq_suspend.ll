; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-stm32-exti.c_stm32_irq_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-stm32-exti.c_stm32_irq_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip_generic = type { i32, %struct.stm32_exti_chip_data* }
%struct.stm32_exti_chip_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_chip_generic*)* @stm32_irq_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_irq_suspend(%struct.irq_chip_generic* %0) #0 {
  %2 = alloca %struct.irq_chip_generic*, align 8
  %3 = alloca %struct.stm32_exti_chip_data*, align 8
  store %struct.irq_chip_generic* %0, %struct.irq_chip_generic** %2, align 8
  %4 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %2, align 8
  %5 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %4, i32 0, i32 1
  %6 = load %struct.stm32_exti_chip_data*, %struct.stm32_exti_chip_data** %5, align 8
  store %struct.stm32_exti_chip_data* %6, %struct.stm32_exti_chip_data** %3, align 8
  %7 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %2, align 8
  %8 = call i32 @irq_gc_lock(%struct.irq_chip_generic* %7)
  %9 = load %struct.stm32_exti_chip_data*, %struct.stm32_exti_chip_data** %3, align 8
  %10 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %2, align 8
  %11 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @stm32_chip_suspend(%struct.stm32_exti_chip_data* %9, i32 %12)
  %14 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %2, align 8
  %15 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %14)
  ret void
}

declare dso_local i32 @irq_gc_lock(%struct.irq_chip_generic*) #1

declare dso_local i32 @stm32_chip_suspend(%struct.stm32_exti_chip_data*, i32) #1

declare dso_local i32 @irq_gc_unlock(%struct.irq_chip_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
