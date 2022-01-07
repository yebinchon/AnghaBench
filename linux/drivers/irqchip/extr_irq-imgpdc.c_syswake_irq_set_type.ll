; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imgpdc.c_syswake_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imgpdc.c_syswake_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.pdc_intc_priv = type { i32 }

@PDC_SYS_WAKE_INT_CHANGE = common dso_local global i32 0, align 4
@PDC_SYS_WAKE_INT_UP = common dso_local global i32 0, align 4
@PDC_SYS_WAKE_INT_DOWN = common dso_local global i32 0, align 4
@PDC_SYS_WAKE_INT_HIGH = common dso_local global i32 0, align 4
@PDC_SYS_WAKE_INT_LOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PDC_SYS_WAKE_BASE = common dso_local global i32 0, align 4
@PDC_SYS_WAKE_STRIDE = common dso_local global i32 0, align 4
@PDC_SYS_WAKE_INT_MODE = common dso_local global i32 0, align 4
@PDC_SYS_WAKE_INT_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @syswake_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syswake_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pdc_intc_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %12 = call %struct.pdc_intc_priv* @irqd_to_priv(%struct.irq_data* %11)
  store %struct.pdc_intc_priv* %12, %struct.pdc_intc_priv** %6, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @hwirq_to_syswake(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %28 [
    i32 132, label %18
    i32 130, label %20
    i32 131, label %22
    i32 129, label %24
    i32 128, label %26
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @PDC_SYS_WAKE_INT_CHANGE, align 4
  store i32 %19, i32* %8, align 4
  br label %31

20:                                               ; preds = %2
  %21 = load i32, i32* @PDC_SYS_WAKE_INT_UP, align 4
  store i32 %21, i32* %8, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load i32, i32* @PDC_SYS_WAKE_INT_DOWN, align 4
  store i32 %23, i32* %8, align 4
  br label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @PDC_SYS_WAKE_INT_HIGH, align 4
  store i32 %25, i32* %8, align 4
  br label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @PDC_SYS_WAKE_INT_LOW, align 4
  store i32 %27, i32* %8, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %62

31:                                               ; preds = %26, %24, %22, %20, %18
  %32 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %6, align 8
  %33 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %32, i32 0, i32 0
  %34 = call i32 @raw_spin_lock(i32* %33)
  %35 = load i32, i32* @PDC_SYS_WAKE_BASE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @PDC_SYS_WAKE_STRIDE, align 4
  %38 = mul i32 %36, %37
  %39 = add i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @pdc_read(%struct.pdc_intc_priv* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @PDC_SYS_WAKE_INT_MODE, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @PDC_SYS_WAKE_INT_MODE_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @pdc_write(%struct.pdc_intc_priv* %52, i32 %53, i32 %54)
  %56 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @irq_setup_alt_chip(%struct.irq_data* %56, i32 %57)
  %59 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %6, align 8
  %60 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %59, i32 0, i32 0
  %61 = call i32 @raw_spin_unlock(i32* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %31, %28
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.pdc_intc_priv* @irqd_to_priv(%struct.irq_data*) #1

declare dso_local i32 @hwirq_to_syswake(i32) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @pdc_read(%struct.pdc_intc_priv*, i32) #1

declare dso_local i32 @pdc_write(%struct.pdc_intc_priv*, i32, i32) #1

declare dso_local i32 @irq_setup_alt_chip(%struct.irq_data*, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
