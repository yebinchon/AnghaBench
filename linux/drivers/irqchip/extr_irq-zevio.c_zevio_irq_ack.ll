; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-zevio.c_zevio_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-zevio.c_zevio_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { i64 }
%struct.irq_chip_regs = type { i64 }
%struct.TYPE_2__ = type { %struct.irq_chip_regs }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @zevio_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zevio_irq_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_chip_generic*, align 8
  %4 = alloca %struct.irq_chip_regs*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.irq_chip_generic* %6, %struct.irq_chip_generic** %3, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.TYPE_2__* @irq_data_get_chip_type(%struct.irq_data* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.irq_chip_regs* %9, %struct.irq_chip_regs** %4, align 8
  %10 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %11 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.irq_chip_regs*, %struct.irq_chip_regs** %4, align 8
  %14 = getelementptr inbounds %struct.irq_chip_regs, %struct.irq_chip_regs* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = call i32 @readl(i64 %16)
  ret void
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.TYPE_2__* @irq_data_get_chip_type(%struct.irq_data*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
