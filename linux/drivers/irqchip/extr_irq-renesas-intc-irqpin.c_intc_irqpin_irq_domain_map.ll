; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_irq_domain_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_irq_domain_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.intc_irqpin_priv* }
%struct.intc_irqpin_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"map\00", align 1
@intc_irqpin_irq_lock_class = common dso_local global i32 0, align 4
@intc_irqpin_irq_request_class = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i64)* @intc_irqpin_irq_domain_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intc_irqpin_irq_domain_map(%struct.irq_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.intc_irqpin_priv*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %9 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %8, i32 0, i32 0
  %10 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %9, align 8
  store %struct.intc_irqpin_priv* %10, %struct.intc_irqpin_priv** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %7, align 8
  %13 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %11, i32* %17, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %7, align 8
  %20 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i64 %18, i64* %24, align 8
  %25 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %7, align 8
  %26 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = call i32 @intc_irqpin_dbg(%struct.TYPE_2__* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %33 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %32, i32 0, i32 0
  %34 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %33, align 8
  %35 = call i32 @irq_set_chip_data(i32 %31, %struct.intc_irqpin_priv* %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @irq_set_lockdep_class(i32 %36, i32* @intc_irqpin_irq_lock_class, i32* @intc_irqpin_irq_request_class)
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %7, align 8
  %40 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %39, i32 0, i32 0
  %41 = load i32, i32* @handle_level_irq, align 4
  %42 = call i32 @irq_set_chip_and_handler(i32 %38, i32* %40, i32 %41)
  ret i32 0
}

declare dso_local i32 @intc_irqpin_dbg(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.intc_irqpin_priv*) #1

declare dso_local i32 @irq_set_lockdep_class(i32, i32*, i32*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
