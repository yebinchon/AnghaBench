; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imgpdc.c_pdc_intc_syswake_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imgpdc.c_pdc_intc_syswake_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.pdc_intc_priv = type { i32, i32 }

@PDC_IRQ_STATUS = common dso_local global i32 0, align 4
@PDC_IRQ_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @pdc_intc_syswake_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_intc_syswake_isr(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.pdc_intc_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = call i64 @irq_desc_get_handler_data(%struct.irq_desc* %7)
  %9 = inttoptr i64 %8 to %struct.pdc_intc_priv*
  store %struct.pdc_intc_priv* %9, %struct.pdc_intc_priv** %3, align 8
  %10 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %3, align 8
  %11 = load i32, i32* @PDC_IRQ_STATUS, align 4
  %12 = call i32 @pdc_read(%struct.pdc_intc_priv* %10, i32 %11)
  %13 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %3, align 8
  %14 = load i32, i32* @PDC_IRQ_ENABLE, align 4
  %15 = call i32 @pdc_read(%struct.pdc_intc_priv* %13, i32 %14)
  %16 = and i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %3, align 8
  %18 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %41, %1
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %41

32:                                               ; preds = %27
  %33 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %3, align 8
  %34 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @syswake_to_hwirq(i32 %36)
  %38 = call i32 @irq_linear_revmap(i32 %35, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @generic_handle_irq(i32 %39)
  br label %41

41:                                               ; preds = %32, %31
  %42 = load i32, i32* %6, align 4
  %43 = lshr i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %24

46:                                               ; preds = %24
  ret void
}

declare dso_local i64 @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @pdc_read(%struct.pdc_intc_priv*, i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @syswake_to_hwirq(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
