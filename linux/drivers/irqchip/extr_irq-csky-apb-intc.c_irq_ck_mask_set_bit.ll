; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-csky-apb-intc.c_irq_ck_mask_set_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-csky-apb-intc.c_irq_ck_mask_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { i32 }
%struct.irq_chip_type = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @irq_ck_mask_set_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_ck_mask_set_bit(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_chip_generic*, align 8
  %4 = alloca %struct.irq_chip_type*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.irq_chip_generic* %8, %struct.irq_chip_generic** %3, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data* %9)
  store %struct.irq_chip_type* %10, %struct.irq_chip_type** %4, align 8
  %11 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %12 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 8
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %21 = call i32 @irq_gc_lock(%struct.irq_chip_generic* %20)
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %24 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %29 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %30 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %34 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %28, i32 %32, i64 %37)
  %39 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %40 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @irq_reg_readl(%struct.irq_chip_generic* %40, i64 %41)
  %43 = load i32, i32* %6, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %39, i32 %45, i64 %46)
  %48 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %49 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %48)
  ret void
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data*) #1

declare dso_local i32 @irq_gc_lock(%struct.irq_chip_generic*) #1

declare dso_local i32 @irq_reg_writel(%struct.irq_chip_generic*, i32, i64) #1

declare dso_local i32 @irq_reg_readl(%struct.irq_chip_generic*, i64) #1

declare dso_local i32 @irq_gc_unlock(%struct.irq_chip_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
