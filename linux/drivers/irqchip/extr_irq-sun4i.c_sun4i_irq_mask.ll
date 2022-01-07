; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-sun4i.c_sun4i_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-sun4i.c_sun4i_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.irq_data = type { i32 }

@irq_ic_data = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @sun4i_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_irq_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call i32 @irqd_to_hwirq(%struct.irq_data* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = urem i32 %9, 32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = udiv i32 %11, 32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @irq_ic_data, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @irq_ic_data, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @SUN4I_IRQ_ENABLE_REG(%struct.TYPE_3__* %16, i32 %17)
  %19 = add nsw i64 %15, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @irq_ic_data, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @irq_ic_data, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @SUN4I_IRQ_ENABLE_REG(%struct.TYPE_3__* %29, i32 %30)
  %32 = add nsw i64 %28, %31
  %33 = call i32 @writel(i32 %25, i64 %32)
  ret void
}

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @SUN4I_IRQ_ENABLE_REG(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
