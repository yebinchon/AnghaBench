; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-stm32-exti.c_stm32_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-stm32-exti.c_stm32_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { %struct.stm32_exti_chip_data* }
%struct.stm32_exti_chip_data = type { %struct.stm32_exti_bank* }
%struct.stm32_exti_bank = type { i64, i64 }

@UNDEF_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @stm32_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_irq_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_chip_generic*, align 8
  %4 = alloca %struct.stm32_exti_chip_data*, align 8
  %5 = alloca %struct.stm32_exti_bank*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.irq_chip_generic* %7, %struct.irq_chip_generic** %3, align 8
  %8 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %9 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %8, i32 0, i32 0
  %10 = load %struct.stm32_exti_chip_data*, %struct.stm32_exti_chip_data** %9, align 8
  store %struct.stm32_exti_chip_data* %10, %struct.stm32_exti_chip_data** %4, align 8
  %11 = load %struct.stm32_exti_chip_data*, %struct.stm32_exti_chip_data** %4, align 8
  %12 = getelementptr inbounds %struct.stm32_exti_chip_data, %struct.stm32_exti_chip_data* %11, i32 0, i32 0
  %13 = load %struct.stm32_exti_bank*, %struct.stm32_exti_bank** %12, align 8
  store %struct.stm32_exti_bank* %13, %struct.stm32_exti_bank** %5, align 8
  %14 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %15 = call i32 @irq_gc_lock(%struct.irq_chip_generic* %14)
  %16 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %17 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.stm32_exti_bank*, %struct.stm32_exti_bank** %5, align 8
  %21 = getelementptr inbounds %struct.stm32_exti_bank, %struct.stm32_exti_bank* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %16, i32 %19, i64 %22)
  %24 = load %struct.stm32_exti_bank*, %struct.stm32_exti_bank** %5, align 8
  %25 = getelementptr inbounds %struct.stm32_exti_bank, %struct.stm32_exti_bank* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UNDEF_REG, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %31 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %32 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.stm32_exti_bank*, %struct.stm32_exti_bank** %5, align 8
  %35 = getelementptr inbounds %struct.stm32_exti_bank, %struct.stm32_exti_bank* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %30, i32 %33, i64 %36)
  br label %38

38:                                               ; preds = %29, %1
  %39 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %40 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %39)
  ret void
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irq_gc_lock(%struct.irq_chip_generic*) #1

declare dso_local i32 @irq_reg_writel(%struct.irq_chip_generic*, i32, i64) #1

declare dso_local i32 @irq_gc_unlock(%struct.irq_chip_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
