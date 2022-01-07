; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-tango.c_tangox_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-tango.c_tangox_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_domain = type { %struct.tangox_irq_chip* }
%struct.tangox_irq_chip = type { i64 }
%struct.irq_chip = type { i32 }

@IRQ_STATUS = common dso_local global i64 0, align 8
@IRQ_CTL_HI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @tangox_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tangox_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca %struct.tangox_irq_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = call %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc* %8)
  store %struct.irq_domain* %9, %struct.irq_domain** %3, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %10)
  store %struct.irq_chip* %11, %struct.irq_chip** %4, align 8
  %12 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %13 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %12, i32 0, i32 0
  %14 = load %struct.tangox_irq_chip*, %struct.tangox_irq_chip** %13, align 8
  store %struct.tangox_irq_chip* %14, %struct.tangox_irq_chip** %5, align 8
  %15 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %16 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %17 = call i32 @chained_irq_enter(%struct.irq_chip* %15, %struct.irq_desc* %16)
  %18 = load %struct.tangox_irq_chip*, %struct.tangox_irq_chip** %5, align 8
  %19 = load %struct.tangox_irq_chip*, %struct.tangox_irq_chip** %5, align 8
  %20 = getelementptr inbounds %struct.tangox_irq_chip, %struct.tangox_irq_chip* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IRQ_STATUS, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @intc_readl(%struct.tangox_irq_chip* %18, i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.tangox_irq_chip*, %struct.tangox_irq_chip** %5, align 8
  %26 = load %struct.tangox_irq_chip*, %struct.tangox_irq_chip** %5, align 8
  %27 = getelementptr inbounds %struct.tangox_irq_chip, %struct.tangox_irq_chip* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IRQ_CTL_HI, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* @IRQ_STATUS, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @intc_readl(%struct.tangox_irq_chip* %25, i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @tangox_dispatch_irqs(%struct.irq_domain* %34, i32 %35, i32 0)
  %37 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @tangox_dispatch_irqs(%struct.irq_domain* %37, i32 %38, i32 32)
  %40 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %41 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %42 = call i32 @chained_irq_exit(%struct.irq_chip* %40, %struct.irq_desc* %41)
  ret void
}

declare dso_local %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @intc_readl(%struct.tangox_irq_chip*, i64) #1

declare dso_local i32 @tangox_dispatch_irqs(%struct.irq_domain*, i32, i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
