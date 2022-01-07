; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mscc-ocelot.c_ocelot_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mscc-ocelot.c_ocelot_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { i32 }
%struct.irq_chip_type = type { i32* }

@ICPU_CFG_INTR_INTR_STICKY = common dso_local global i32 0, align 4
@ICPU_CFG_INTR_INTR_ENA_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ocelot_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocelot_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_chip_generic*, align 8
  %4 = alloca %struct.irq_chip_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.irq_chip_generic* %8, %struct.irq_chip_generic** %3, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data* %9)
  store %struct.irq_chip_type* %10, %struct.irq_chip_type** %4, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %15 = call i32 @irq_gc_lock(%struct.irq_chip_generic* %14)
  %16 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %17 = call i32 @ICPU_CFG_INTR_INTR_TRIGGER(i32 0)
  %18 = call i32 @irq_reg_readl(%struct.irq_chip_generic* %16, i32 %17)
  %19 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %20 = call i32 @ICPU_CFG_INTR_INTR_TRIGGER(i32 1)
  %21 = call i32 @irq_reg_readl(%struct.irq_chip_generic* %19, i32 %20)
  %22 = or i32 %18, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ICPU_CFG_INTR_INTR_STICKY, align 4
  %31 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load i32, i32* %5, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %36 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @ICPU_CFG_INTR_INTR_ENA_SET, align 4
  %43 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %40, i32 %41, i32 %42)
  %44 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %45 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %44)
  ret void
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data*) #1

declare dso_local i32 @irq_gc_lock(%struct.irq_chip_generic*) #1

declare dso_local i32 @irq_reg_readl(%struct.irq_chip_generic*, i32) #1

declare dso_local i32 @ICPU_CFG_INTR_INTR_TRIGGER(i32) #1

declare dso_local i32 @irq_reg_writel(%struct.irq_chip_generic*, i32, i32) #1

declare dso_local i32 @irq_gc_unlock(%struct.irq_chip_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
