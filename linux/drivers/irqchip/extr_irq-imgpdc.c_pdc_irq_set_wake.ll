; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imgpdc.c_pdc_irq_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imgpdc.c_pdc_irq_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.pdc_intc_priv = type { i32, i32, i32*, i32 }

@PDC_IRQ_ROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @pdc_irq_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_irq_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pdc_intc_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = call %struct.pdc_intc_priv* @irqd_to_priv(%struct.irq_data* %9)
  store %struct.pdc_intc_priv* %10, %struct.pdc_intc_priv** %5, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 65536, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %5, align 8
  %17 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %16, i32 0, i32 3
  %18 = call i32 @raw_spin_lock(i32* %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %5, align 8
  %24 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %34

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %5, align 8
  %31 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %5, align 8
  %36 = load i32, i32* @PDC_IRQ_ROUTE, align 4
  %37 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %5, align 8
  %38 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pdc_write(%struct.pdc_intc_priv* %35, i32 %36, i32 %39)
  %41 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %5, align 8
  %42 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %41, i32 0, i32 3
  %43 = call i32 @raw_spin_unlock(i32* %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @hwirq_is_syswake(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %5, align 8
  %49 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  br label %59

51:                                               ; preds = %34
  %52 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %5, align 8
  %53 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %51, %47
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @irq_set_irq_wake(i32 %60, i32 %61)
  ret i32 0
}

declare dso_local %struct.pdc_intc_priv* @irqd_to_priv(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @pdc_write(%struct.pdc_intc_priv*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i64 @hwirq_is_syswake(i32) #1

declare dso_local i32 @irq_set_irq_wake(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
