; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_shared_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_shared_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intc_irqpin_priv = type { i32, i32* }

@INTC_IRQPIN_REG_SOURCE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @intc_irqpin_shared_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intc_irqpin_shared_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.intc_irqpin_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.intc_irqpin_priv*
  store %struct.intc_irqpin_priv* %10, %struct.intc_irqpin_priv** %5, align 8
  %11 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %5, align 8
  %12 = load i32, i32* @INTC_IRQPIN_REG_SOURCE, align 4
  %13 = call i32 @intc_irqpin_read(%struct.intc_irqpin_priv* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %46, %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 7, %20
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %5, align 8
  %29 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %46

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %5, align 8
  %37 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @intc_irqpin_irq_handler(i32 %35, i32* %41)
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %34, %18
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %15

49:                                               ; preds = %15
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @intc_irqpin_read(%struct.intc_irqpin_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @intc_irqpin_irq_handler(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
