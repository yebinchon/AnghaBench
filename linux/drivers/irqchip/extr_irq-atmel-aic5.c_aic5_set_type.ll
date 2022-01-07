; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-atmel-aic5.c_aic5_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-atmel-aic5.c_aic5_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, %struct.irq_domain* }
%struct.irq_domain = type { i32 }
%struct.irq_chip_generic = type { i32 }

@AT91_AIC5_SSR = common dso_local global i32 0, align 4
@AT91_AIC5_SMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @aic5_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic5_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca %struct.irq_chip_generic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 1
  %11 = load %struct.irq_domain*, %struct.irq_domain** %10, align 8
  store %struct.irq_domain* %11, %struct.irq_domain** %5, align 8
  %12 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %13 = call %struct.irq_chip_generic* @irq_get_domain_generic_chip(%struct.irq_domain* %12, i32 0)
  store %struct.irq_chip_generic* %13, %struct.irq_chip_generic** %6, align 8
  %14 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %15 = call i32 @irq_gc_lock(%struct.irq_chip_generic* %14)
  %16 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %17 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AT91_AIC5_SSR, align 4
  %21 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %16, i32 %19, i32 %20)
  %22 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %23 = load i32, i32* @AT91_AIC5_SMR, align 4
  %24 = call i32 @irq_reg_readl(%struct.irq_chip_generic* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @aic_common_set_type(%struct.irq_data* %25, i32 %26, i32* %7)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %2
  %31 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @AT91_AIC5_SMR, align 4
  %34 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %37 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %36)
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local %struct.irq_chip_generic* @irq_get_domain_generic_chip(%struct.irq_domain*, i32) #1

declare dso_local i32 @irq_gc_lock(%struct.irq_chip_generic*) #1

declare dso_local i32 @irq_reg_writel(%struct.irq_chip_generic*, i32, i32) #1

declare dso_local i32 @irq_reg_readl(%struct.irq_chip_generic*, i32) #1

declare dso_local i32 @aic_common_set_type(%struct.irq_data*, i32, i32*) #1

declare dso_local i32 @irq_gc_unlock(%struct.irq_chip_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
