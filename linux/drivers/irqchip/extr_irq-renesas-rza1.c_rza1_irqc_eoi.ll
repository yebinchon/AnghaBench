; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-rza1.c_rza1_irqc_eoi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-rza1.c_rza1_irqc_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.rza1_irqc_priv = type { i64 }

@IRQRR = common dso_local global i64 0, align 8
@IRQC_NUM_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @rza1_irqc_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rza1_irqc_eoi(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.rza1_irqc_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.rza1_irqc_priv* @irq_data_to_priv(%struct.irq_data* %6)
  store %struct.rza1_irqc_priv* %7, %struct.rza1_irqc_priv** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call i32 @irqd_to_hwirq(%struct.irq_data* %8)
  %10 = call i32 @BIT(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IRQRR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readw_relaxed(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load i64, i64* @IRQC_NUM_IRQ, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call i32 @GENMASK(i64 %23, i32 0)
  %25 = load i32, i32* %4, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %3, align 8
  %29 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IRQRR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writew_relaxed(i32 %27, i64 %32)
  br label %34

34:                                               ; preds = %21, %1
  %35 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %36 = call i32 @irq_chip_eoi_parent(%struct.irq_data* %35)
  ret void
}

declare dso_local %struct.rza1_irqc_priv* @irq_data_to_priv(%struct.irq_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @readw_relaxed(i64) #1

declare dso_local i32 @writew_relaxed(i32, i64) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @irq_chip_eoi_parent(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
