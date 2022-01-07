; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-atmel-aic5.c_aic5_retrigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-atmel-aic5.c_aic5_retrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, %struct.irq_domain* }
%struct.irq_domain = type { i32 }
%struct.irq_chip_generic = type { i32 }

@AT91_AIC5_SSR = common dso_local global i32 0, align 4
@AT91_AIC5_ISCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @aic5_retrigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic5_retrigger(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca %struct.irq_chip_generic*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %5, i32 0, i32 1
  %7 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  store %struct.irq_domain* %7, %struct.irq_domain** %3, align 8
  %8 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %9 = call %struct.irq_chip_generic* @irq_get_domain_generic_chip(%struct.irq_domain* %8, i32 0)
  store %struct.irq_chip_generic* %9, %struct.irq_chip_generic** %4, align 8
  %10 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %4, align 8
  %11 = call i32 @irq_gc_lock(%struct.irq_chip_generic* %10)
  %12 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %4, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @AT91_AIC5_SSR, align 4
  %17 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %12, i32 %15, i32 %16)
  %18 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %4, align 8
  %19 = load i32, i32* @AT91_AIC5_ISCR, align 4
  %20 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %18, i32 1, i32 %19)
  %21 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %4, align 8
  %22 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %21)
  ret i32 0
}

declare dso_local %struct.irq_chip_generic* @irq_get_domain_generic_chip(%struct.irq_domain*, i32) #1

declare dso_local i32 @irq_gc_lock(%struct.irq_chip_generic*) #1

declare dso_local i32 @irq_reg_writel(%struct.irq_chip_generic*, i32, i32) #1

declare dso_local i32 @irq_gc_unlock(%struct.irq_chip_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
