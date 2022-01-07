; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-lpc32xx.c_lpc32xx_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-lpc32xx.c_lpc32xx_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.lpc32xx_irq_chip = type { i32 }

@LPC32XX_INTC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @lpc32xx_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc32xx_irq_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.lpc32xx_irq_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.lpc32xx_irq_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.lpc32xx_irq_chip* %7, %struct.lpc32xx_irq_chip** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @BIT(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.lpc32xx_irq_chip*, %struct.lpc32xx_irq_chip** %3, align 8
  %13 = load i32, i32* @LPC32XX_INTC_MASK, align 4
  %14 = call i32 @lpc32xx_ic_read(%struct.lpc32xx_irq_chip* %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.lpc32xx_irq_chip*, %struct.lpc32xx_irq_chip** %3, align 8
  %19 = load i32, i32* @LPC32XX_INTC_MASK, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @lpc32xx_ic_write(%struct.lpc32xx_irq_chip* %18, i32 %19, i32 %20)
  ret void
}

declare dso_local %struct.lpc32xx_irq_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @lpc32xx_ic_read(%struct.lpc32xx_irq_chip*, i32) #1

declare dso_local i32 @lpc32xx_ic_write(%struct.lpc32xx_irq_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
