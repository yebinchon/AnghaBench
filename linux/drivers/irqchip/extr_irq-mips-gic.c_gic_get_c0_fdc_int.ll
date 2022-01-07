; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mips-gic.c_gic_get_c0_fdc_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mips-gic.c_gic_get_c0_fdc_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIC_LOCAL_INT_FDC = common dso_local global i32 0, align 4
@cp0_fdc_irq = common dso_local global i64 0, align 8
@MIPS_CPU_IRQ_BASE = common dso_local global i32 0, align 4
@gic_irq_domain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gic_get_c0_fdc_int() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @GIC_LOCAL_INT_FDC, align 4
  %3 = call i32 @gic_local_irq_is_routable(i32 %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* @cp0_fdc_irq, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 -1, i32* %1, align 4
  br label %20

9:                                                ; preds = %5
  %10 = load i32, i32* @MIPS_CPU_IRQ_BASE, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @cp0_fdc_irq, align 8
  %13 = add nsw i64 %11, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %1, align 4
  br label %20

15:                                               ; preds = %0
  %16 = load i32, i32* @gic_irq_domain, align 4
  %17 = load i32, i32* @GIC_LOCAL_INT_FDC, align 4
  %18 = call i32 @GIC_LOCAL_TO_HWIRQ(i32 %17)
  %19 = call i32 @irq_create_mapping(i32 %16, i32 %18)
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %15, %9, %8
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @gic_local_irq_is_routable(i32) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @GIC_LOCAL_TO_HWIRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
