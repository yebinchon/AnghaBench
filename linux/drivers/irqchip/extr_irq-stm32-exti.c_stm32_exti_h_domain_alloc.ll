; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-stm32-exti.c_stm32_exti_h_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-stm32-exti.c_stm32_exti_h_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_2__*, %struct.stm32_exti_host_data* }
%struct.TYPE_2__ = type { i32 }
%struct.stm32_exti_host_data = type { i32, %struct.stm32_exti_chip_data* }
%struct.stm32_exti_chip_data = type { i32 }
%struct.irq_fwspec = type { i32*, i32, i32 }

@IRQS_PER_BANK = common dso_local global i32 0, align 4
@stm32_exti_h_chip = common dso_local global i32 0, align 4
@GIC_SPI = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @stm32_exti_h_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_exti_h_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stm32_exti_host_data*, align 8
  %11 = alloca %struct.stm32_exti_chip_data*, align 8
  %12 = alloca %struct.irq_fwspec*, align 8
  %13 = alloca %struct.irq_fwspec, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %18 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %17, i32 0, i32 1
  %19 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %18, align 8
  store %struct.stm32_exti_host_data* %19, %struct.stm32_exti_host_data** %10, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %21, %struct.irq_fwspec** %12, align 8
  %22 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %23 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @IRQS_PER_BANK, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %16, align 4
  %30 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %10, align 8
  %31 = getelementptr inbounds %struct.stm32_exti_host_data, %struct.stm32_exti_host_data* %30, i32 0, i32 1
  %32 = load %struct.stm32_exti_chip_data*, %struct.stm32_exti_chip_data** %31, align 8
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.stm32_exti_chip_data, %struct.stm32_exti_chip_data* %32, i64 %34
  store %struct.stm32_exti_chip_data* %35, %struct.stm32_exti_chip_data** %11, align 8
  %36 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.stm32_exti_chip_data*, %struct.stm32_exti_chip_data** %11, align 8
  %40 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %36, i32 %37, i32 %38, i32* @stm32_exti_h_chip, %struct.stm32_exti_chip_data* %39)
  %41 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %10, align 8
  %42 = getelementptr inbounds %struct.stm32_exti_host_data, %struct.stm32_exti_host_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @stm32_exti_to_irq(i32 %43, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %4
  %49 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %50 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 2
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 1
  store i32 3, i32* %55, align 8
  %56 = load i32, i32* @GIC_SPI, align 4
  %57 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %15, align 4
  %61 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %65 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32 %64, i32* %67, align 4
  %68 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %68, i32 %69, i32 1, %struct.irq_fwspec* %13)
  store i32 %70, i32* %5, align 4
  br label %72

71:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %48
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i32, i32*, %struct.stm32_exti_chip_data*) #1

declare dso_local i32 @stm32_exti_to_irq(i32, i32) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
