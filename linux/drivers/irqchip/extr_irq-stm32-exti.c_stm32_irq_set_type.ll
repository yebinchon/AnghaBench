; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-stm32-exti.c_stm32_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-stm32-exti.c_stm32_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { %struct.stm32_exti_chip_data* }
%struct.stm32_exti_chip_data = type { %struct.stm32_exti_bank* }
%struct.stm32_exti_bank = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @stm32_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_chip_generic*, align 8
  %6 = alloca %struct.stm32_exti_chip_data*, align 8
  %7 = alloca %struct.stm32_exti_bank*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %12 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %11)
  store %struct.irq_chip_generic* %12, %struct.irq_chip_generic** %5, align 8
  %13 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %14 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %13, i32 0, i32 0
  %15 = load %struct.stm32_exti_chip_data*, %struct.stm32_exti_chip_data** %14, align 8
  store %struct.stm32_exti_chip_data* %15, %struct.stm32_exti_chip_data** %6, align 8
  %16 = load %struct.stm32_exti_chip_data*, %struct.stm32_exti_chip_data** %6, align 8
  %17 = getelementptr inbounds %struct.stm32_exti_chip_data, %struct.stm32_exti_chip_data* %16, i32 0, i32 0
  %18 = load %struct.stm32_exti_bank*, %struct.stm32_exti_bank** %17, align 8
  store %struct.stm32_exti_bank* %18, %struct.stm32_exti_bank** %7, align 8
  %19 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %20 = call i32 @irq_gc_lock(%struct.irq_chip_generic* %19)
  %21 = load %struct.stm32_exti_chip_data*, %struct.stm32_exti_chip_data** %6, align 8
  %22 = call i32 @stm32_exti_hwspin_lock(%struct.stm32_exti_chip_data* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %59

26:                                               ; preds = %2
  %27 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %28 = load %struct.stm32_exti_bank*, %struct.stm32_exti_bank** %7, align 8
  %29 = getelementptr inbounds %struct.stm32_exti_bank, %struct.stm32_exti_bank* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @irq_reg_readl(%struct.irq_chip_generic* %27, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %33 = load %struct.stm32_exti_bank*, %struct.stm32_exti_bank** %7, align 8
  %34 = getelementptr inbounds %struct.stm32_exti_bank, %struct.stm32_exti_bank* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @irq_reg_readl(%struct.irq_chip_generic* %32, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @stm32_exti_set_type(%struct.irq_data* %37, i32 %38, i32* %8, i32* %9)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  br label %56

43:                                               ; preds = %26
  %44 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.stm32_exti_bank*, %struct.stm32_exti_bank** %7, align 8
  %47 = getelementptr inbounds %struct.stm32_exti_bank, %struct.stm32_exti_bank* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %44, i32 %45, i32 %48)
  %50 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.stm32_exti_bank*, %struct.stm32_exti_bank** %7, align 8
  %53 = getelementptr inbounds %struct.stm32_exti_bank, %struct.stm32_exti_bank* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %43, %42
  %57 = load %struct.stm32_exti_chip_data*, %struct.stm32_exti_chip_data** %6, align 8
  %58 = call i32 @stm32_exti_hwspin_unlock(%struct.stm32_exti_chip_data* %57)
  br label %59

59:                                               ; preds = %56, %25
  %60 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %61 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %60)
  %62 = load i32, i32* %10, align 4
  ret i32 %62
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irq_gc_lock(%struct.irq_chip_generic*) #1

declare dso_local i32 @stm32_exti_hwspin_lock(%struct.stm32_exti_chip_data*) #1

declare dso_local i32 @irq_reg_readl(%struct.irq_chip_generic*, i32) #1

declare dso_local i32 @stm32_exti_set_type(%struct.irq_data*, i32, i32*, i32*) #1

declare dso_local i32 @irq_reg_writel(%struct.irq_chip_generic*, i32, i32) #1

declare dso_local i32 @stm32_exti_hwspin_unlock(%struct.stm32_exti_chip_data*) #1

declare dso_local i32 @irq_gc_unlock(%struct.irq_chip_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
