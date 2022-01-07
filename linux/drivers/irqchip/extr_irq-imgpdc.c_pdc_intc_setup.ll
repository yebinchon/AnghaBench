; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imgpdc.c_pdc_intc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imgpdc.c_pdc_intc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_intc_priv = type { i32, i32 }

@PDC_IRQ_ENABLE = common dso_local global i32 0, align 4
@PDC_IRQ_ROUTE_EXT_EN_SYS0 = common dso_local global i32 0, align 4
@PDC_IRQ_ROUTE = common dso_local global i32 0, align 4
@PDC_SYS_WAKE_BASE = common dso_local global i32 0, align 4
@PDC_SYS_WAKE_STRIDE = common dso_local global i32 0, align 4
@PDC_SYS_WAKE_INT_NONE = common dso_local global i32 0, align 4
@PDC_SYS_WAKE_INT_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdc_intc_priv*)* @pdc_intc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_intc_setup(%struct.pdc_intc_priv* %0) #0 {
  %2 = alloca %struct.pdc_intc_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pdc_intc_priv* %0, %struct.pdc_intc_priv** %2, align 8
  %6 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %2, align 8
  %7 = load i32, i32* @PDC_IRQ_ENABLE, align 4
  %8 = call i32 @pdc_write(%struct.pdc_intc_priv* %6, i32 %7, i32 0)
  %9 = load i32, i32* @PDC_IRQ_ROUTE_EXT_EN_SYS0, align 4
  %10 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %2, align 8
  %11 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %9, %12
  %14 = load i32, i32* @PDC_IRQ_ROUTE_EXT_EN_SYS0, align 4
  %15 = sub nsw i32 %13, %14
  %16 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %2, align 8
  %17 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %2, align 8
  %19 = load i32, i32* @PDC_IRQ_ROUTE, align 4
  %20 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %2, align 8
  %21 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pdc_write(%struct.pdc_intc_priv* %18, i32 %19, i32 %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %43, %1
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %2, align 8
  %27 = getelementptr inbounds %struct.pdc_intc_priv, %struct.pdc_intc_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load i32, i32* @PDC_SYS_WAKE_BASE, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @PDC_SYS_WAKE_STRIDE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @PDC_SYS_WAKE_INT_NONE, align 4
  %37 = load i32, i32* @PDC_SYS_WAKE_INT_MODE_SHIFT, align 4
  %38 = shl i32 %36, %37
  store i32 %38, i32* %5, align 4
  %39 = load %struct.pdc_intc_priv*, %struct.pdc_intc_priv** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @pdc_write(%struct.pdc_intc_priv* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %24

46:                                               ; preds = %24
  ret void
}

declare dso_local i32 @pdc_write(%struct.pdc_intc_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
