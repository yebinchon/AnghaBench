; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intc_irqpin_irq = type { i32, i32, %struct.intc_irqpin_priv* }
%struct.intc_irqpin_priv = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"demux1\00", align 1
@INTC_IRQPIN_REG_SOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"demux2\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @intc_irqpin_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intc_irqpin_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.intc_irqpin_irq*, align 8
  %7 = alloca %struct.intc_irqpin_priv*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.intc_irqpin_irq*
  store %struct.intc_irqpin_irq* %10, %struct.intc_irqpin_irq** %6, align 8
  %11 = load %struct.intc_irqpin_irq*, %struct.intc_irqpin_irq** %6, align 8
  %12 = getelementptr inbounds %struct.intc_irqpin_irq, %struct.intc_irqpin_irq* %11, i32 0, i32 2
  %13 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %12, align 8
  store %struct.intc_irqpin_priv* %13, %struct.intc_irqpin_priv** %7, align 8
  %14 = load %struct.intc_irqpin_irq*, %struct.intc_irqpin_irq** %6, align 8
  %15 = call i32 @intc_irqpin_dbg(%struct.intc_irqpin_irq* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %7, align 8
  %17 = load i32, i32* @INTC_IRQPIN_REG_SOURCE, align 4
  %18 = load %struct.intc_irqpin_irq*, %struct.intc_irqpin_irq** %6, align 8
  %19 = getelementptr inbounds %struct.intc_irqpin_irq, %struct.intc_irqpin_irq* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @intc_irqpin_hwirq_mask(%struct.intc_irqpin_priv* %16, i32 %17, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %7, align 8
  %23 = load i32, i32* @INTC_IRQPIN_REG_SOURCE, align 4
  %24 = call i64 @intc_irqpin_read(%struct.intc_irqpin_priv* %22, i32 %23)
  %25 = load i64, i64* %8, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %2
  %29 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %7, align 8
  %30 = load i32, i32* @INTC_IRQPIN_REG_SOURCE, align 4
  %31 = load i64, i64* %8, align 8
  %32 = xor i64 %31, -1
  %33 = call i32 @intc_irqpin_write(%struct.intc_irqpin_priv* %29, i32 %30, i64 %32)
  %34 = load %struct.intc_irqpin_irq*, %struct.intc_irqpin_irq** %6, align 8
  %35 = call i32 @intc_irqpin_dbg(%struct.intc_irqpin_irq* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.intc_irqpin_irq*, %struct.intc_irqpin_irq** %6, align 8
  %37 = getelementptr inbounds %struct.intc_irqpin_irq, %struct.intc_irqpin_irq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @generic_handle_irq(i32 %38)
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %2
  %42 = load i32, i32* @IRQ_NONE, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %28
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @intc_irqpin_dbg(%struct.intc_irqpin_irq*, i8*) #1

declare dso_local i64 @intc_irqpin_hwirq_mask(%struct.intc_irqpin_priv*, i32, i32) #1

declare dso_local i64 @intc_irqpin_read(%struct.intc_irqpin_priv*, i32) #1

declare dso_local i32 @intc_irqpin_write(%struct.intc_irqpin_priv*, i32, i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
