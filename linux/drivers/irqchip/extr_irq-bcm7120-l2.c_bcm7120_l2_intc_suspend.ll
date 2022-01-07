; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm7120-l2.c_bcm7120_l2_intc_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm7120-l2.c_bcm7120_l2_intc_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip_generic = type { i32, i32, %struct.irq_chip_type*, %struct.bcm7120_l2_intc_data* }
%struct.irq_chip_type = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bcm7120_l2_intc_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_chip_generic*)* @bcm7120_l2_intc_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm7120_l2_intc_suspend(%struct.irq_chip_generic* %0) #0 {
  %2 = alloca %struct.irq_chip_generic*, align 8
  %3 = alloca %struct.bcm7120_l2_intc_data*, align 8
  %4 = alloca %struct.irq_chip_type*, align 8
  store %struct.irq_chip_generic* %0, %struct.irq_chip_generic** %2, align 8
  %5 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %2, align 8
  %6 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %5, i32 0, i32 3
  %7 = load %struct.bcm7120_l2_intc_data*, %struct.bcm7120_l2_intc_data** %6, align 8
  store %struct.bcm7120_l2_intc_data* %7, %struct.bcm7120_l2_intc_data** %3, align 8
  %8 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %2, align 8
  %9 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %8, i32 0, i32 2
  %10 = load %struct.irq_chip_type*, %struct.irq_chip_type** %9, align 8
  store %struct.irq_chip_type* %10, %struct.irq_chip_type** %4, align 8
  %11 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %2, align 8
  %12 = call i32 @irq_gc_lock(%struct.irq_chip_generic* %11)
  %13 = load %struct.bcm7120_l2_intc_data*, %struct.bcm7120_l2_intc_data** %3, align 8
  %14 = getelementptr inbounds %struct.bcm7120_l2_intc_data, %struct.bcm7120_l2_intc_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %2, align 8
  %19 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %2, align 8
  %20 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %2, align 8
  %23 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %27 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %18, i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %17, %1
  %32 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %2, align 8
  %33 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %32)
  ret void
}

declare dso_local i32 @irq_gc_lock(%struct.irq_chip_generic*) #1

declare dso_local i32 @irq_reg_writel(%struct.irq_chip_generic*, i32, i32) #1

declare dso_local i32 @irq_gc_unlock(%struct.irq_chip_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
