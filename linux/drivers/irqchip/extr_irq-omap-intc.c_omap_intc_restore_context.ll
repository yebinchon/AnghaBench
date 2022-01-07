; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-omap-intc.c_omap_intc_restore_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-omap-intc.c_omap_intc_restore_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32, i32, i32, i32 }

@INTC_SYSCONFIG = common dso_local global i64 0, align 8
@intc_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@INTC_PROTECTION = common dso_local global i64 0, align 8
@INTC_IDLE = common dso_local global i64 0, align 8
@INTC_THRESHOLD = common dso_local global i64 0, align 8
@omap_nr_irqs = common dso_local global i32 0, align 4
@INTC_ILR0 = common dso_local global i64 0, align 8
@INTCPS_NR_MIR_REGS = common dso_local global i32 0, align 4
@INTC_MIR0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_intc_restore_context() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @INTC_SYSCONFIG, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intc_context, i32 0, i32 5), align 4
  %4 = call i32 @intc_writel(i64 %2, i32 %3)
  %5 = load i64, i64* @INTC_PROTECTION, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intc_context, i32 0, i32 4), align 8
  %7 = call i32 @intc_writel(i64 %5, i32 %6)
  %8 = load i64, i64* @INTC_IDLE, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intc_context, i32 0, i32 3), align 4
  %10 = call i32 @intc_writel(i64 %8, i32 %9)
  %11 = load i64, i64* @INTC_THRESHOLD, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intc_context, i32 0, i32 2), align 8
  %13 = call i32 @intc_writel(i64 %11, i32 %12)
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %30, %0
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @omap_nr_irqs, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i64, i64* @INTC_ILR0, align 8
  %20 = load i32, i32* %1, align 4
  %21 = mul nsw i32 4, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intc_context, i32 0, i32 1), align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @intc_writel(i64 %23, i32 %28)
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %14

33:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @INTCPS_NR_MIR_REGS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i64, i64* @INTC_MIR0, align 8
  %40 = load i32, i32* %1, align 4
  %41 = mul nsw i32 32, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intc_context, i32 0, i32 0), align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @intc_writel(i64 %43, i32 %48)
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %34

53:                                               ; preds = %34
  ret void
}

declare dso_local i32 @intc_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
