; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-atmel-aic5.c_aic5_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-atmel-aic5.c_aic5_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, i32, %struct.irq_domain* }
%struct.irq_domain = type { i32 }
%struct.irq_chip_generic = type { i32 }

@AT91_AIC5_SSR = common dso_local global i32 0, align 4
@AT91_AIC5_IDCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @aic5_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic5_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca %struct.irq_chip_generic*, align 8
  %5 = alloca %struct.irq_chip_generic*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 2
  %8 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  store %struct.irq_domain* %8, %struct.irq_domain** %3, align 8
  %9 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %10 = call %struct.irq_chip_generic* @irq_get_domain_generic_chip(%struct.irq_domain* %9, i32 0)
  store %struct.irq_chip_generic* %10, %struct.irq_chip_generic** %4, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %11)
  store %struct.irq_chip_generic* %12, %struct.irq_chip_generic** %5, align 8
  %13 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %4, align 8
  %14 = call i32 @irq_gc_lock(%struct.irq_chip_generic* %13)
  %15 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %17 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AT91_AIC5_SSR, align 4
  %20 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %15, i32 %18, i32 %19)
  %21 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %22 = load i32, i32* @AT91_AIC5_IDCR, align 4
  %23 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %21, i32 1, i32 %22)
  %24 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %25 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %29 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %4, align 8
  %33 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %32)
  ret void
}

declare dso_local %struct.irq_chip_generic* @irq_get_domain_generic_chip(%struct.irq_domain*, i32) #1

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irq_gc_lock(%struct.irq_chip_generic*) #1

declare dso_local i32 @irq_reg_writel(%struct.irq_chip_generic*, i32, i32) #1

declare dso_local i32 @irq_gc_unlock(%struct.irq_chip_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
