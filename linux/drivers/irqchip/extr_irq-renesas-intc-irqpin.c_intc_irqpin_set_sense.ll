; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_set_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-intc-irqpin.c_intc_irqpin_set_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intc_irqpin_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"sense irq = %d, mode = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INTC_IRQPIN_REG_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intc_irqpin_priv*, i32, i32)* @intc_irqpin_set_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intc_irqpin_set_sense(%struct.intc_irqpin_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intc_irqpin_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intc_irqpin_priv* %0, %struct.intc_irqpin_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %5, align 8
  %11 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, 1
  %15 = load i32, i32* %8, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sub nsw i32 32, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %5, align 8
  %19 = getelementptr inbounds %struct.intc_irqpin_priv, %struct.intc_irqpin_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = shl i32 1, %26
  %28 = icmp sge i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %39

32:                                               ; preds = %3
  %33 = load %struct.intc_irqpin_priv*, %struct.intc_irqpin_priv** %5, align 8
  %34 = load i32, i32* @INTC_IRQPIN_REG_SENSE, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @intc_irqpin_read_modify_write(%struct.intc_irqpin_priv* %33, i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @intc_irqpin_read_modify_write(%struct.intc_irqpin_priv*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
