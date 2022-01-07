; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-brcmstb-l2.c_brcmstb_l2_intc_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-brcmstb-l2.c_brcmstb_l2_intc_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { i32, %struct.brcmstb_l2_intc_data* }
%struct.brcmstb_l2_intc_data = type { i64, i32 }
%struct.irq_chip_type = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @brcmstb_l2_intc_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmstb_l2_intc_suspend(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_chip_generic*, align 8
  %4 = alloca %struct.irq_chip_type*, align 8
  %5 = alloca %struct.brcmstb_l2_intc_data*, align 8
  %6 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.irq_chip_generic* %8, %struct.irq_chip_generic** %3, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data* %9)
  store %struct.irq_chip_type* %10, %struct.irq_chip_type** %4, align 8
  %11 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %12 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %11, i32 0, i32 1
  %13 = load %struct.brcmstb_l2_intc_data*, %struct.brcmstb_l2_intc_data** %12, align 8
  store %struct.brcmstb_l2_intc_data* %13, %struct.brcmstb_l2_intc_data** %5, align 8
  %14 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @irq_gc_lock_irqsave(%struct.irq_chip_generic* %14, i64 %15)
  %17 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %18 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %19 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @irq_reg_readl(%struct.irq_chip_generic* %17, i32 %21)
  %23 = load %struct.brcmstb_l2_intc_data*, %struct.brcmstb_l2_intc_data** %5, align 8
  %24 = getelementptr inbounds %struct.brcmstb_l2_intc_data, %struct.brcmstb_l2_intc_data* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.brcmstb_l2_intc_data*, %struct.brcmstb_l2_intc_data** %5, align 8
  %26 = getelementptr inbounds %struct.brcmstb_l2_intc_data, %struct.brcmstb_l2_intc_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %1
  %30 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %31 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %32 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = xor i32 %33, -1
  %35 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %36 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %30, i32 %34, i32 %38)
  %40 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %41 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %42 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %45 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %40, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %29, %1
  %50 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @irq_gc_unlock_irqrestore(%struct.irq_chip_generic* %50, i64 %51)
  ret void
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data*) #1

declare dso_local i32 @irq_gc_lock_irqsave(%struct.irq_chip_generic*, i64) #1

declare dso_local i32 @irq_reg_readl(%struct.irq_chip_generic*, i32) #1

declare dso_local i32 @irq_reg_writel(%struct.irq_chip_generic*, i32, i32) #1

declare dso_local i32 @irq_gc_unlock_irqrestore(%struct.irq_chip_generic*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
