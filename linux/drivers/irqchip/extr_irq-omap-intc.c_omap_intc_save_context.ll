; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-omap-intc.c_omap_intc_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-omap-intc.c_omap_intc_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i8**, i8*, i8*, i8*, i8* }

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
define dso_local void @omap_intc_save_context() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @INTC_SYSCONFIG, align 8
  %3 = call i8* @intc_readl(i64 %2)
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intc_context, i32 0, i32 5), align 8
  %4 = load i64, i64* @INTC_PROTECTION, align 8
  %5 = call i8* @intc_readl(i64 %4)
  store i8* %5, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intc_context, i32 0, i32 4), align 8
  %6 = load i64, i64* @INTC_IDLE, align 8
  %7 = call i8* @intc_readl(i64 %6)
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intc_context, i32 0, i32 3), align 8
  %8 = load i64, i64* @INTC_THRESHOLD, align 8
  %9 = call i8* @intc_readl(i64 %8)
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intc_context, i32 0, i32 2), align 8
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %25, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @omap_nr_irqs, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i64, i64* @INTC_ILR0, align 8
  %16 = load i32, i32* %1, align 4
  %17 = mul nsw i32 4, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = call i8* @intc_readl(i64 %19)
  %21 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intc_context, i32 0, i32 1), align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  store i8* %20, i8** %24, align 8
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %10

28:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @INTCPS_NR_MIR_REGS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i64, i64* @INTC_MIR0, align 8
  %35 = load i32, i32* %1, align 4
  %36 = mul nsw i32 32, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i8* @intc_readl(i64 %38)
  %40 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intc_context, i32 0, i32 0), align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  store i8* %39, i8** %43, align 8
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %29

47:                                               ; preds = %29
  ret void
}

declare dso_local i8* @intc_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
