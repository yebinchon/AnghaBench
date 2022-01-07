; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-stm32-exti.c_stm32_exti_h_eoi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-stm32-exti.c_stm32_exti_h_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.stm32_exti_chip_data = type { i32, %struct.stm32_exti_bank* }
%struct.stm32_exti_bank = type { i64, i64 }

@UNDEF_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @stm32_exti_h_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_exti_h_eoi(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.stm32_exti_chip_data*, align 8
  %4 = alloca %struct.stm32_exti_bank*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.stm32_exti_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.stm32_exti_chip_data* %6, %struct.stm32_exti_chip_data** %3, align 8
  %7 = load %struct.stm32_exti_chip_data*, %struct.stm32_exti_chip_data** %3, align 8
  %8 = getelementptr inbounds %struct.stm32_exti_chip_data, %struct.stm32_exti_chip_data* %7, i32 0, i32 1
  %9 = load %struct.stm32_exti_bank*, %struct.stm32_exti_bank** %8, align 8
  store %struct.stm32_exti_bank* %9, %struct.stm32_exti_bank** %4, align 8
  %10 = load %struct.stm32_exti_chip_data*, %struct.stm32_exti_chip_data** %3, align 8
  %11 = getelementptr inbounds %struct.stm32_exti_chip_data, %struct.stm32_exti_chip_data* %10, i32 0, i32 0
  %12 = call i32 @raw_spin_lock(i32* %11)
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = load %struct.stm32_exti_bank*, %struct.stm32_exti_bank** %4, align 8
  %15 = getelementptr inbounds %struct.stm32_exti_bank, %struct.stm32_exti_bank* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @stm32_exti_set_bit(%struct.irq_data* %13, i64 %16)
  %18 = load %struct.stm32_exti_bank*, %struct.stm32_exti_bank** %4, align 8
  %19 = getelementptr inbounds %struct.stm32_exti_bank, %struct.stm32_exti_bank* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UNDEF_REG, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %25 = load %struct.stm32_exti_bank*, %struct.stm32_exti_bank** %4, align 8
  %26 = getelementptr inbounds %struct.stm32_exti_bank, %struct.stm32_exti_bank* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @stm32_exti_set_bit(%struct.irq_data* %24, i64 %27)
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.stm32_exti_chip_data*, %struct.stm32_exti_chip_data** %3, align 8
  %31 = getelementptr inbounds %struct.stm32_exti_chip_data, %struct.stm32_exti_chip_data* %30, i32 0, i32 0
  %32 = call i32 @raw_spin_unlock(i32* %31)
  %33 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %34 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %41 = call i32 @irq_chip_eoi_parent(%struct.irq_data* %40)
  br label %42

42:                                               ; preds = %39, %29
  ret void
}

declare dso_local %struct.stm32_exti_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @stm32_exti_set_bit(%struct.irq_data*, i64) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @irq_chip_eoi_parent(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
